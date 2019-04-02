FROM debian:stretch

LABEL "repository"="https://github.com/sebastianpopp/git-ftp-action"
LABEL "homepage"="https://github.com/sebastianpopp/git-ftp-action"
LABEL "maintainer"="Sebastian Popp <git-ftp-action@sebastianpopp.com>"

LABEL "com.github.actions.name"="GIT-FTP Deploy"
LABEL "com.github.actions.description"="GIT-FTP Deploy"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="blue"

RUN apt-get update && apt-get install -y git-ftp

COPY entrypoint.sh /entrypoint.sh
RUN chmod 777 entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
