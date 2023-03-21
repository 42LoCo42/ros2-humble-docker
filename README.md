# Installation
```
git clone https://github.com/42LoCo42/ros2-humble-docker
cd ros2-humble-docker
docker build -t my-ros .
./create
```
You now have a docker container called `ros-humble`
with shared graphics, files (this repo folder maps to `/host`) and network.
Everything should just work, scream at me if it doesn't!

# Additional tools
- `./start` to start the container
- `./shell` to get a shell inside the container
- `./run <command>` to run a command inside the container
