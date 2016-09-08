seq 0 5 | \
parallel 'curl \
    -s \
    "http://safneign.listasafnreykjavikur.is/node/26084?category=10&index={}" \
    -H "X-Requested-With: XMLHttpRequest" | \
    jq -r .markup' | \
grep -Eo "http://.+jpg"

