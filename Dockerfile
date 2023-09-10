# Use the official Ubuntu base image 
FROM ubuntu

# Update the package list and install necessary packages
RUN apt update && apt install -y ffmpeg python3 python3-pip

# Install Python packages
RUN pip3 install -U openai-whisper setuptools-rust

# Set the entry point to bash
ENTRYPOINT [ "bash" ]
