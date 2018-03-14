dockerfile-file_backup
======================

This is a simple alpine container which copy the given file 

file_backup.sh is fetched directly from https://github.com/manoj23/file_backup.

## Example of docker run

```
docker build https://github.com:/manoj23/dockerfile-file_backup.git -t file_backup
docker run --rm -ti
	-e "ENV_FILE=/opt/file_to_back_up"
	-e "ENV_GIT_REPOSITORY=/opt/gitrepo/"
	-v /path/to/file_to_back_up:/opt/file_to_back_up
	-v /path/to/gitrepo:/opt/gitrepo/
	-v $HOME/.gitconfig:/root/.gitconfig
	--name file_backup file_backup
```

## Example of docker-compose.yml

Put in a folder:
* docker-compose.yml as below

```
version: '3'
services:
  file_backup:
    build: https://github.com:/manoj23/dockerfile-file_backup.git
    environment:
      - ENV_FILE=/opt/file_to_back_up
      - ENV_GIT_REPOSITORY=/opt/gitrepo/
    volumes:
      - /path/to/file_to_back_up:/opt/file_to_back_up
      - /path/to/gitrepo:/opt/gitrepo/
      - $HOME/.gitconfig:/root/.gitconfig
```
