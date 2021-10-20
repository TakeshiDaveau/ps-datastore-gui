#!/bin/bash

# Find file in imports directory
IMPORT_FILENAME=`find /opt/imports -type f -name "*.overall_export_metadata" -print`

# Import data in DataStore
curl -X POST "localhost:${DATASTORE_PORT}/v1/projects/${DATASTORE_PROJECT_ID}:import" \
-H 'Content-Type: application/json' \
-d '{"input_url":"'${IMPORT_FILENAME}'"}'