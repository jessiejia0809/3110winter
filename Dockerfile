FROM ocaml/opam2

# Set the working directory
WORKDIR /home/opam/notebooks

# Install Jupyter and the OCaml Jupyter kernel
RUN opam install jupyter
RUN opam install jupyter-archimedes

# Specify a different version of ppxfind
RUN opam install ppxfind.1.5

# Expose the Jupyter notebook port
EXPOSE 8888

# Start Jupyter notebook when the container starts
CMD ["jupyter", "notebook", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]

