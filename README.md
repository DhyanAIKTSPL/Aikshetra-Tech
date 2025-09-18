# Aikshetra-Tech
# 🚀 Team Git & GitHub Workflow Guide

Welcome to our project! This guide explains how our 8-member team will collaborate using GitHub.

---

## 🔹 1. Setup
1. Install Git → [Download Git](https://git-scm.com/downloads)
2. Configure your Git identity:
   ```bash
   git config --global user.name "Your Name"
   git config --global user.email "your@email.com"
   ```
3. Clone the repository:
   ```bash
   git clone https://github.com/org-or-username/team-project.git
   cd team-project
   ```

---

## 🔹 2. Branching Strategy
- `main` → stable production code
- `develop` → integration branch (test features before release)
- `feature/xyz` → individual work branches

Commands:
```bash
# Create and switch to feature branch
git checkout -b feature-login

# Push branch to GitHub
git push origin feature-login
```

---

## 🔹 3. Workflow
1. Pull the latest code before starting work:
   ```bash
   git checkout develop
   git pull origin develop
   ```

2. Work on your **feature branch**:
   ```bash
   git checkout -b feature-branch
   # edit files
   git add .
   git commit -m "feat: add login page"
   git push origin feature-branch
   ```

3. Open a **Pull Request (PR)** on GitHub.
4. Request a review from a teammate.
5. Once approved → merge into `develop`.

---

## 🔹 4. Syncing Branches
Always keep your branch updated:
```bash
git checkout develop
git pull origin develop
git checkout feature-branch
git merge develop
```

---

## 🔹 5. Collaboration Tools
- **Issues** → create tasks/bugs
- **Projects (Kanban board)** → manage tasks
- **Discussions** → team brainstorming
- **Wiki** → documentation

---

## 🔹 6. Development Environment
### Python Example
```bash
python -m venv venv
source venv/bin/activate   # Mac/Linux
venv\Scripts\activate      # Windows
pip install -r requirements.txt
```

### Node.js Example
```bash
npm install
npm start
```

👉 Use `.env.example` for environment variables.

---

## 🔹 7. Best Practices
✅ Commit often, small changes  
✅ Use clear commit messages (`feat:`, `fix:`, `docs:`)  
✅ Never push directly to `main`  
✅ Always create a PR for review  
✅ Sync with `develop` before coding  

---

## 🔹 8. Visual Workflow
![Workflow Diagram](docs/workflow.png)

---

🎯 **Follow this guide to ensure smooth collaboration!**
