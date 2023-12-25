FROM ocaml/opam2:alpine-3.13
RUN opam switch create 4.12
RUN opam install -y jupyter
RUN opam exec -- jupyter kernelspec install --name ocaml-jupyter-4.12 --user
CMD opam exec -- jupyter lab --ip 0.0.0.0 --port 8888 --no-browser --allow-root

