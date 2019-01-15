# TRAZE docs

This repository contains a simple website for hosting the traze protocol documentation. 
The documentation is written in markdown and rendered into a static HTML page using hugo.

## Running the docker container

```bash
docker build -t traze-docs .
docker run -d -p 80:80 --name traze-docs traze-docs
```

## Notes

we use the the [orbitron font](https://github.com/theleagueof/orbitron)
