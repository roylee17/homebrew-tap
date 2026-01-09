# Homebrew Tap

Personal Homebrew tap for roylee17's tools.

## Installation

```bash
brew tap roylee17/tap
```

## Available Formulae

### teleprompt

CLI tool for managing and syncing Claude Code configurations across computers.

```bash
brew install roylee17/tap/teleprompt
```

#### Usage

```bash
# Initialize on a computer
teleprompt init mbp-work

# Discover and track Claude assets
teleprompt scan
teleprompt add ~/.claude/

# Push/pull to sync across computers
teleprompt push
teleprompt pull

# Show version
teleprompt version
```

See [teleprompt](https://github.com/roylee17/teleprompt) for full documentation.

### zitadel-cli

CLI tool for Zitadel IAM provisioning and management.

```bash
brew install roylee17/tap/zitadel-cli
```

#### Usage

```bash
# Provision OIDC apps for a project
zitadel-cli provision myproject \
  --url https://zitadel.example.com \
  --token $PAT \
  --frontend-url https://frontend.myproject.example.com \
  --backend-url https://backend.myproject.example.com

# List projects
zitadel-cli list --url https://zitadel.example.com --token $PAT

# Show version
zitadel-cli version
```

See [zitadel-cli](https://github.com/roylee17/zitadel-cli) for full documentation.
