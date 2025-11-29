# Agent Guidelines

## File System Operations

1.  **Scope Limitation**:
    *   All write operations (creating, editing, deleting files or directories) MUST be strictly limited to the current working directory and its subdirectories.
    *   **NEVER** write to, modify, or delete files outside of the current directory tree.
    *   **NEVER** execute destructive commands that affect paths outside the current directory.
