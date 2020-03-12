FROM microsoft/powershell

# Setup bundle user and directory
RUN useradd -ms /bin/bash bundle && \
    mkdir -p /home/bundle && \
    chown -R bundle /home/bundle

# Copy the bundle source to the image
COPY bin/ /home/bundle/bin/

# Drop privileges
WORKDIR /home/bundle
USER bundle
