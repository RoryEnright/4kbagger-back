#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/mountains/7"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=BAhJIiU1NDQ2ODZmZmI0NGU3ZjQ3NjJhNGFkNTgxOWU2NDM5OQY6BkVG--1bd90f9d0c18cd3d69c6319e514c5862af85863e" \

echo
