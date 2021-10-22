# PS Datastore GUI

This repo allows you to install a GUI to visualize the data stored in your local emulated datastore

## Requirement

* [Docker installed](https://www.docker.com/products/docker-desktop)

## Getting started


### Launch

```bash
docker-compose up -d
```

Then by default, you can access to the GUI by visiting <http://localhost:3000>

## Configuration

### Default configuration

If you don't create a .env file, default env is :

```bash
DATASTORE_PROJECT_ID=project-test

DATASTORE_PORT=8081
DATASTORE_LISTEN_ADDRESS=0.0.0.0:8081

GUI_PORT=3000
```

### Change GUI port

Add in .env:

```bash
GUI_PORT=1234
```

### Change Datastore port

You need to set same port on

Add in .env:

```bash
DATASTORE_LISTEN_ADDRESS="0.0.0.0:4321"
DATASTORE_PORT=4321
```


### Change Datastore project id

Add in .env:

```bash
DATASTORE_PROJECT_ID="my-project"
```


## Import your data's

### Export you data's

You need to go to your [Datastore](https://console.cloud.google.com/datastore/)  and export your data's in your [Cloud Storage](https://console.cloud.google.com/storage/browser)

After download you file, you need to add it in "imports" directory

### Run import script

```bash
docker exec -it datastore sh
./imports.sh
```

## Troubleshooting

Env variables doesn't change ? You need to rebuild your container

```bash
docker-compose down -v && docker-compose up -d --build
```
