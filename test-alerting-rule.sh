#!/bin/bash
# Example use: ./test-alerting-rule log_error.yaml
docker exec -it docker-elk_jk-alerter_1 elastalert-test-rule rules/$1
