FROM alpine:3.18.4

RUN apk add skopeo

CMD [ "skopeo" ]