## Use an oficial Python runtime as a parent image
FROM python:3.7-stretch

# Set the working directory to /app
WORKDIR /root


# Copy the netskope.yaml file to the docker image
copy "~/netskope.yaml" /root/

# Install the sumo-netskope-collector using pip3
RUN pip3 install sumologic-netskope-collector

# Run sumocollector when the container launches
CMD ["python", "-m", "sumonetskopecollector.netskope"]
