# ─── Stage 1: Builder ─────────────────────────
FROM python:3.11-alpine AS builder

WORKDIR /app

# Install minimal build dependencies
RUN apk add --no-cache gcc musl-dev libffi-dev postgresql-dev python3-dev

# Copy requirements and install
COPY requirements.txt .
RUN pip install --prefix=/install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# ─── Stage 2: Runner ─────────────────────────
FROM python:3.11-alpine AS runner

WORKDIR /app

# Copy installed packages
COPY --from=builder /install /usr/local

# Copy app code
COPY --from=builder /app /app

# Install curl for healthcheck
RUN apk add --no-cache curl

# Expose port
EXPOSE 8000

# Run app with Gunicorn
CMD ["gunicorn", "-b", "0.0.0.0:8000", "flask_app:app"]