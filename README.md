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
```

### File Structure 
```
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
```

### How To Build The Image & Run The Image 
```
docker build -t yourusername/todo-app .
docker run -d -p 3000:3000 --name my-todo yourusername/todo-app
```
### How To Push The Image To dockerHUB 
```
docker login
docker tag todo-app yourusername/todo-app
docker push yourusername/todo-app
```

# 🐳 ToDoApp CI/CD with Docker and GitHub Actions

This project implements a GitHub Actions pipeline that automates the Docker image build, test, and push process for a ToDo application.

---

## 🔧 CI/CD Pipeline Overview

The GitHub Actions workflow performs the following steps:

1. **Build Docker Image**  
   - Builds the Docker image from the provided `Dockerfile`.
   - Runs automatically on every `push` or `pull_request` to the `main` branch.

2. **Test the Docker Image Before Pushing**  
   - Runs the built image in a container.
   - Checks that the container is running by inspecting it and verifying the IP address.

3. **Push to Docker Hub (Only if Tests Pass)**  
   - If the image passes the test, it is pushed to Docker Hub using credentials stored in GitHub Secrets.

4. **Upload Dockerfile as Artifact**  
   - The `Dockerfile` is uploaded as a workflow artifact named `my-DockerFile`.

---

## 🚀 Technologies Used

- **GitHub Actions** for CI/CD
- **Docker** for containerization
- **Docker Hub** for image storage

---

## 📁 Workflow Artifacts

- `Dockerfile` is saved as a downloadable artifact in each successful workflow run.

---

## 📝 Usage

To use this workflow in your own repository:
- Replace Docker Hub credentials in `Secrets`:
  - `DOCKERHUB_USERNAME`
  - `DOCKERHUB_TOKEN`
- Ensure your `Dockerfile` is in the root directory.
- Customize the app


