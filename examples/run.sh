#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_autopilot info
PYTHONPATH=src python -m gbt_autopilot check --payload '{"goal": "<在此填写>"}'
PYTHONPATH=src python -m gbt_autopilot run   --payload '{"goal": "<在此填写>"}'
