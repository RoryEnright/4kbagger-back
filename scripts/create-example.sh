#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/hikes"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiUyOTJlNTAxM2M2ZWQxZTQ1MDFkMGNiYTZiMDE1NmE2MwY6BkVG--a39de567a724b29c6fd5c00a60f6f23b79c977db" \
  --data '{
    "hike": {
      "when": "2016-21-07",
      "trail": "Falling Waters",
      "duration": "3.5",
      "note": "Amazing water falls!",
      "user_id": "1",
      "mountain_id": "24"
    }
  }'

echo
