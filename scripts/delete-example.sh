API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/hikes/1"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=BAhJIiViYzc2MDYzZWExMjNiMDFkYzNmMWQ5ZTgzMDI4ZmVkMwY6BkVG--8ffe5fec8234e6c99e2fcacf887d0b5ead34e546" \
