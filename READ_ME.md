# PostgreSQL Learning Notes

My notes and practice SQL files while learning PostgreSQL.

---

## Part 1: Databases Basics

| File | Topic |
| --- | --- |
| [`01_first_database.sql`](part_1/01_first_database.sql) | Creating (and resetting) your first database |

### SQL vs NoSQL

| | SQL | NoSQL |
| --- | --- | --- |
| **Type** | Relational | Non-relational |
| **Data format** | Tables (rows and columns) | Documents / objects (JSON-like), key-value, graph, etc. |
| **Schema** | Fixed, defined up front | Flexible, can change per record |
| **Examples** | PostgreSQL, MySQL, SQLite | MongoDB, Redis, Cassandra |

**When to use SQL?**
When your data is **structured** and has clear relationships (e.g. users → orders → products), and you need consistency (transactions, joins, constraints).

**When to use NoSQL?**
When your data is **unstructured** or changes shape often, or you need to scale horizontally with very large volumes of data.

### 01: First Database

```sql
-- Drops the database if it already exists (never do this in a production app!)
DROP DATABASE IF EXISTS postgresql_part1;

-- Creates a new database inside your PostgreSQL server
CREATE DATABASE postgresql_part1;
```

**Key points:**
- `DROP DATABASE IF EXISTS` deletes the database and **all its data**. It's only here so the script can be re-run while learning.
- `CREATE DATABASE` creates a new, empty database on the server.
- After creating it, connect to it with `\c postgresql_part1` in `psql`.

---

## How to Run

# On windows

install the pgadmin and add path to the env variable 

```bash
psql -U postgres -f part_1/01_first_database.sql
```
