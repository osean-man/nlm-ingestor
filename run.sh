#!/bin/bash

nohup java -jar jars/tika-server-standard-nlm-modified-2.4.1_v6.jar > /dev/null 2>&1 &

gunicorn --worker-class gevent --bind 0.0.0.0:5001 "nlm_ingestor.ingestion_daemon.__main__:app"
