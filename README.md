# 🚀 Live Portfolio with Automated CI/CD Pipeline

[![Deploy Portfolio](https://github.com/KunalSingh005/portfolio-website-cicd/actions/workflows/deploy.yml/badge.svg)](https://github.com/KunalSingh005/portfolio-website-cicd/actions)

This repository contains the source code for my personal portfolio website. More importantly, it demonstrates a complete, automated CI/CD (Continuous Integration/Continuous Deployment) pipeline using **GitHub Actions**.

**[➡️ View Live Website](https://kunalsingh005.github.io/portfolio-website-cicd/)**

---

### 🎯 Project Goal

The primary goal of this project was not just to build a website, but to automate its entire deployment process. Every time a new commit is pushed to the `main` branch, a GitHub Actions workflow automatically triggers, builds, and deploys the latest version of the site to GitHub Pages.

This eliminates the need for any manual deployment steps, ensuring fast, reliable, and consistent updates.

---

### 🛠️ Tech Stack

* **Frontend:** `HTML5`, `CSS3`
* **CI/CD:** `GitHub Actions`
* **Hosting:** `GitHub Pages`

---

### 🔁 The CI/CD Pipeline Explained

The entire automation is handled by the workflow defined in the `.github/workflows/deploy.yml` file.

**The pipeline performs the following steps:**

1.  **Trigger:** The workflow starts automatically on every `push` to the `main` branch.
2.  **Checkout:** The virtual machine checks out the latest version of the repository's code.
3.  **Setup Pages:** It configures the environment for a GitHub Pages deployment.
4.  **Upload Artifact:** The website's code (HTML, CSS files) is bundled as an "artifact".
5.  **Deploy:** The artifact is deployed to the `gh-pages` environment, making the website live.

If any step fails, the workflow stops, and the live website is not updated, ensuring stability.

#### **Workflow Code (`deploy.yml`)**

```yml
# Is workflow ka naam
name: Deploy Portfolio to GitHub Pages

# Yeh pipeline kab chalegi?
# Jab bhi 'main' branch mein koi 'push' karega
on:
  push:
    branches:
      - main

# Permissions set karna
permissions:
  contents: read
  pages: write
  id-token: write

# Pipeline ke jobs (kaam)
jobs:
  # Ek hi job hai jiska naam 'deploy' hai
  deploy:
    # Environment set karna
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    
    # Yeh job kaunsi machine par chalegi?
    runs-
