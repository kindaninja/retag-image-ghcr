FROM docker:19.03.13

LABEL "version"="0.1.0"
LABEL "repository"="https://github.com/kindaninja/retag-image-ghcr"
LABEL "homepage"="https://github.com/kindaninja/retag-image-ghcr"
LABEL "maintainer"="kindaninja"
LABEL "com.github.actions.name"="Retag image in GHCR"
LABEL "com.github.actions.description"="Retag an image and push it to GHCR"
LABEL "com.github.actions.icon"="hash"
LABEL "com.github.actions.color"="blue"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
