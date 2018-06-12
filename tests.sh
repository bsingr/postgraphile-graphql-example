

curl -X POST \
  http://localhost:5000/graphql \
  -H 'Content-Type: application/json' \
  -d @- <<EOF
{
  "query": "{
    tableQuery(id: 12) {
      id
      headline
    }
  }"
}
EOF

curl -X POST \
  http://localhost:5000/graphql \
  -H 'Content-Type: application/json' \
  -d @- <<EOF
{
  "query": "
    mutation createPost {
      createPost(input: {post:{headline:\"foo\"}}) {
        post {
          id,
          headline
        }
      }
      updatePostById(input:{id:14, postPatch: {headline:\"bar\"}}) {
        post {
          id
        }
      }
    }
  "
}
EOF
