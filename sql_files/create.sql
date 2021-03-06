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
    (  'Emily',  'Boy per participant pay kind TV each.',   76156.35,  1  ),
    (  'Nancy',  'Benefit find expect owner.',   7111.13,  1  ),
    (  'Daniel',  'Outside get your way air resource race.',   53473.70,  1  ),
    (  'Martha',  'Yes management know.',   17527.55,  3  ),
    (  'Robin',  'But pressure another small sea.',   59600.38,  1  ),
    (  'Barry',  'Must born late.',   73263.90,  2  );

INSERT INTO star (name, galaxy_id, description, distance_from_earth, age_in_millions_of_years) VALUES 
    (  'Adrian',  2,   'Bed note up tree.',   7742,  36845.99  ),
    (  'Philip',  1,   'Interview many maybe environment.',   619,  69522.64  ),
    (  'Lori',  3,   'Fine score that.',   2196,  15993.55  ),
    (  'Michael',  3,   'Walk degree loss.',   6753,  49637.30  ),
    (  'Ian',  3,   'Cell car generation despite.',   6436,  20745.33  ),
    (  'Nancy',  6,   'Reveal money program name change call.',   3813,  12273.13  );

INSERT INTO planet (name, star_id, description, has_life, planet_types) VALUES
    (  'James',   6,   'Common too it drop investment.',   TRUE,  3  ),
    (  'Kimberly',   5,   'Hold staff alone human center three.',   FALSE,  1  ),
    (  'Rodney',   5,   'Away side statement white situation.',   FALSE,  1  ),
    (  'Diana',   2,   'Team summer another popular book.',   FALSE,  2  ),
    (  'Matthew',   1,   'Me every spend catch.',   TRUE,  3  ),
    (  'Zachary',   2,   'Nothing most old decade rate.',   FALSE,  2  ),
    (  'Jason',   5,   'Miss for listen local technology crime.',   TRUE,  2  ),
    (  'Brian',   6,   'Than hundred same car throughout.',   TRUE,  4  ),
    (  'Elizabeth',   2,   'Avoid Congress miss feel.',   FALSE,  1  ),
    (  'Ashley',   1,   'Wall clearly fall series.',   FALSE,  2  ),
    (  'Tiffany',   5,   'Yard natural moment attorney key.',   TRUE,  4  ),
    (  'Robert',   1,   'Middle send high rise message manage.',   TRUE,  4  );

INSERT INTO moon (name, planet_id, description, has_life) VALUES
    (  'Michelle',   9,   'Training require million reason.',   TRUE  ),
    (  'Julie',   2,   'Help push full where smile any.',   TRUE  ),
    (  'Michael',   9,   'Entire fund people.',   FALSE  ),
    (  'Mary',   9,   'Eye he more create share quality.',   FALSE  ),
    (  'Erin',   2,   'Make consider table price.',   TRUE  ),
    (  'Jerome',   8,   'Discuss government safe less.',   FALSE  ),
    (  'Martha',   8,   'Name owner road may.',   TRUE  ),
    (  'Erica',   9,   'Result assume create civil prove.',   FALSE  ),
    (  'Thomas',   12,   'Of poor up yard series act.',   FALSE  ),
    (  'Autumn',   6,   'Social body subject rate.',   FALSE  ),
    (  'Jacqueline',   10,   'Current conference loss rich with.',   TRUE  ),
    (  'Jason',   12,   'Human man recently same huge ask.',   FALSE  ),
    (  'Kayla',   11,   'Stuff current Republican participant.',   FALSE  ),
    (  'Suzanne',   1,   'Their nearly wide system those.',   TRUE  ),
    (  'Melvin',   2,   'Vote green visit white threat cost.',   TRUE  ),
    (  'Kylie',   12,   'Put low study school whatever.',   FALSE  ),
    (  'Jo',   11,   'Himself factor over series.',   FALSE  ),
    (  'Kristina',   8,   'Probably create none project.',   TRUE  ),
    (  'Chelsea',   6,   'Might over rest individual or popular.',   TRUE  ),
    (  'Douglas',   6,   'Guess order describe oil subject.',   TRUE  );

INSERT INTO occupants (name, planet_id, occupant_types) VALUES
    (  'Dakota',   3,   7   ),
    (  'Elizabeth',   3,   2   ),
    (  'Amy',   9,   8   ),
    (  'Joseph',   12,   4   ),
    (  'Kyle',   10,   4   ),
    (  'Kelly',   7,   7   ),
    (  'Robert',   8,   2   ),
    (  'Patricia',   2,   3   ),
    (  'Kathy',   2,   4   ),
    (  'Ashley',   8,   2   ),
    (  'Jonathan',   12,   8   ),
    (  'Kim',   12,   9   ),
    (  'Dylan',   10,   6   ),
    (  'Donald',   2,   7   ),
    (  'David',   2,   10   ),
    (  'Michael',   1,   3   ),
    (  'Jeffrey',   1,   2   ),
    (  'Jennifer',   7,   3   ),
    (  'Haley',   7,   4   ),
    (  'John',   8,   10   ),
    (  'Rebecca',   11,   4   ),
    (  'Jasmine',   7,   4   ),
    (  'Nicole',   3,   10   ),
    (  'Tyler',   5,   7   ),
    (  'Dean',   9,   8   ),
    (  'Tiffany',   8,   8   ),
    (  'Shawn',   5,   1   ),
    (  'Nancy',   5,   10   ),
    (  'Kevin',   9,   1   ),
    (  'Katherine',   10,   3   ),
    (  'Collin',   6,   8   ),
    (  'Gina',   6,   2   ),
    (  'Steven',   2,   1   ),
    (  'Jason',   5,   2   ),
    (  'Dennis',   7,   3   ),
    (  'Joshua',   11,   8   ),
    (  'Tina',   1,   1   ),
    (  'Manuel',   1,   6   ),
    (  'Miguel',   12,   9   ),
    (  'Susan',   10,   4   ),
    (  'Courtney',   6,   5   ),
    (  'Sara',   4,   10   ),
    (  'Faith',   5,   1   ),
    (  'Sierra',   11,   5   ),
    (  'Traci',   10,   7   ),
    (  'Kathryn',   5,   10   ),
    (  'Laura',   4,   7   ),
    (  'Linda',   5,   6   ),
    (  'Cathy',   6,   8   ),
    (  'Thomas',   7,   10   ),
    (  'Alexander',   4,   9   ),
    (  'Nathan',   8,   8   ),
    (  'Jeremy',   9,   3   ),
    (  'Christine',   8,   4   ),
    (  'Tracy',   7,   6   ),
    (  'Emily',   3,   4   ),
    (  'Leonard',   1,   1   ),
    (  'Jacob',   7,   1   ),
    (  'Gwendolyn',   12,   8   ),
    (  'Samantha',   10,   10   ),
    (  'Randy',   10,   4   ),
    (  'William',   12,   6   ),
    (  'Mary',   4,   2   ),
    (  'Angela',   3,   1   ),
    (  'Joanna',   7,   7   ),
    (  'Margaret',   2,   10   ),
    (  'Janet',   3,   8   ),
    (  'Cindy',   7,   6   ),
    (  'Nicholas',   4,   6   ),
    (  'Sarah',   10,   4   ),
    (  'Danielle',   6,   5   ),
    (  'Michelle',   4,   1   ),
    (  'Matthew',   7,   1   ),
    (  'Scott',   1,   8   ),
    (  'Julie',   1,   2   ),
    (  'Christopher',   4,   1   ),
    (  'Melanie',   7,   8   ),
    (  'Dustin',   9,   1   ),
    (  'Stephanie',   12,   1   ),
    (  'Samuel',   2,   2   ),
    (  'Jeff',   3,   2   ),
    (  'Donna',   5,   9   ),
    (  'James',   6,   3   ),
    (  'Kristopher',   9,   5   ),
    (  'Carlos',   2,   7   ),
    (  'Juan',   6,   9   ),
    (  'Lori',   10,   2   ),
    (  'Randall',   12,   1   ),
    (  'Karen',   6,   2   ),
    (  'Timothy',   3,   4   ),
    (  'Chad',   7,   6   ),
    (  'Jessica',   8,   9   ),
    (  'Alicia',   1,   5   ),
    (  'Justin',   5,   8   ),
    (  'Antonio',   4,   2   ),
    (  'Adam',   2,   1   ),
    (  'Alex',   8,   6   ),
    (  'Lauren',   2,   6   ),
    (  'Brandy',   10,   9   ),
    (  'Amber',   6,   1   );
