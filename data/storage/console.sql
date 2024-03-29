SHOW DATABASES;

use tokenbox;

INSERT INTO hash_pool_v1 (sort, hash) VALUES ('2', '2'), ('3', '3');
INSERT INTO hash_pool_v1 (sort, hash) VALUES ('111', '333');

SELECT * FROM hash_pool_v1;
SELECT * FROM hash_pool_v2;
SELECT * FROM hash_pool_v1 WHERE sort IN [1,2];
SELECT * FROM hash_pool_v5 LIMIT 10;
SELECT * FROM hash_pool_v5 ORDER BY sort LIMIT 10;
SELECT * FROM hash_pool_v5 ORDER BY sort DESC LIMIT 10;
SELECT * FROM hash_pool_v5 ORDER BY sort DESC LIMIT 1;
SELECT * FROM hash_pool_v6 WHERE hash='15FTGf';

-- ---------------------------------------------------------------------------------------------

SELECT count(*) FROM hash_pool_v1;
SELECT count(*) FROM hash_pool_v2;
SELECT count(*) FROM hash_pool_v3;
SELECT count(*) FROM hash_pool_v4;
SELECT count(*) FROM hash_pool_v5;
SELECT count(*) FROM hash_pool_v6;

-- ---------------------------------------------------------------------------------------------