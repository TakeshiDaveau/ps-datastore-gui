# PS Datastore GUI

This repo allows you to install a GUI to visualize the data stored in your local emulated datastore

## Requirement

* [Docker installed](https://www.docker.com/products/docker-desktop)

* [Java 8+ JRE installed](https://www.oracle.com/java/technologies/javase-jre8-downloads.html)

* [Datastore emulator installed](https://cloud.google.com/datastore/docs/tools/datastore-emulator)

## Getting started

### Environment

Set up your envfile :

```bash
echo "$(gcloud beta emulators datastore env-init)" > .env
```

### Launch

```bash
gcloud beta emulators datastore start
docker-compose up -d
```

Then you can access to the GUI by visiting <http://localhost:3000>

## Configuration

### Change GUI port

Add in .env:

```bash
GUI_PORT=1234
```

## Troubleshooting

To verify that the JRE is well installed `java -version` if you hav an error message "command not found: java", you need to update your .zshrc or .bashrc file to update the `PATH` variable and add the path where java is installed.

If you do not have a datastore configured you can do `gcloud config set project <datastore-name>`
