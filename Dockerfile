
FROM alpine:latest
RUN adduser -D user
WORKDIR /home/user
RUN apk add neovim git
RUN mkdir -p /home/user/.config/nvim
COPY ./config/* /home/user/.config
RUN chmod +x /home/user/.config/config.sh
RUN chmod -R 777 /home/user/.config
USER user
RUN /home/user/.config/config.sh
ENTRYPOINT nvim