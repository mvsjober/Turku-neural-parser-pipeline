#!/bin/bash
python3 fetch_models.py fi_tdt
python3 full_pipeline_server.py --gpu -1 --port 8080 --host 0.0.0.0 --conf models_fi_tdt/pipelines.yaml parse_plaintext
