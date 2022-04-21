--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2 (Debian 14.2-1.pgdg110+1)
-- Dumped by pg_dump version 14.2 (Debian 14.2-1.pgdg110+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    age_in_millions_of_years numeric(7,2),
    galaxy_types integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    planet_id integer,
    description text,
    has_life boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: occupants; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.occupants (
    occupants_id integer NOT NULL,
    planet_id integer,
    name character varying(40) NOT NULL,
    occupant_types integer
);


ALTER TABLE public.occupants OWNER TO freecodecamp;

--
-- Name: occupants_occupants_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.occupants_occupants_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.occupants_occupants_id_seq OWNER TO freecodecamp;

--
-- Name: occupants_occupants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.occupants_occupants_id_seq OWNED BY public.occupants.occupants_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    star_id integer,
    description text,
    has_life boolean,
    planet_types integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    galaxy_id integer,
    description text,
    distance_from_earth integer,
    age_in_millions_of_years numeric(7,2)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: occupants occupants_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.occupants ALTER COLUMN occupants_id SET DEFAULT nextval('public.occupants_occupants_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Emily', 'Boy per participant pay kind TV each.', 76156.35, 1);
INSERT INTO public.galaxy VALUES (2, 'Nancy', 'Benefit find expect owner.', 7111.13, 1);
INSERT INTO public.galaxy VALUES (3, 'Daniel', 'Outside get your way air resource race.', 53473.70, 1);
INSERT INTO public.galaxy VALUES (4, 'Martha', 'Yes management know.', 17527.55, 3);
INSERT INTO public.galaxy VALUES (5, 'Robin', 'But pressure another small sea.', 59600.38, 1);
INSERT INTO public.galaxy VALUES (6, 'Barry', 'Must born late.', 73263.90, 2);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Michelle', 9, 'Training require million reason.', true);
INSERT INTO public.moon VALUES (2, 'Julie', 2, 'Help push full where smile any.', true);
INSERT INTO public.moon VALUES (3, 'Michael', 9, 'Entire fund people.', false);
INSERT INTO public.moon VALUES (4, 'Mary', 9, 'Eye he more create share quality.', false);
INSERT INTO public.moon VALUES (5, 'Erin', 2, 'Make consider table price.', true);
INSERT INTO public.moon VALUES (6, 'Jerome', 8, 'Discuss government safe less.', false);
INSERT INTO public.moon VALUES (7, 'Martha', 8, 'Name owner road may.', true);
INSERT INTO public.moon VALUES (8, 'Erica', 9, 'Result assume create civil prove.', false);
INSERT INTO public.moon VALUES (9, 'Thomas', 12, 'Of poor up yard series act.', false);
INSERT INTO public.moon VALUES (10, 'Autumn', 6, 'Social body subject rate.', false);
INSERT INTO public.moon VALUES (11, 'Jacqueline', 10, 'Current conference loss rich with.', true);
INSERT INTO public.moon VALUES (12, 'Jason', 12, 'Human man recently same huge ask.', false);
INSERT INTO public.moon VALUES (13, 'Kayla', 11, 'Stuff current Republican participant.', false);
INSERT INTO public.moon VALUES (14, 'Suzanne', 1, 'Their nearly wide system those.', true);
INSERT INTO public.moon VALUES (15, 'Melvin', 2, 'Vote green visit white threat cost.', true);
INSERT INTO public.moon VALUES (16, 'Kylie', 12, 'Put low study school whatever.', false);
INSERT INTO public.moon VALUES (17, 'Jo', 11, 'Himself factor over series.', false);
INSERT INTO public.moon VALUES (18, 'Kristina', 8, 'Probably create none project.', true);
INSERT INTO public.moon VALUES (19, 'Chelsea', 6, 'Might over rest individual or popular.', true);
INSERT INTO public.moon VALUES (20, 'Douglas', 6, 'Guess order describe oil subject.', true);


--
-- Data for Name: occupants; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.occupants VALUES (1, 3, 'Dakota', 7);
INSERT INTO public.occupants VALUES (2, 3, 'Elizabeth', 2);
INSERT INTO public.occupants VALUES (3, 9, 'Amy', 8);
INSERT INTO public.occupants VALUES (4, 12, 'Joseph', 4);
INSERT INTO public.occupants VALUES (5, 10, 'Kyle', 4);
INSERT INTO public.occupants VALUES (6, 7, 'Kelly', 7);
INSERT INTO public.occupants VALUES (7, 8, 'Robert', 2);
INSERT INTO public.occupants VALUES (8, 2, 'Patricia', 3);
INSERT INTO public.occupants VALUES (9, 2, 'Kathy', 4);
INSERT INTO public.occupants VALUES (10, 8, 'Ashley', 2);
INSERT INTO public.occupants VALUES (11, 12, 'Jonathan', 8);
INSERT INTO public.occupants VALUES (12, 12, 'Kim', 9);
INSERT INTO public.occupants VALUES (13, 10, 'Dylan', 6);
INSERT INTO public.occupants VALUES (14, 2, 'Donald', 7);
INSERT INTO public.occupants VALUES (15, 2, 'David', 10);
INSERT INTO public.occupants VALUES (16, 1, 'Michael', 3);
INSERT INTO public.occupants VALUES (17, 1, 'Jeffrey', 2);
INSERT INTO public.occupants VALUES (18, 7, 'Jennifer', 3);
INSERT INTO public.occupants VALUES (19, 7, 'Haley', 4);
INSERT INTO public.occupants VALUES (20, 8, 'John', 10);
INSERT INTO public.occupants VALUES (21, 11, 'Rebecca', 4);
INSERT INTO public.occupants VALUES (22, 7, 'Jasmine', 4);
INSERT INTO public.occupants VALUES (23, 3, 'Nicole', 10);
INSERT INTO public.occupants VALUES (24, 5, 'Tyler', 7);
INSERT INTO public.occupants VALUES (25, 9, 'Dean', 8);
INSERT INTO public.occupants VALUES (26, 8, 'Tiffany', 8);
INSERT INTO public.occupants VALUES (27, 5, 'Shawn', 1);
INSERT INTO public.occupants VALUES (28, 5, 'Nancy', 10);
INSERT INTO public.occupants VALUES (29, 9, 'Kevin', 1);
INSERT INTO public.occupants VALUES (30, 10, 'Katherine', 3);
INSERT INTO public.occupants VALUES (31, 6, 'Collin', 8);
INSERT INTO public.occupants VALUES (32, 6, 'Gina', 2);
INSERT INTO public.occupants VALUES (33, 2, 'Steven', 1);
INSERT INTO public.occupants VALUES (34, 5, 'Jason', 2);
INSERT INTO public.occupants VALUES (35, 7, 'Dennis', 3);
INSERT INTO public.occupants VALUES (36, 11, 'Joshua', 8);
INSERT INTO public.occupants VALUES (37, 1, 'Tina', 1);
INSERT INTO public.occupants VALUES (38, 1, 'Manuel', 6);
INSERT INTO public.occupants VALUES (39, 12, 'Miguel', 9);
INSERT INTO public.occupants VALUES (40, 10, 'Susan', 4);
INSERT INTO public.occupants VALUES (41, 6, 'Courtney', 5);
INSERT INTO public.occupants VALUES (42, 4, 'Sara', 10);
INSERT INTO public.occupants VALUES (43, 5, 'Faith', 1);
INSERT INTO public.occupants VALUES (44, 11, 'Sierra', 5);
INSERT INTO public.occupants VALUES (45, 10, 'Traci', 7);
INSERT INTO public.occupants VALUES (46, 5, 'Kathryn', 10);
INSERT INTO public.occupants VALUES (47, 4, 'Laura', 7);
INSERT INTO public.occupants VALUES (48, 5, 'Linda', 6);
INSERT INTO public.occupants VALUES (49, 6, 'Cathy', 8);
INSERT INTO public.occupants VALUES (50, 7, 'Thomas', 10);
INSERT INTO public.occupants VALUES (51, 4, 'Alexander', 9);
INSERT INTO public.occupants VALUES (52, 8, 'Nathan', 8);
INSERT INTO public.occupants VALUES (53, 9, 'Jeremy', 3);
INSERT INTO public.occupants VALUES (54, 8, 'Christine', 4);
INSERT INTO public.occupants VALUES (55, 7, 'Tracy', 6);
INSERT INTO public.occupants VALUES (56, 3, 'Emily', 4);
INSERT INTO public.occupants VALUES (57, 1, 'Leonard', 1);
INSERT INTO public.occupants VALUES (58, 7, 'Jacob', 1);
INSERT INTO public.occupants VALUES (59, 12, 'Gwendolyn', 8);
INSERT INTO public.occupants VALUES (60, 10, 'Samantha', 10);
INSERT INTO public.occupants VALUES (61, 10, 'Randy', 4);
INSERT INTO public.occupants VALUES (62, 12, 'William', 6);
INSERT INTO public.occupants VALUES (63, 4, 'Mary', 2);
INSERT INTO public.occupants VALUES (64, 3, 'Angela', 1);
INSERT INTO public.occupants VALUES (65, 7, 'Joanna', 7);
INSERT INTO public.occupants VALUES (66, 2, 'Margaret', 10);
INSERT INTO public.occupants VALUES (67, 3, 'Janet', 8);
INSERT INTO public.occupants VALUES (68, 7, 'Cindy', 6);
INSERT INTO public.occupants VALUES (69, 4, 'Nicholas', 6);
INSERT INTO public.occupants VALUES (70, 10, 'Sarah', 4);
INSERT INTO public.occupants VALUES (71, 6, 'Danielle', 5);
INSERT INTO public.occupants VALUES (72, 4, 'Michelle', 1);
INSERT INTO public.occupants VALUES (73, 7, 'Matthew', 1);
INSERT INTO public.occupants VALUES (74, 1, 'Scott', 8);
INSERT INTO public.occupants VALUES (75, 1, 'Julie', 2);
INSERT INTO public.occupants VALUES (76, 4, 'Christopher', 1);
INSERT INTO public.occupants VALUES (77, 7, 'Melanie', 8);
INSERT INTO public.occupants VALUES (78, 9, 'Dustin', 1);
INSERT INTO public.occupants VALUES (79, 12, 'Stephanie', 1);
INSERT INTO public.occupants VALUES (80, 2, 'Samuel', 2);
INSERT INTO public.occupants VALUES (81, 3, 'Jeff', 2);
INSERT INTO public.occupants VALUES (82, 5, 'Donna', 9);
INSERT INTO public.occupants VALUES (83, 6, 'James', 3);
INSERT INTO public.occupants VALUES (84, 9, 'Kristopher', 5);
INSERT INTO public.occupants VALUES (85, 2, 'Carlos', 7);
INSERT INTO public.occupants VALUES (86, 6, 'Juan', 9);
INSERT INTO public.occupants VALUES (87, 10, 'Lori', 2);
INSERT INTO public.occupants VALUES (88, 12, 'Randall', 1);
INSERT INTO public.occupants VALUES (89, 6, 'Karen', 2);
INSERT INTO public.occupants VALUES (90, 3, 'Timothy', 4);
INSERT INTO public.occupants VALUES (91, 7, 'Chad', 6);
INSERT INTO public.occupants VALUES (92, 8, 'Jessica', 9);
INSERT INTO public.occupants VALUES (93, 1, 'Alicia', 5);
INSERT INTO public.occupants VALUES (94, 5, 'Justin', 8);
INSERT INTO public.occupants VALUES (95, 4, 'Antonio', 2);
INSERT INTO public.occupants VALUES (96, 2, 'Adam', 1);
INSERT INTO public.occupants VALUES (97, 8, 'Alex', 6);
INSERT INTO public.occupants VALUES (98, 2, 'Lauren', 6);
INSERT INTO public.occupants VALUES (99, 10, 'Brandy', 9);
INSERT INTO public.occupants VALUES (100, 6, 'Amber', 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'James', 6, 'Common too it drop investment.', true, 3);
INSERT INTO public.planet VALUES (2, 'Kimberly', 5, 'Hold staff alone human center three.', false, 1);
INSERT INTO public.planet VALUES (3, 'Rodney', 5, 'Away side statement white situation.', false, 1);
INSERT INTO public.planet VALUES (4, 'Diana', 2, 'Team summer another popular book.', false, 2);
INSERT INTO public.planet VALUES (5, 'Matthew', 1, 'Me every spend catch.', true, 3);
INSERT INTO public.planet VALUES (6, 'Zachary', 2, 'Nothing most old decade rate.', false, 2);
INSERT INTO public.planet VALUES (7, 'Jason', 5, 'Miss for listen local technology crime.', true, 2);
INSERT INTO public.planet VALUES (8, 'Brian', 6, 'Than hundred same car throughout.', true, 4);
INSERT INTO public.planet VALUES (9, 'Elizabeth', 2, 'Avoid Congress miss feel.', false, 1);
INSERT INTO public.planet VALUES (10, 'Ashley', 1, 'Wall clearly fall series.', false, 2);
INSERT INTO public.planet VALUES (11, 'Tiffany', 5, 'Yard natural moment attorney key.', true, 4);
INSERT INTO public.planet VALUES (12, 'Robert', 1, 'Middle send high rise message manage.', true, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Adrian', 2, 'Bed note up tree.', 7742, 36845.99);
INSERT INTO public.star VALUES (2, 'Philip', 1, 'Interview many maybe environment.', 619, 69522.64);
INSERT INTO public.star VALUES (3, 'Lori', 3, 'Fine score that.', 2196, 15993.55);
INSERT INTO public.star VALUES (4, 'Michael', 3, 'Walk degree loss.', 6753, 49637.30);
INSERT INTO public.star VALUES (5, 'Ian', 3, 'Cell car generation despite.', 6436, 20745.33);
INSERT INTO public.star VALUES (6, 'Nancy', 6, 'Reveal money program name change call.', 3813, 12273.13);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: occupants_occupants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.occupants_occupants_id_seq', 100, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: occupants occupants_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.occupants
    ADD CONSTRAINT occupants_name_key UNIQUE (name);


--
-- Name: occupants occupants_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.occupants
    ADD CONSTRAINT occupants_pkey PRIMARY KEY (occupants_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: occupants occupants_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.occupants
    ADD CONSTRAINT occupants_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

