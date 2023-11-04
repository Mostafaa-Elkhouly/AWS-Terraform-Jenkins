# Use an existing Jenkins image as the base image
FROM jenkins/jenkins:lts

# Install necessary packages and update
USER root
RUN apt-get update && apt-get install -y \
    curl \
    unzip

# Install Terraform
RUN curl -LO https://releases.hashicorp.com/terraform/0.15.5/terraform_0.15.5_linux_amd64.zip && \
    unzip terraform_0.15.5_linux_amd64.zip && \
    mv terraform /usr/local/bin/ && \
    rm terraform_0.15.5_linux_amd64.zip

# Switch back to the Jenkins user
USER jenkins