FROM scratch
WORKDIR /
ADD whitepeople /whitepeople

EXPOSE 8080

CMD [ "/whitepeople" ]

