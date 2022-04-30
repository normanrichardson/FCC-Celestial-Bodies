
# [FCC Celestial Bodies Database](https://www.freecodecamp.org/learn/relational-database/build-a-celestial-bodies-database-project/build-a-celestial-bodies-database)

This was put together for the Relational Database (Beta) course on [FCC](https://www.freecodecamp.org/learn/relational-database/). The aim was to create and populate a PostgreSQL rational database. The implementation for this project can be found at `./sql_files/create.sql`, the deliverable for the project can be found at `./universe.sql`.

## Project Improvements
I have extended this project in the following ways:
* local development with Docker
* generate data with Faker

## Setup

Clone the Repository

```
$ git clone git@github.com:normanrichardson/FCC-Celestial-Bodies.git
$ cd FCC-Celestial-Bodies
```

### Generating the SQL file (optional):
To generate a new sql file first create a virtual environment
```
$ python -m venv .venv
```
Activate the environment
```
$ source .venv/bin/activate
```
Install the required libraries listed in `requirments.txt`
```
$ pip install -r requirements.txt 
```
Now run 
```
$ python generateData/generate.py 
```
This uses `faker` to fill a template `./generateData/sql_template.sql` with data. The new file is then writen to `./sql_files/create.sql`.

The files in `./sql_files` can be used to generate the required file `universe.sql`.

### Running postgres with Docker:
Using the standard postgres docker image create the container:
```
$ docker run --name=celestial-bodies-proj \
-e POSTGRES_USER=freecodecamp \
-e POSTGRES_PASSWORD=1234 \
-e POSTGRES_DB=universe \
-v "$(pwd)"/sql_files:/home/src \
-d \
--rm \
postgres:latest
```
This will:
* launch a new container named celestial-bodies-proj in the background (see `$ docker ps`). 
* remove the container after stopping it.
* map the `./sql_files` directory onto the container's directory `home/src`. 
The mapped files are accessible within the container and the host.

Launch psql in the celestial-bodies-proj container
```
$ docker exec -it -w /home/src celestial-bodies-proj \
psql -U freecodecamp -d universe -f create.sql
```
This will connect to the universe database and run the `sql_files\create.sql` file which generates the database and inserts the contained data. 

Dump the file as required by the project description
```
$ docker exec -it -w /home/src celestial-bodies-proj \
pg_dump -cC --inserts -U freecodecamp universe > universe.sql
```
Stop the container
```
$ docker stop celestial-bodies-proj
```
