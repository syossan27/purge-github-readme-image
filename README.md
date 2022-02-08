# purge-github-readme-image

Purge GitHub README.md image

## Usage

```YAML
steps:
  - uses: syossan27/purge-github-readme-image@v1.0.0
    with:
      repository: ${github.repository}
      token: ${{ secrets.GITHUB_TOKEN }}
```

