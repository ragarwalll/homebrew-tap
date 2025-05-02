# Homebrew Tap

This repository hosts the Homebrew Cask for published releases by [Rahul Agarwal](https://therahulagarwal.com).

## Usage

1. Tap this repository:

   ```bash
   brew tap ragarwalll/tap
   ```

2. Install BeeAway:

   ```bash
   brew install --cask bee-away
   ```

3. To upgrade to the latest version:

   ```bash
   brew update && brew upgrade --cask bee-away
   ```

4. To remove:

   ```bash
   brew uninstall --cask bee-away
   ```

## Automating Cask Updates

We use [`brew-release`](https://github.com/Homebrew/brew-release) and a GitHub Actions workflow that listens for a `repository_dispatch` event to automatically bump the Cask.

When the main BeeAway repo publishes a new release (tag `vX.Y.Z`), it dispatches:

```json
{
  "event-type": "bump-bee-away-cask",
  "client-payload": {
    "version": "vX.Y.Z",
    "sha256": "<calculated-sha256>"
  }
}
```

Our `update-cask.yml` workflow picks this up and runs:

```bash
brew bump-cask-pr \\
  --cask-name=bee-away \\
  --version=${{payload.version}} \\
  --sha256=${{payload.sha256}} \\
  --url=\"https://github.com/your-org/BeeAway/releases/download/${{payload.version}}/BeeAway-${{payload.version}}.dmg\"
```

That opens a PR to bump `Casks/bee-away.rb`.

## Contributing

1. Fork this repo.
2. Make changes in `Casks/bee-away.rb` or workflows.
3. Open a PR against `main`.

## License

The Cask definitions and workflows in this repository are released under the [MIT License](LICENSE).
