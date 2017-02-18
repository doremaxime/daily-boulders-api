#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/climbs"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "climb": {
      "date": "'"${DATE}"'",
      "grade": "'"${GRADE}"'"
      }
    }' \
  --header "Authorization: Token token=$TOKEN"

echo
