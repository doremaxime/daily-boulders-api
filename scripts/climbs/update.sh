#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/climbs/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "climb": {
      "date": "'"${NAME}"'",
      "grade": "'"${UNIT}"'"
      }
    }'
     # \
  # --header "Authorization: Token token=$TOKEN"

echo
