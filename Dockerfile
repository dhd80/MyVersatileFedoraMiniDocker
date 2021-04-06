FROM registry.fedoraproject.org/fedora-minimal:latest

LABEL Name=fedoramini

ENV DCKR_NAME fomtextemplate
ENV APPL_DIR  /usr/$DCKR_NAME
ENV USER_NAME bowler

RUN useradd -m -p '' $USER_NAME \
    && mkdir -p $APPL_DIR \
    && microdnf -y update \
    && microdnf -y install \
        curl \
        vim-minimal \
    && microdnf clean all

USER $USER_NAME

# WORKDIR $APPL_DIR

CMD echo $DCKR_NAME
