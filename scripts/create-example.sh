#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/hikes"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiVjZjVmN2FmMDZjYmM5M2MxYjAyZmI4MmQ1MzliMDlkNgY6BkVG--374ebd41c4f8b4a0c1027ab943cead7437e4ff8a" \
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
