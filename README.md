# opensips
Evaluating [skeema.io continuous integration](https://www.skeema.io/ci) using [database schema from OpenSIPS 3.0](https://github.com/OpenSIPS/opensips/tree/3.0.0/scripts/mysql)

1. Download [skeema binary ](https://github.com/skeema/skeema/releases).

2. Launch local mariadb server docker image as a production environment:

		docker pull mariadb/server:10.3
		docker run -d --name maria -p 3307:3306 --env MARIADB_ALLOW_EMPTY_PASSWORD=yes --env MARIADB_DATABASE=opensips mariadb/server:10.3

3. Execute
 
		skeema lint
		skeema diff
		skeema push
	
4. Verify

		skeema diff

	Expected output:

		2019-07-02 10:36:14 [INFO]  Generating diff of 127.0.0.1:3307 opensips vs /Users/admin/thinQ-skeema/opensips/scripts/mysql/*.sql
		2019-07-02 10:36:14 [INFO]  127.0.0.1:3307 opensips: No differences found
		