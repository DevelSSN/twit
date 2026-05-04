# Git Commands Reference

## Repository Setup

### `git init`

Initialize a new Git repository in the current directory.
Creates a hidden `.git` folder that tracks all version history and configuration for your project.

### `git clone <url>`

Clone an existing repository from a remote source.
Downloads the entire project history and sets up a local working copy linked to the remote.

---

## Basic Workflow

### `git status`

Show the current state of the working directory and staging area.
Displays which files are modified, staged, or untracked so you know what will be included in the next commit.

### `git add <file>`

Stage changes for the next commit.
Moves file changes into the staging area, preparing them to be recorded in the repository history.

### `git commit -m "message"`

Commit staged changes with a message.
Records a snapshot of the staged files along with a descriptive message explaining the change.

### `git restore <file>`

Discard changes in the working directory.
Reverts a file back to its last committed state, removing any uncommitted modifications.

### `git rm <file>`

Remove a file from the working directory and staging area.
Deletes the file and stages the deletion so it will be removed in the next commit.

---

## Branching & Merging

### `git branch`

List, create, or delete branches.
Shows existing branches or creates a new one to isolate work without affecting the main codebase.

### `git checkout <branch>` (Avoid)

Switch to a different branch.
Updates your working directory to match the selected branch’s state.

### `git switch <branch>`

Switch branches (modern alternative to checkout).
Provides a clearer and safer way to move between branches without overloading functionality.

### `git merge <branch>`

Merge another branch into the current branch.
Combines histories and integrates changes, potentially requiring conflict resolution.

### `git rebase <branch>`

Reapply commits on top of another base branch.
Rewrites commit history to create a cleaner, linear progression of changes.

---

## Remote Repositories

### `git remote -v`

Show configured remote repositories.
Lists remote URLs used for fetching and pushing changes.

### `git fetch`

Download changes from a remote repository.
Updates local references without modifying your working files.

### `git pull`

Fetch and merge changes from a remote repository.
Combines `fetch` and `merge` to update your current branch with remote changes.

### `git push`

Upload local commits to a remote repository.
Sends your committed changes to a shared repository for others to access.

---

## History & Inspection

### `git log`

Show commit history.
Displays a chronological list of commits, including messages, authors, and hashes.

### `git diff`

Show differences between commits or working changes.
Highlights line-by-line modifications between file versions.

### `git show <commit>`

Display details of a specific commit.
Shows metadata and the exact changes introduced in that commit.

---

## Undoing Changes

### `git reset <commit>`

Move the current branch pointer to a specific commit.
Can modify the staging area and working directory depending on flags like `--soft`, `--mixed`, or `--hard`.

### `git revert <commit>`

Create a new commit that undoes a previous commit.
Safely reverses changes without rewriting project history.

---

## Stashing

### `git stash`

Temporarily save uncommitted changes.
Stores your working state so you can switch branches or pull updates without committing.

### `git stash pop`

Reapply stashed changes and remove them from stash.
Restores your saved work back into the working directory.

---

## Tagging

### `git tag`

Create or list tags.
Marks specific commits as important, often used for releases or versioning.

---

## Plumbing Commands

### `git cat-file -p <object>`

Display the contents of a Git object.
Allows inspection of blobs, trees, and commits at a low level, useful for debugging and understanding Git internals.

### `git hash-object <file>`

Compute object ID and optionally store a file.
Generates the SHA hash Git uses to identify content in its object database.

### `git ls-tree <tree>`

List the contents of a tree object.
Shows files and directories stored in a specific commit or tree structure.

### `git rev-parse <ref>`

Resolve revision identifiers to commit hashes.
Translates branch names, tags, or HEAD into their corresponding SHA values.

---

## Notes

- Porcelain commands are user-friendly (e.g., `commit`, `push`, `pull`).
- Plumbing commands are low-level tools used internally by Git but useful for advanced inspection.
