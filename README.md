### Docker container for MP4 conversion

This Dockerfile builds a container to run the https://github.com/mdhiggins/sickbeard_mp4_automator tool using the `manual.py` script. It clones this repository and sets up ffmpeg then copies your `autoProcess.ini` file into the appropriate location.

My media plays to Roku devices so I convert to MP4/H.264/AAC(AC3 if available). These settings are all in the included `autoProcess.ini` file. I run this in interactive mode so that I can watch the progress with a tmux session.

### Building and Running
```
git clone https://github.com/mwdomino/docker_mp4_automator.git
docker build -t mp4-automator .
docker run --rm -it -v <path_to_media_folder>:/data mp4-automator
```

### Running from Dockerhub
```
docker run --rm -it -v <path_to_media_folder>:/data mwdomino/mp4-automator
```
