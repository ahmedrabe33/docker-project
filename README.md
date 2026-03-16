# Task Manager - Full Stack Docker App

**Task Manager** is a full-stack web application for managing tasks, built with **Docker**. The project includes **Frontend + Backend + Database**, with **Nginx** as a reverse proxy.

---
![Project Architecture](/images/arch.png)

## 🚀 Running the Project

Build and run the project:

```bash
docker-compose up --build

Open your browser at http://localhost

🧩 Project Components

Frontend: React + Tailwind CSS

Backend: Node.js + Express

Database: MongoDB

Reverse Proxy: Nginx

Containerization: Docker & Docker Compose

⚙️ Useful Commands
docker-compose up                  # Start the project
docker-compose down                # Stop the project
docker-compose logs -f             # Follow logs
docker-compose exec backend bash   # Enter backend container
docker-compose exec frontend bash  # Enter frontend container
💾 Data Management

MongoDB uses a Docker volume to store tasks permanently.

All containers are connected via an internal Docker Network.


---


