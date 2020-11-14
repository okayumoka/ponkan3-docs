# Ponkan Documents

Documents for [Ponkan](https://github.com/studiomikan/ponkan)

## build and deploy

Using [MkDocs](https://github.com/mkdocs/mkdocs/)
and [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/).

### Docker

```bash
docker-compose build
docker-compose up
```

### Windows

```bat
install mkdocs
> scripts/bat/install-mkdocs.bat

fetch ponkan source
> scripts/bat/clone-ponkan.bat

case of only build
> scripts/bat/build.bat

case of develop
> scripts/bat/start-dev-server.bat

deploy
> scripts/bat/gh-deploy.bat
```
