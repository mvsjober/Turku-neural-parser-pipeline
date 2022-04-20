#!/bin/bash
export TNPP_MODEL=models_fi_tdt_dia/pipelines.yaml
export TNPP_PIPELINE=parse_plaintext
export TNPP_PORT=8080
export TNPP_MAX_CHARS=15000 # cut-off on character count to parse; protects from too large requests from web
export FLASK_APP=tnpp_serve
flask run --host 0.0.0.0 --port $TNPP_PORT
