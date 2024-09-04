--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    name character varying(30) NOT NULL,
    comet_id integer NOT NULL,
    comet_size integer
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    spiral text,
    size_light_years integer,
    number_of_star_in_billion integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer,
    distance_from_earth integer,
    size integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    star_id integer,
    planet_size_mi integer,
    definition text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    temperature numeric(4,1),
    in_spiral_galaxy boolean,
    in_a_milki_way boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES ('Chiron', 1, 2030);
INSERT INTO public.comet VALUES ('Encke Comet', 2, 2222);
INSERT INTO public.comet VALUES ('Comet Hale-Bopp', 3, 3324);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milki Way', 1, 'true', 100000, 150);
INSERT INTO public.galaxy VALUES ('Andromeda', 2, 'true', 2000500, 1000000);
INSERT INTO public.galaxy VALUES ('Cigar Galaxy', 3, 'false', 12000000, 30);
INSERT INTO public.galaxy VALUES ('Black Eye', 4, 'true', 17000000, 100);
INSERT INTO public.galaxy VALUES ('Cartwheel Galaxy', 5, 'false', 500, 100);
INSERT INTO public.galaxy VALUES ('Pinwheel', 6, 'true', 21000000, 1000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 1, 1, 384400, 1079);
INSERT INTO public.moon VALUES ('Ganiymede', 2, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('Callisto', 3, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('Jupiter LI', 4, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('Europa', 5, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('Thebe', 6, 5, 45000, NULL);
INSERT INTO public.moon VALUES ('S/20', 7, 5, 47000, NULL);
INSERT INTO public.moon VALUES ('Io', 8, 5, 54666, NULL);
INSERT INTO public.moon VALUES ('Triton', 9, 4, NULL, NULL);
INSERT INTO public.moon VALUES ('Nreid', 10, 4, NULL, NULL);
INSERT INTO public.moon VALUES ('Charon', 11, 3, NULL, NULL);
INSERT INTO public.moon VALUES ('Deimos', 12, 6, NULL, NULL);
INSERT INTO public.moon VALUES ('Phobos', 13, 6, NULL, NULL);
INSERT INTO public.moon VALUES ('Dione', 14, 2, NULL, NULL);
INSERT INTO public.moon VALUES ('Enceladus', 15, 2, NULL, NULL);
INSERT INTO public.moon VALUES ('Temadus', 16, 2, NULL, NULL);
INSERT INTO public.moon VALUES ('Rhea', 17, 3, NULL, NULL);
INSERT INTO public.moon VALUES ('Titan', 18, 4, NULL, NULL);
INSERT INTO public.moon VALUES ('Nefrid', 19, 4, NULL, NULL);
INSERT INTO public.moon VALUES ('Charuman', 20, 3, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 1, 1, 3958, 'Has life');
INSERT INTO public.planet VALUES ('Mercury', 2, 8, 1516, 'Has no life');
INSERT INTO public.planet VALUES ('Pluto', 3, 8, 738, 'Has no life');
INSERT INTO public.planet VALUES ('Venus', 4, 8, 3860, 'Has no life');
INSERT INTO public.planet VALUES ('Jupiter', 5, 8, 43441, 'Has no life');
INSERT INTO public.planet VALUES ('Mars', 6, 8, 2106, 'Has no life');
INSERT INTO public.planet VALUES ('C_planet', 7, 2, 2344, 'Has no life but not explored yet');
INSERT INTO public.planet VALUES ('B_planet', 8, 2, 1244, 'Has no life but not explored yet');
INSERT INTO public.planet VALUES ('T_planet', 9, 2, 2344, 'Has no life but not explored yet');
INSERT INTO public.planet VALUES ('Q_planet', 10, 5, 5344, 'Has no life but not explored yet');
INSERT INTO public.planet VALUES ('Z_planet', 11, 5, 3344, 'Has no life');
INSERT INTO public.planet VALUES ('O_planet', 12, 6, 1876, 'Has no life');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Alpheratz', 1, 13.0, true, false, 2);
INSERT INTO public.star VALUES ('Hercules', 2, 15.0, true, false, 4);
INSERT INTO public.star VALUES ('Capella', 3, 10.0, false, false, 3);
INSERT INTO public.star VALUES ('Mirach', 4, 3.8, true, false, 2);
INSERT INTO public.star VALUES ('Regulus', 5, 1.4, true, true, 1);
INSERT INTO public.star VALUES ('R Monocerotis', 6, 9.5, true, true, 1);
INSERT INTO public.star VALUES ('Rigel', 7, 12.5, true, true, 1);
INSERT INTO public.star VALUES ('Sun', 8, 5.8, true, true, 1);


--
-- Name: comet comets_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comets_name_key UNIQUE (name);


--
-- Name: comet comets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comets_pkey PRIMARY KEY (comet_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


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
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


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
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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
-- Name: star star_galaxy_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey1 FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

