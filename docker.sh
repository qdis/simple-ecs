echo "$PAT" | docker login -u qdis --password-stdin docker.pkg.github.com
docker build . --file Dockerfile --tag docker.pkg.github.com/qdis/samples/simple-ecs:latest
docker push docker.pkg.github.com/qdis/samples/simple-ecs:latest