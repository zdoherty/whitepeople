FROM scratch
WORKDIR /
ADD wp /wp

EXPOSE 8080

CMD [ "/wp" ]

