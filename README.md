# embulk-docker

This is unofficial embulk docker image. It builds embulk image automatically.

https://hub.docker.com/repository/docker/tsubasaogawa/embulk

# Usage

```
docker pull tsubasaogawa/embulk
docker run --rm -it tsubasaogawa/embulk --version
```

# Development

1. Fork this
1. Set secret variables in GitHub repository
    - DOCKERHUB_TOKEN
    - DOCKERHUB_USERNAME
1. Push
1. Run GitHub Actions manually or cronly
