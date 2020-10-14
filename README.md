# code-server-docker-deploy

Simple bash script to create user and install code-server then automatically install some required packages.

### Install

Make sure you have root access before doing this installation.

```
$ sudo apt-get update
$ git clone https://github.com/gvoze32/code-server-docker-deploy
$ cd code-server-docker-deploy
$ sudo bash firstinstall.sh
```

### Deploy
```
$ sudo bash deploy.sh
```

If you have any problem in using code-server-docker-deploy, please open new issue.

# Explanation

There is 5 variables inside the .env file:
```
PORT=
PASSWORD_PELANGGAN=
NAMA_PELANGGAN=
PUIDS=
PGIDS=
```
PORT= is used to specify the port where the container will be exposed.

NAMA_PELANGGAN= is used to set username login, and directory name which where to mount to docker container.

PASSWORD_PELANGGAN= is used to set password for authenticate.

PUIDS= is used to fix permissions issues.

PGIDS= is used to fix permissions issues.

Optional variables

There is 2 optional variables inside the .env file:
```
CPUS=
MEMORY=
```
CPUS= is used to specify how much limit CPU core will be used. If limit reached, container will be restart, and terminate all session.

MEMORY= is used to specify how much limit ram will be used, limit ram is maximum load. If limit reached, container will be restart, and terminate all session.
