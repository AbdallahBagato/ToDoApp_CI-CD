# 🐳 To-Do App with Docker

This guide shows how to install Docker and build a To-Do app using a Dockerfile.

---

## 📦 Prerequisites

- OS: Linux, macOS, or Windows
- Admin privileges

---

## 🔧 Step 1: Install Docker

### 📥 For Linux (Debian/Ubuntu)

```bash
sudo apt update
sudo apt install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER
newgrp docker
docker --version

### File Structure 
todo-app/
├── Dockerfile
├── .dockerignore
├── README.md
├── package.json
├── yarn.lock
├── spec/
│   └── (test files, if any)
├── src/
│   └── index.js (or your main file)

