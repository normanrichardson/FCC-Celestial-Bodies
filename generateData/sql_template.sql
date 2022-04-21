CREATE TABLE galaxy(
    galaxy_id SERIAL PRIMARY KEY, 
    name VARCHAR(40) UNIQUE NOT NULL, 
    description TEXT, 
    age_in_millions_of_years NUMERIC(7,2), 
    galaxy_types INT);

CREATE TABLE star(
    star_id SERIAL PRIMARY KEY, 
    name VARCHAR(40) UNIQUE NOT NULL, 
    galaxy_id INT, 
    description TEXT, 
    distance_from_earth INT, 
    age_in_millions_of_years NUMERIC(7,2)) ;

CREATE TABLE planet(
    planet_id SERIAL PRIMARY KEY, 
    name VARCHAR(40) UNIQUE NOT NULL, 
    star_id INT, 
    description TEXT,
    has_life BOOLEAN,  
    planet_types INT); 

CREATE TABLE moon(
    moon_id SERIAL PRIMARY KEY, 
    name VARCHAR(40) UNIQUE NOT NULL, 
    planet_id INT, 
    description TEXT,
    has_life BOOLEAN); 

CREATE TABLE occupants(
    occupants_id SERIAL PRIMARY KEY,
    planet_id INT, 
    name VARCHAR(40) UNIQUE NOT NULL, 
    occupant_types INT);

ALTER TABLE star ADD FOREIGN KEY(galaxy_id) REFERENCES galaxy(galaxy_id);
ALTER TABLE planet ADD FOREIGN KEY(star_id) REFERENCES star(star_id);
ALTER TABLE moon ADD FOREIGN KEY(planet_id) REFERENCES planet(planet_id);
ALTER TABLE occupants ADD FOREIGN KEY(planet_id) REFERENCES planet(planet_id);

INSERT INTO galaxy (name, description, age_in_millions_of_years, galaxy_types) VALUES 
${galaxy_data}

INSERT INTO star (name, galaxy_id, description, distance_from_earth, age_in_millions_of_years) VALUES 
${star_data}

INSERT INTO planet (name, star_id, description, has_life, planet_types) VALUES
${planet_data}

INSERT INTO moon (name, planet_id, description, has_life) VALUES
${moon_data}

INSERT INTO occupants (name, planet_id, occupant_types) VALUES
${occupants_data}
