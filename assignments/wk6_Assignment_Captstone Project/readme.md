# 🧪 Week 6 Capstone Assessment: Fullstack Deployment Pipeline

## 📘 Objective

The goal of this capstone assignment is to evaluate your ability to set up a complete deployment pipeline for a fullstack application. You will integrate key DevOps tools and services such as:

- GitHub
- Docker / GitHub Container Registry
- MongoDB Atlas
- Render
- GitHub Actions

You’ll demonstrate your skills in automation, cloud deployment, containerization, and CI/CD.

---

## 📝 Instructions

### Part 1: Project Initialization

1. **Download Project**
   - Obtain the folder named `wk6_assignment_capstone`.

2. **Create GitHub Repository**
   - Create a new public repo named.
   - Push the contents of the downloaded folder to the repo.

---

### Part 2: Backend Integration

1. **MongoDB Atlas Setup**
   - Create a free-tier MongoDB Atlas cluster.
   - Create the necessary database and collections.
   - Configure your IP whitelist and generate a connection string.

2. **Update Backend Configuration**
   - Modify your application to connect to MongoDB Atlas.
   - Use environment variables instead of hardcoding credentials.

---

### Part 3: Dockerization

1. **Create a Dockerfile**
   - Write a `Dockerfile` to containerize your app.
   - Ensure proper ports are exposed (e.g., `3000` or `5000`).
   - Add a `.dockerignore` file.

2. **Push Docker Image**
   - Push your image to one of the following:
     - Docker Hub
     - GitHub Container Registry (`ghcr.io`)
   - Tag your image clearly (e.g., `your-username/SCALagos-capstone:latest`).

---

### Part 4: Deployment

1. **Deploy to Render**
   - Create a free [Render](https://render.com/) account.
   - Deploy your app either:
     - Directly from GitHub repo (auto-deploy)
     - From the Docker image you pushed
   - Configure necessary environment variables (e.g., `PORT`, `MONGO_URI`).

2. **Get Your Live URL**
   - Ensure the deployed app is publicly accessible and fully functional.

---

### Part 5: CI/CD Integration

1. **GitHub Actions Workflow**
   - Set up a GitHub Actions pipeline to:
     - Build your app
     - Push Docker image to the registry
     - (Optional) Trigger Render deployment using webhook/API

2. **Secrets**
   - Store all credentials in **GitHub Secrets**:
     - Docker Hub credentials (if applicable)
     - MongoDB connection string
     - Render API/webhook (optional)

---

## Submission Checklist

- [ ] GitHub repository is created and public  
- [ ] MongoDB Atlas is configured and connected  
- [ ] Dockerfile is created and builds successfully  
- [ ] Docker image is pushed to Docker Hub or GitHub Registry  
- [ ] App is deployed on Render  
- [ ] CI/CD is implemented with GitHub Actions  
- [ ] `README.md` includes:
  - [ ] Project Overview  
  - [ ] Setup Instructions  
  - [ ] Environment Variables  
  - [ ] Render Live URL  

---

## Deliverables

| Item | Description |
|------|-------------|
| GitHub Repo | Public link to your GitHub project |
| Render Live URL | Link to your deployed application |
| Docker Image | Link to your image on Docker Hub or GHCR |
| MongoDB Proof | Screenshot or sanitized code snippet showing DB connection |


