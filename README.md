# generate-changelog

This action handles generating a new changelog based on (git-chglog)[https://github.com/git-chglog/git-chglog]
## Inputs

### with

#### next_tag
Optional - This provides an argument to the next-tag flag - which puts unreleased code under this tag

#### file
** Required ** - This is the name and path to where you want the changelog generated


## Example usage

```yaml
      - name: Generate the Changelog
        uses: r26d/generate-changelog@v1.0.0
        with:
          next_tag: 1.0.0
          file: "CHANGELOG.md"
  
```
