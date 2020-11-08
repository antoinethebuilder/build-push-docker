FROM --platform=${TARGETPLATFORM:-linux/amd64} alpine:latest

ARG TARGETPLATFORM
ARG BUILDPLATFORM
RUN printf "I am running on ${BUILDPLATFORM:-linux/amd64}, building for ${TARGETPLATFORM:-linux/amd64}\n$(uname -a)\n"

LABEL maintainer="antoinethebuilder"

RUN apk --update --no-cache add p7zip python3 py3-pip py3-virtualenv jq curl git \
  && rm -rf /var/cache/apk/* /tmp/*

CMD [ "echo", "Just run any commands you feel like running!" ]