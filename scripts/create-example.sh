#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/hikes"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiViYzc2MDYzZWExMjNiMDFkYzNmMWQ5ZTgzMDI4ZmVkMwY6BkVG--8ffe5fec8234e6c99e2fcacf887d0b5ead34e546" \
  --data '{
    "hike": {
      "when": "2016-05-07",
      "trail": "Falls",
      "duration": "2",
      "note": "Test Test!",
      "user_id": "1",
      "mountain_id": "10"
    }
  }'

echo
