FROM gcc AS buildstage

COPY hello.c .
RUN gcc -o hello hello.c

FROM ubuntu:20.04

COPY --from=buildstage hello .
ENTRYPOINT ["./hello"]
