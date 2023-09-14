# Starting microservices
This microservices is composed of 1. pgAdmin4 over the localhost, 2. swagger for restful openAPI, 3. postgraphile for GraphQL, and 4. postgres which is accessible by `psql`.

1. run the following command to start postgres microservices
```
% npm run up
# alias to `docker compose up`
```

If needed, one can run `npm run down` to shutdown the services.
```
% npm run down
```
If needed, one can run `npm run restart` to restart or reload all services. 
```
% npm run restart
```

# Using microservices
Once all the services are running, 
visit one of the links below for various functions.
1. http://localhost:8000/browser/   
   `CREATE TABLE`, `INSERT ...`, ...
   ![pg admin4](./docs/pg_micros_pgadmin4.png)
1. http://localhost:8080/  
   `curl -X GET ....`
   ![pg swagger](./docs/pg_micros_swagger.png)
1. http://localhost:5050/graphiql   
   `query  { allTodo: { ...} }`
   ![pg graphql](./docs/pg_micros_graphql.png)
1. connect to pg with `psql` with and npm script `psql`  
   which is a short hand for `docker exec -it pg_microservices-postgres-1 psql -U postgres_user postgres`
   ```
   % npm run psql
   ```
   1. check running microservices (docker containers)
     ![check docker containers](./docs/pg_micros_docker_ps.png)
   1. show all tables in the `public` schema
     ![show all public tables](./docs/pg_micros_psql_list_tables.png)
   1. select `id`, `title`, `is_done` columns from table `todo`
     ![select columns from todo table](./docs/pg_micros_psql_select_todo.png)
