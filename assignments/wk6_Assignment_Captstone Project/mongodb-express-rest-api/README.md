# 🚀 MongoDB and Express.js REST API Sample Application

This repository contains the sample application for the [MongoDB and Express.js REST API tutorial](https://www.mongodb.com/languages/express-mongodb-rest-api-tutorial).

---

## 🏁 How To Run (Locally without Docker)

1. You can follow the [Getting Started with Atlas](https://docs.atlas.mongodb.com/getting-started/) guide to create a free Atlas account, cluster, and get your connection string.
2. Set the Atlas URI in `server/.env`:
    ```
    ATLAS_URI=mongodb+srv://<username>:<password>@sandbox.mongodb.net/myFirstDatabase?retryWrites=true&w=majority
    ```

3. Start the Express server:
    ```bash
    cd server
    npm install
    npm run dev
    ```

4. Start the React app (in a new terminal window):
    ```bash
    cd app
    npm install
    npm start
    ```

---

## ⚠️ Disclaimer

Use at your own risk; not a supported MongoDB product.

---

# 📘 Beginner-Friendly Deployment Guide with Docker & Render

This section walks complete beginners through:

- ✅ Forking and cloning this project
- 🐳 Dockerizing the frontend and backend
- 🤖 Setting up GitHub Actions
- ☁️ Deploying to [Render](https://render.com)
