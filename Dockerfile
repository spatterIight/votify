FROM alpine:3.22.1

ARG VOTIFY_VERSION=0.29.0
ARG TARGETARCH

LABEL version="${VOTIFY_VERSION}"
LABEL maintainer="spatterlight@spatterlight.space"

RUN apk update
RUN apk --no-cache add python3 py3-pip
RUN pip install votify --break-system-packages


ENTRYPOINT ["votify"]
CMD ["--help"]
