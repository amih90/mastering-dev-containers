FROM mcr.microsoft.com/vscode/devcontainers/base:0-ubuntu-20.04

# Avoid warnings by switching to noninteractive
ENV DEBIAN_FRONTEND=noninteractive

ARG USERNAME=vscode

# Installing python2.7
RUN apt update && apt -y install --no-install-recommends apt-utils dialog 2>&1
RUN apt install -y software-properties-common && \
    add-apt-repository ppa:deadsnakes/ppa -y && \
    apt update && \
    apt install -y \
        python2.7

# Updating aliases
RUN echo 'alias python=python2.7' >> /etc/bash.bashrc

# Create a non-root user to use if preferred - see https://aka.ms/vscode-remote/containers/non-root-user.
RUN apt-get install -y sudo \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME\
    && chmod 0440 /etc/sudoers.d/$USERNAME

# Clean up
RUN apt-get autoremove -y && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/*

USER $USERNAME
WORKDIR /home/$USERNAME

# Switch back to dialog for any ad-hoc use of apt
ENV DEBIAN_FRONTEND=