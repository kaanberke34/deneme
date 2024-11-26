#!/bin/bash

TARGET_URL="http://mif.vu.lt"
COOKIE_JAR="cookies.txt"

echo "1. GET request with header:"
curl -I "$TARGET_URL"

echo -e "\n2. GET request following redirects:"
curl -L "$TARGET_URL"

echo -e "\n3. POST request example:"
curl -X POST "$TARGET_URL" -d "key1=value1&key2=value2"

echo -e "\n4. GET request with cookies (anonymized):"
curl -b $COOKIE_JAR "$TARGET_URL"

echo -e "\n5. Handle cookies (saving to jar):"
curl -c $COOKIE_JAR "$TARGET_URL"

echo -e "\nScript completed. Output results saved to cookies.txt and printed above."
