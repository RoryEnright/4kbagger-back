API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/hikes/1"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiUzNjI1NzNjYmI4ZjAxMjdjMGVlNjM5NGNjYjllOTRlZgY6BkVG--6b701edb865c41f6ca456dbdde291238a711f9e3" \
  --data '{
    "hike": {
      "when": "2016-07-21",
      "trail": "Failing Waters",
      "duration": "3.5",
      "note": "I fell down a lot!",
      "user_id": "1",
      "mountain_id": "24"
    }
  }'
