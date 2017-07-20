#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/hikes"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiU1ZTljMjIxODllNWIzNDBmNzM4MTdmZGQ4YmMyOTkwMgY6BkVG--9cf03fd6727da23de0c9b735e2823d9aed212348" \
  --data '{
    "hike": {
      "when": "2016-05-07",
      "trail": "Falls",
      "duration": "2",
      "note": "Test Test!",
      "user_id": "1",
      "mountain_id": "3"
    }
  }'

echo
