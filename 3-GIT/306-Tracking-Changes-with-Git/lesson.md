# 306. Tracking Changes with Git

## Learning Objectives

- Check the status of files in a repository
- View changes made to files
- Stage and commit changes using Git

## Introduction

Git allows you to track changes to your files, see what has changed, and save your work with descriptive messages. This lesson covers the basic workflow for tracking changes.

---

## 1. Checking the Status of Your Files

See which files have been modified, added, or deleted.

```sh
git status
```

---

## 2. Seeing What’s Changed

View the differences between your working files and the last commit.

```sh
git diff
```

---

## 3. Staging Changes

Add files to the staging area to prepare them for a commit.

```sh
git add <filename>
```

---

## 4. Committing Changes

Save your changes to the repository with a descriptive message.

```sh
git commit -m "Describe your change"
```

---

## Practical Exercise

1. Make a change to a file in your repository.
2. Run `git status` to see the change.
3. Run `git diff` to view the difference.
4. Stage the file with `git add <filename>`.
5. Commit the change with a message using `git commit -m "Describe your change"`.

---

## Next Steps

- Learn how to view commit history in the next lesson.
