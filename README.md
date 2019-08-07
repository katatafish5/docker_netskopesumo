# Sumo Netskope Colector Docker Image
## A Dockerfile that runs your SumoLogic Netskope collector

The Dockerfile above runs the following:
- Python 3.7 in Debian Strech
- Sets the working directory as /root
- Copies the provided netskope.yaml file to the /root/ directory
- Installs the sumologic netskop collector using pip3
- Sets the python command to run at the container launch

### Getting started
1. Download this git repo and extract it
2. Edit the netskope.yaml file:
   - Change the SUMO_ENDPOINT:
   - Change the TOKEN:
   - Change the NETSKOPE_EVENT_ENDPOINT:
   - Change the NETSKOPE_ALERT_ENDPOINT:
3. Make any other adjustments to your required collector settings in the netskope.yaml
4. Build your Docker image:
   - sudo docker build -t netskope
   ![alt text](https://github.com/katatafish5/docker_netskopesumo/blob/master/docker_build.png "Building the Docker image")
5. Run your Docker image:
   - sudo docker run netskope
  ![alt text](https://github.com/katatafish5/docker_netskopesumo/blob/master/docker_run.png "Running the Docker image")
