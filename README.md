# TRAZE docs

## Running the docker container

```bash
docker build -t traze-docs .
docker run -d -p 8080:80 --name traze-docs traze-docs
```


## Hugo

The used theme is called [hugo-simpledoc-theme](https://github.com/aerohub/hugo-simpledoc-theme)