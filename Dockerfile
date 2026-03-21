# Dockerfile — AHMYZSH Test Container
# Validates that AHMYZSH boots correctly in a clean zsh environment.
#
# Usage:
#   docker build -t ahmyzsh-test .
#   docker run --rm ahmyzsh-test
#   docker run --rm -it ahmyzsh-test zsh   # Interactive shell

FROM ubuntu:22.04

# Install zsh and minimal dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    zsh \
    git \
    curl \
    ca-certificates \
    locales \
    && rm -rf /var/lib/apt/lists/*

# Generate locale
RUN locale-gen en_US.UTF-8
ENV LANG=en_US.UTF-8

# Create a non-root user
RUN useradd -m -s /usr/bin/zsh testuser
USER testuser
WORKDIR /home/testuser

# Copy AHMYZSH into the container
COPY --chown=testuser:testuser . /home/testuser/ahmyzsh

# Set AHMYZSH path
ENV AHMYZSH=/home/testuser/ahmyzsh

# Run install script
RUN bash /home/testuser/ahmyzsh/scripts/install.sh

# Default: run the test suite
CMD ["bash", "/home/testuser/ahmyzsh/scripts/test.sh"]
