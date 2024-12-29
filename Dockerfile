# Build from MATLAB base image
FROM mathworks/matlab:latest

# Set variables
ENV MLM_WEB_LICENSE=True
ENV ACCEPT_EULA=Y

# Install required tools
USER root
RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Create the Dependency folder
WORKDIR /usr/src/matlab-code/Dependency

# Download and unzip required files into the Dependency folder
RUN wget -O GNQKDcodesALLfiles.zip https://www.math.uwaterloo.ca/~hwolkowi/henry/reports/ZGNQKDmainsolverUSEDforPUBLCNJuly31/GNQKDcodesALLfiles.zip \
    && unzip GNQKDcodesALLfiles.zip -d GNQKDcodesALLfiles \
    && rm GNQKDcodesALLfiles.zip

RUN wget -O cvx.zip https://github.com/cvxr/CVX/releases/download/2.2.2/cvx.zip \
    && unzip cvx.zip -d cvx \
    && rm cvx.zip

RUN wget -O QETLAB-master.zip https://github.com/nathanieljohnston/QETLAB/archive/refs/heads/master.zip \
    && unzip QETLAB-master.zip -d QETLAB \
    && rm QETLAB-master.zip

# Copy your script into the image
COPY . /usr/src/matlab-code

# Grant permission to the matlab user
RUN chown -R 1000:1000 /usr/src/matlab-code

# Set the working directory and user
WORKDIR /usr/src/matlab-code
USER matlab

# Heroku sets $PORT at runtime, but we can EXPOSE a placeholder
EXPOSE 8080

# Run the main MATLAB script when the container starts
CMD ["matlab", "-batch", "dummy"]