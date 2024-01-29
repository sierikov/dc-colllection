# Use the Scala and SBT base image
FROM --platform=linux/amd64 sbtscala/scala-sbt:eclipse-temurin-jammy-21.0.1_12_1.9.8_2.13.12

# Install Docker
RUN apt-get update && apt-get install -y ca-certificates gnupg
RUN mkdir -m 0755 -p /etc/apt/keyrings
    # downloads docker GPG key and adds docker repository to list of all repositories
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg && \
    echo "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
    # one-more time to apply changes above
RUN apt-get update && apt-get install -y docker-ce-cli

# Verify Docker installation
RUN docker --version
