# PS Datastore DSUI

This repo allows you to install a GUI to visualize the data stored in your local emulated datastore

## Requirement

* [Docker installed](https://www.docker.com/products/docker-desktop)

* [Java 8+ JRE installed](https://www.oracle.com/java/technologies/javase-jre8-downloads.html)

* [Datastore emulator installed](https://cloud.google.com/datastore/docs/tools/datastore-emulator)

## Getting started

### Environment

You must edit `docker-compose.yml` file by setting the `DATASTORE_LISTEN_ADDRESS` and `DATASTORE_PROJECT_ID` provided by the datastore emulator.

## Launch

```bash
docker-compose up -d
```

Then you can access to the GUI by visiting <http://localhost:3000>
