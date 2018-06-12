```
  docker-compose up
  # 1. install schema.sql and data.sql manually
  # 2. create a user with priviledges

  npm install
  postgraphile -c postgres://graphile@localhost/test -s a,b,c

  ./tests.sh
  open http://localhost:5000/graphiql
```