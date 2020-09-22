# retag-image-ghcr

Retags an image and pushes the new tag to GHCR.

## Usage

Retagging a version for production

```yaml
- name: Retag to prod
  uses: kindaninja/retag-image-ghcr@0.1.0
  with:
    registry: kindaninja/my-repository
    image: my-docker-image
    current_tag: v42-stage
    new_tag: v42-prod
    username: github
    password: ${{ secrets.GITHUB_TOKEN }}
```

The new tag will be pushed to the registry.
