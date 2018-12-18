# TRAZE docs

This repository contains a siple website for hosting the traze protocol documentation. 
The Documentation is written in markdown and rendered into a static HTML page using hugo.

## Running the docker container

```bash
docker build -t traze-docs .
docker run -d -p 80:80 --name traze-docs traze-docs
```

## Notes

we use the the [orbitron font](https://github.com/theleagueof/orbitron)
