# Use the official Visual Studio Code Codespaces image as a base
FROM mcr.microsoft.com/vscode/devcontainers/universal:linux

# Update Linux packages and install Flex compiler
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y flex \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
