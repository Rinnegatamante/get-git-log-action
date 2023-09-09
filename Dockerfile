FROM ubuntu:14.04.4

# Install Git
RUN apt-get update && apt-get install -y git

# Add the entry point
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Load the entry point
ENTRYPOINT ["/entrypoint.sh"]