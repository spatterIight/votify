FROM alpine:3.22.1

ARG VOTIFY_VERSION=1.5.8
ARG TARGETARCH

LABEL version="${VOTIFY_VERSION}"
LABEL maintainer="spatterlight@spatterlight.space"

RUN apk update
RUN apk --no-cache add python3 py3-pip ffmpeg
RUN pip install votify==${VOTIFY_VERSION} --break-system-packages

ENTRYPOINT ["votify"]
CMD ["--help"]
