FROM jupyter/base-notebook:latest

USER root
RUN apt-get update && apt-get install -y racket libzmq3-dev

USER ${NB_USER}

RUN raco pkg install --deps search-auto iracket
RUN raco iracket install
