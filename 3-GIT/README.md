# Basic GIT

Lessons for how to use the core functionality of GIT for non-programmers.

## Table of Contents

- [Basic GIT](#basic-git)
  - [Table of Contents](#table-of-contents)
  - [301. Introduction to Version Control and Git](#301-introduction-to-version-control-and-git)
  - [302. Setting Up Git and GitHub](#302-setting-up-git-and-github)
  - [303. Finding Code on GitHub](#303-finding-code-on-github)
  - [304. Cloning a Repository](#304-cloning-a-repository)
  - [305. Making Changes Locally](#305-making-changes-locally)
  - [306. Tracking Changes with Git](#306-tracking-changes-with-git)
  - [307. Viewing History](#307-viewing-history)
  - [308. Pushing Changes to GitHub](#308-pushing-changes-to-github)
  - [309. Pulling Updates from GitHub](#309-pulling-updates-from-github)
  - [310. Basic Collaboration Concepts](#310-basic-collaboration-concepts)
  - [311. Troubleshooting Common Issues](#311-troubleshooting-common-issues)
  - [312. Recap and Next Steps](#312-recap-and-next-steps)

## 301. Introduction to Version Control and Git

- What is version control? Why is it useful?
- What is Git? What is GitHub?
- Real-world analogies (e.g., saving versions of a document)

## 302. Setting Up Git and GitHub

- Installing Git (see [official instructions](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git))
- Creating a GitHub account
- Configuring Git with your name and email:
  ```sh
  git config --global user.name "Your Name"
  git config --global user.email "you@example.com"
  ```

## 303. Finding Code on GitHub

- Navigating GitHub’s website
- Searching for repositories
- Understanding repository pages (README, files, issues, etc.)

## 304. Cloning a Repository

- What does “cloning” mean?
- Using the command line to clone a repository:
  ```sh
  git clone <repository-url>
  cd <repository-folder>
  ```

## 305. Making Changes Locally

- Opening files and making simple edits (e.g., with a text editor)
- Saving changes

## 306. Tracking Changes with Git

- Checking the status of your files:
  ```sh
  git status
  ```
- Seeing what’s changed:
  ```sh
  git diff
  ```
- Staging changes:
  ```sh
  git add <filename>
  ```
- Committing changes:
  ```sh
  git commit -m "Describe your change"
  ```

## 307. Viewing History

- Viewing commit history:
  ```sh
  git log
  ```
- Understanding commit messages and IDs

## 308. Pushing Changes to GitHub

- What is “pushing”?
- Pushing your changes:
  ```sh
  git push
  ```
- Seeing your changes appear on GitHub

## 309. Pulling Updates from GitHub

- What is “pulling”?
- Getting the latest changes:
  ```sh
  git pull
  ```

## 310. Basic Collaboration Concepts

- Forking a repository (very basic explanation)
- Making changes to your fork
- Opening a pull request (simple, non-technical explanation)

## 311. Troubleshooting Common Issues

- Authentication problems
- Merge conflicts (very basic, what to do if you see one)

## 312. Recap and Next Steps

- Review of what was learned
- Where to go for help (GitHub Docs, community forums)
- Encouragement to practice
