# Homebrew MKForge

[Homebrew](https://brew.sh) formula for [MKForge](https://mkforge.github.io), a Swiss Army knife for development tasks focused on generating context for Large Language Models (LLMs) and automating common development workflows.

## Installation

```bash
# Install MKForge
brew tap mkforge/homebrew-mkforge
brew install mkforge

# Verify installation
mkforge version
```

## Updating

```bash
# Update to the latest version
brew upgrade mkforge
```

## Troubleshooting

If you encounter any issues, you can try reinstalling:

```bash
# Remove the tap
brew untap mkforge/homebrew-mkforge

# Clear brew cache
brew cleanup

# Reinstall
brew tap mkforge/homebrew-mkforge
brew install mkforge
```

## Development

This formula is automatically maintained by GitHub Actions in the main [MKForge repository](https://mkforge.github.io). When a new release is created:

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

If you encounter any issues with the formula itself, please open an issue in this repository. For MKForge-related issues, please use our [support page](https://mkforge.github.io/support).

## License

This formula is released under the same license as [MKForge](https://mkforge.github.io).
