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

RUN wget https://dot.net/v1/dotnet-install.sh && \
    chmod +x ./dotnet-install.sh && \
    ./dotnet-install.sh -c 6.0 && \
    ./dotnet-install.sh -c 3.1  --runtime aspnetcore && \
    wget https://raw.githubusercontent.com/microsoft/artifacts-credprovider/master/helpers/installcredprovider.sh && \
    chmod +x installcredprovider.sh && \
    ./installcredprovider.sh && \
    sudo apt update && \
    sudo apt-get install -y wget apt-transport-https software-properties-common && \
    wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb && \
    sudo dpkg -i packages-microsoft-prod.deb && \
    sudo apt-get update && \
    sudo apt-get install -y powershell

#Clean up
RUN sudo apt-get autoremove -y \
    && sudo apt-get clean -y \
    && sudo rm -rf /var/lib/apt/lists/* \
    && rm dotnet-install.sh \
    && rm installcredprovider.sh

# Switch back to dialog for any ad-hoc use of apt
ENV DEBIAN_FRONTEND=