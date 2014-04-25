Install Docker
--------

Read the Docker documentation at [https://www.docker.io/](docker.io).

Build
--------

`docker build -t [yourname]/dotfiles git://github.com/smreed/dotfiles`

Run
--------

1. Choose a "working" directory.
2. `docker run -t -i -p 127.0.0.1:80:80 -v [working_dir]:/root/work [yourname]/dotfiles`

You now have a shell open in your docker container. `/root/work` is mapped to the working directory on your host.
