FROM alpine:3.23.2

ARG VOTIFY_VERSION=1.5.9
ARG TARGETARCH

LABEL version="${VOTIFY_VERSION}"
LABEL maintainer="spatterlight@spatterlight.space"

RUN apk update
RUN apk --no-cache add python3 py3-pip ffmpeg
RUN pip install votify==${VOTIFY_VERSION} --break-system-packages

ENTRYPOINT ["votify"]
CMD ["--help"]
