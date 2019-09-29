#!/bin/sh

SOURCE=$1
PAYLOAD_BODY=$(base64 $SOURCE | tr 'A-Za-z' 'N-ZA-Mn-za-m')
PAYLOAD_SIZE=$(echo "$PAYLOAD_BODY" | wc -l)

cat <<EOF
#!/bin/sh
eval "\$(tail -n ${PAYLOAD_SIZE} \${0} | tr 'A-Za-z' 'N-ZA-Mn-za-m' | base64 -d)"
exit 0
${PAYLOAD_BODY}
EOF
