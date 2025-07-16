# 311. Troubleshooting Common Issues

## Learning Objectives

- Recognize and resolve authentication problems with Git and GitHub
- Understand and address basic merge conflicts

## Introduction

When working with Git and GitHub, you may encounter issues such as authentication errors or merge conflicts. This lesson covers how to identify and resolve these common problems.

---

## 1. Authentication Problems

- If you see errors about authentication, check your username, password, or personal access token.
- Make sure you have permission to access the repository.
- For HTTPS, use a personal access token instead of a password if prompted.
- For SSH, ensure your SSH key is added to your GitHub account.

---

## 2. Merge Conflicts

- A merge conflict happens when two people change the same part of a file.
- Git will mark the conflict in the file. You must edit the file to resolve the conflict, then add and commit the resolved file.
- Basic steps:
  1. Open the conflicted file and look for lines marked with `<<<<<<<`, `=======`, and `>>>>>>>`.
  2. Edit the file to keep the correct changes.
  3. Save, then run `git add <filename>` and `git commit`.

---

## Practical Exercise

1. Try to push to a repository you don’t have access to and observe the authentication error.
2. Create a merge conflict by editing the same line in a file on two different branches, then merge them and resolve the conflict.

---

## Next Steps

- Review what you’ve learned and explore more advanced Git topics.
