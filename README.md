# git-tidy

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Interactive tool to clean up stale local git branches.

## Installation

### Quick install (curl)

```bash
curl -sL https://raw.githubusercontent.com/rileyradoll/git-tidy/main/git-tidy -o /usr/local/bin/git-tidy && chmod +x /usr/local/bin/git-tidy
```

### Using make

```bash
git clone https://github.com/rileyradoll/git-tidy.git
cd git-tidy
make install
```

### Manual

1. Download the `git-tidy` script
2. Place it somewhere in your `$PATH` (e.g., `/usr/local/bin/`)
3. Make it executable: `chmod +x /usr/local/bin/git-tidy`

## Usage

Because the script is named `git-tidy`, git will automatically recognize it as a subcommand:

```bash
git tidy                    # Interactive cleanup of all branches
git tidy --dry-run          # Preview what would be shown
git tidy --merged           # Only show merged branches
git tidy --stale=30         # Only show branches older than 30 days
git tidy --fetch --merged   # Fetch first, then show merged branches
```

### Options

| Option | Description |
|--------|-------------|
| `--help` | Show help message |
| `--dry-run` | Preview branches without deleting |
| `--merged` | Only show branches merged to default branch |
| `--stale=DAYS` | Only show branches with no commits in DAYS days |
| `--fetch` | Run `git fetch --prune` before starting |

## Configuration

### Protected branches

The following branches are protected by default and will never be offered for deletion:
- `main`, `master`, `develop`, `development`, `staging`, `production`

### Custom protected branches

Set the `TIDY_GIT_PROTECTED` environment variable to add additional protected branch patterns:

```bash
export TIDY_GIT_PROTECTED="release hotfix"
```

## License

MIT License - see [LICENSE](LICENSE) for details.
