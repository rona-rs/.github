# 🔌 Rona Organization

<h2 align="center">
  A powerful CLI tool to streamline your Git workflow
</h2>
<p align="center">
  <img src="https://img.shields.io/crates/v/rona.svg" alt="Crates.io Version">
  <img src="https://img.shields.io/crates/l/rona" alt="License">
</p>


## About

**Rona** is a command-line interface tool designed to enhance your Git workflow with powerful features and intuitive commands. Built with Rust for performance and reliability, Rona simplifies common Git operations and provides additional functionality for managing commits, files, and repository status.

## Key Features

- 🚀 **Intelligent File Staging** - Pattern-based file exclusion with support for multiple patterns
- 📝 **Structured Commit Messages** - Interactive commit type selection with customizable templates
- 🔄 **Streamlined Push Operations** - One-command commit and push workflows
- 🎯 **Customizable Configuration** - Global and project-level TOML configuration files
- 🎨 **Template System** - Flexible commit message formatting with variables
- 🛠 **Multi-Shell Support** - Completions for Bash, Fish, Zsh, and PowerShell
- 🔐 **GPG Signing** - Auto-detected commit signing with GPG
- ⚙️ **Flexible Editor Support** - Works with any command-line editor (vim, nano, code, zed, etc.)

## Quick Start

### Installation

**Via Cargo:**
```bash
cargo install rona
rona init vim  # Initialize with your preferred editor
```

**Via Homebrew:** (WIP)
```bash
brew tap rona-rs/rona
brew install rona
rona init vim
```

### Basic Usage

```bash
# Stage files (excluding specific patterns)
rona -a "*.log" "*.tmp"

# Generate commit message (interactive mode)
rona -g -i

# Commit and push
rona -c -p
```

## Repositories

### [rona](https://github.com/rona-rs/rona)
The main repository containing the Rona CLI tool source code.
- Written in Rust 🦀
- Comprehensive test suite
- Continuous integration with GitHub Actions
- Published to [crates.io](https://crates.io/crates/rona)

### [rona-wiki](https://github.com/rona-rs/rona-wiki)
Comprehensive documentation and guides for Rona.
- [Installation Guide](https://github.com/rona-rs/rona-wiki/blob/main/Installation.md)
- [Features Overview](https://github.com/rona-rs/rona-wiki/blob/main/Features.md)
- [Usage Guide](https://github.com/rona-rs/rona-wiki/blob/main/Usage-Guide.md)
- [Command Reference](https://github.com/rona-rs/rona-wiki/blob/main/Command-Reference.md)
- [Shell Integration](https://github.com/rona-rs/rona-wiki/blob/main/Shell-Integration.md)
- [FAQ](https://github.com/rona-rs/rona-wiki/blob/main/FAQ.md)

### [homebrew-rona](https://github.com/rona-rs/homebrew-rona)
Official Homebrew tap for macOS users.
- Easy installation via `brew tap`
- Automatic updates with `brew upgrade`
- Includes setup guides and quick start documentation

## Documentation

- **[Wiki Home](https://github.com/rona-rs/rona-wiki)** - Start here for comprehensive documentation
- **[Installation Guide](https://github.com/rona-rs/rona-wiki/blob/main/Installation.md)** - Multiple installation methods
- **[Usage Guide](https://github.com/rona-rs/rona-wiki/blob/main/Usage-Guide.md)** - Learn how to use Rona effectively
- **[Command Reference](https://github.com/rona-rs/rona-wiki/blob/main/Command-Reference.md)** - Complete command documentation
- **[Contributing](https://github.com/rona-rs/rona/blob/main/CONTRIBUTING.md)** - Guidelines for contributors

## Development

### Requirements
- Rust 2021 edition or later
- Git 2.0 or later

### Building from Source
```bash
git clone https://github.com/rona-rs/rona.git
cd rona
cargo build --release
```

### Running Tests
```bash
cargo test --workspace
```

### Linting
```bash
cargo clippy --workspace --release --all-targets --all-features -- \
  --deny warnings -D warnings \
  -W clippy::correctness \
  -W clippy::suspicious \
  -W clippy::complexity \
  -W clippy::perf \
  -W clippy::style \
  -W clippy::pedantic
```

## Contributing

Contributions are welcome! Please read our [Contributing Guidelines](https://github.com/rona-rs/rona/blob/main/CONTRIBUTING.md) before submitting pull requests.

### Ways to Contribute
- Report bugs and issues
- Suggest new features
- Improve documentation
- Submit pull requests
- Star the repository

## License

All projects in the Rona organization are dual-licensed under:
- Apache License, Version 2.0 ([LICENSE-APACHE](https://github.com/rona-rs/rona/blob/main/LICENCE-APACHE))
- MIT License ([LICENSE-MIT](https://github.com/rona-rs/rona/blob/main/LICENCE-MIT))

You may choose either license at your option.

## Support

- **Issues:** [GitHub Issues](https://github.com/rona-rs/rona/issues)
- **Discussions:** [GitHub Discussions](https://github.com/rona-rs/rona/discussions)
- **Wiki:** [Rona Wiki](https://github.com/rona-rs/rona-wiki)
