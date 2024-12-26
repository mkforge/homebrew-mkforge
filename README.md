
# Homebrew Mktools

[Homebrew](https://brew.sh) formula for [mktools](https://github.com/amenophis1er/mktools), a Swiss Army knife for development tasks focused on generating context for Large Language Models (LLMs) and automating common development workflows.

## Installation

```bash
# Install mktools
brew tap amenophis1er/homebrew-mktools
brew install mktools

# Verify installation
mktools version
```

## Updating

```bash
# Update to the latest version
brew upgrade mktools
```

## Troubleshooting

If you encounter any issues, you can try reinstalling:

```bash
# Remove the tap
brew untap amenophis1er/homebrew-mktools

# Clear brew cache
brew cleanup

# Reinstall
brew tap amenophis1er/homebrew-mktools
brew install mktools
```

## Development

This formula is automatically maintained by GitHub Actions in the main [mktools repository](https://github.com/amenophis1er/mktools). When a new release is created:

1. Binaries are built for multiple platforms
2. SHA256 checksums are generated
3. Formula is automatically updated with the new version and checksums
4. Changes are committed and pushed to this repository

## Available Platforms

- macOS (Apple Silicon/ARM64)
- macOS (Intel/AMD64)
- Linux (x86_64)
- Linux (ARM64)

## Contributing

If you encounter any issues with the formula itself, please open an issue in this repository. For mktools-related issues, please use the [main repository's issue tracker](https://github.com/amenophis1er/mktools/issues).

## License

This formula is released under the same license as [mktools](https://github.com/amenophis1er/mktools).
ization