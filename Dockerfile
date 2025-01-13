# Base image
FROM jpetazzo/shpod:latest

# Update and install necessary dependencies
RUN apk update && apk add --no-cache \
    python3 \
    py3-pip \
    bash \
    curl \
    groff \
    less

# Install AWS CLI using pip with the override flag
RUN pip install --upgrade awscli --break-system-packages

# Set up a working directory and user environment
RUN mkdir -p /home/k8s/.aws /home/k8s/.kube && \
    chown -R k8s:k8s /home/k8s

# Set the default user to k8s
USER k8s

# Set up the container's entry point
ENTRYPOINT ["/bin/sh"]
