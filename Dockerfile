
FROM alpine:3.16.2
ARG sep="======================================="
RUN apk add neovim && echo $sep INSTALLED NEOVIM $sep
RUN mkdir -p /root/.config/nvim
COPY ./init.* /root/.config/nvim/
COPY ./config.sh /root/.config/nvim/
RUN echo $sep IMPORTED CONFIGS $sep
RUN chmod +x /root/.config/nvim/config.sh
RUN /root/.config/nvim/config.sh && echo $sep CONFIGURATION SUCCESS $sep
ENTRYPOINT nvim
