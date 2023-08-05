--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_million_of_years integer,
    distance_from_earth integer,
    mass numeric(20,4),
    description text,
    has_life boolean,
    is_spherical boolean
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_id integer NOT NULL,
    name character varying(30),
    galaxy_types_id integer NOT NULL
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_type_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_million_of_years integer,
    distance_from_earth integer,
    mass numeric(20,4),
    description text,
    has_life boolean,
    is_spherical boolean,
    planet_id integer
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_million_of_years integer,
    distance_from_earth integer,
    mass numeric(20,4),
    decription text,
    has_life boolean,
    is_spherical boolean,
    star_id integer
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_id integer NOT NULL,
    name character varying(30),
    planet_types_id integer NOT NULL
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_type_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_type_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_million_of_years integer,
    distance_from_earth integer,
    mass numeric(20,4),
    description text,
    has_life boolean,
    is_spherical boolean,
    galaxy_id integer
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
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_type_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_planet_type_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 2200, 2500000, 1250000000.0000, 'Spiral galaxy located in the Local Group.', true, true);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 13000, 0, 856000000.0000, 'Home to the Solar System and Earth.', true, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 500, 3000000, 275000000.0000, 'Small galaxy part of the Local Group.', false, false);
INSERT INTO public.galaxy VALUES (4, 'Centaurus A', 12000, 11000000, 20100000.0000, 'Elliptical galaxy with active galactic nucleus.', false, false);
INSERT INTO public.galaxy VALUES (5, 'Messier 87', 6200, 53000000, 598000000000.0000, 'Giant elliptical galaxy in the Virgo Cluster.', false, true);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 9000, 29000000, 185000000.0000, 'Spiral galaxy with a distinct nucleus.', false, true);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'Spiral Galaxy', 1);
INSERT INTO public.galaxy_types VALUES (2, 'Elliptical Galaxy', 2);
INSERT INTO public.galaxy_types VALUES (3, 'Irregular Galaxy', 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 4500, 384400, 7.3420, 'The Earths natural satellite.', false, true, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 4000, 9376, 1.0659, 'The larger moon of Mars.', false, false, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 4000, 23460, 0.2072, 'The smaller moon of Mars.', false, false, 2);
INSERT INTO public.moon VALUES (4, 'Ganymede', 4000, 1070400, 14819.0000, 'The largest moon of Jupiter.', false, false, 4);
INSERT INTO public.moon VALUES (5, 'Europa', 4000, 671034, 48.0000, 'A moon of Jupiter with a possible subsurface ocean.', false, false, 4);
INSERT INTO public.moon VALUES (6, 'Io', 4000, 421800, 89.3200, 'The innermost moon of Jupiter.', false, false, 4);
INSERT INTO public.moon VALUES (7, 'Titan', 4000, 1221870, 13455.3000, 'The largest moon of Saturn with a thick atmosphere.', false, false, 5);
INSERT INTO public.moon VALUES (8, 'Enceladus', 4000, 237948, 1.0800, 'A moon of Saturn with ice geysers.', false, false, 5);
INSERT INTO public.moon VALUES (9, 'Triton', 4000, 354759, 214.2000, 'The largest moon of Neptune.', false, false, 6);
INSERT INTO public.moon VALUES (10, 'Charon', 4000, 17559, 1.5860, 'The largest moon of Pluto.', false, false, 9);
INSERT INTO public.moon VALUES (11, 'Phoebe', 4000, 12869700, 8.2920, 'A moon of Saturn with irregular orbit.', false, false, 5);
INSERT INTO public.moon VALUES (12, 'Miranda', 4000, 129390, 0.6590, 'A moon of Uranus with varied terrain.', false, false, 7);
INSERT INTO public.moon VALUES (13, 'Oberon', 4000, 583520, 30.1400, 'A moon of Uranus with a heavily cratered surface.', false, false, 7);
INSERT INTO public.moon VALUES (14, 'Rhea', 4000, 527040, 230.3000, 'A moon of Saturn with a bright surface.', false, false, 5);
INSERT INTO public.moon VALUES (15, 'Ariel', 4000, 191240, 13.5300, 'A moon of Uranus with a relatively young surface.', false, false, 7);
INSERT INTO public.moon VALUES (16, 'Umbriel', 4000, 266300, 16.5100, 'A moon of Uranus with a heavily cratered surface.', false, false, 7);
INSERT INTO public.moon VALUES (17, 'Titania', 4000, 435840, 35.2700, 'A moon of Uranus with a diverse terrain.', false, false, 7);
INSERT INTO public.moon VALUES (18, 'Dione', 4000, 377420, 109.5400, 'A moon of Saturn with bright ice cliffs.', false, false, 5);
INSERT INTO public.moon VALUES (19, 'Hyperion', 4000, 1481100, 5.6200, 'An irregular moon of Saturn with a sponge-like appearance.', false, false, 5);
INSERT INTO public.moon VALUES (20, 'Iapetus', 4000, 3561300, 180.2000, 'A moon of Saturn with a two-tone appearance.', false, false, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4500, 1, 5972.0000, 'Earth is our home planet...', true, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 4000, 1, 641.7000, 'Mars is the fourth planet...', false, true, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 5000, 2, 4868.0000, 'Venus is the second planet...', false, true, 6);
INSERT INTO public.planet VALUES (4, 'Jupiter', 10000, 5, 1898.2000, 'Jupiter is the largest planet...', false, false, 2);
INSERT INTO public.planet VALUES (5, 'Saturn', 9500, 9, 5683.4000, 'Saturn is known for its rings...', false, false, 2);
INSERT INTO public.planet VALUES (6, 'Neptune', 7000, 30, 1024.3000, 'Neptune is the eighth planet...', false, true, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 7500, 20, 868.1000, 'Uranus is a gas giant planet...', false, true, 6);
INSERT INTO public.planet VALUES (8, 'Mercury', 4300, 0, 330.1100, 'Mercury is the smallest planet...', false, true, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 6000, 39, 13.0000, 'Pluto is a dwarf planet...', false, true, 5);
INSERT INTO public.planet VALUES (10, 'Kepler-452b', 1100, 1400, 1650.0000, 'Kepler-452b is an exoplanet...', true, false, 3);
INSERT INTO public.planet VALUES (11, 'HD 209458 b', 250, 153, 1250.0000, 'HD 209458 b is a hot Jupiter...', false, false, 2);
INSERT INTO public.planet VALUES (12, 'Gliese 581 c', 800, 20, 51.1900, 'Gliese 581 c is a potentially habitable planet...', true, true, 1);
INSERT INTO public.planet VALUES (13, 'Kepler-22b', 1200, 1000, 2500.0000, 'Kepler-22b is an exoplanet...', true, false, 3);
INSERT INTO public.planet VALUES (14, 'Gliese 581 d', 900, 15, 75.0000, 'Gliese 581 d is a potentially habitable planet...', true, true, 1);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Terrestrial Planet', 1);
INSERT INTO public.planet_types VALUES (2, 'Gas Giant Planet', 2);
INSERT INTO public.planet_types VALUES (3, 'Ice Giant Planet', 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600, 0, 198900000.0000, 'The closest star to Earth.', true, false, 2);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 4500, 402000000, 0.2448, 'A red dwarf star in the Alpha Centauri system.', false, true, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 8000, 643, 1.4000, 'A red supergiant star in the Orion constellation.', false, false, 2);
INSERT INTO public.star VALUES (4, 'Vega', 455, 25, 2.1350, 'A bright star in the Lyra constellation.', true, false, 2);
INSERT INTO public.star VALUES (5, 'Sirius', 250, 8, 1.9890, 'The brightest star in the night sky.', true, false, 1);
INSERT INTO public.star VALUES (6, 'Alpha Centauri A', 6000, 402000000, 2.1800, 'A main-sequence star in the Alpha Centauri system.', false, false, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_type_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_type_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy_types galaxy_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_id_unique UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_types galaxy_type_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_type_pk PRIMARY KEY (galaxy_types_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: galaxy name_galaxy_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_galaxy_unique UNIQUE (name);


--
-- Name: moon name_moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT name_moon_unique UNIQUE (name);


--
-- Name: planet name_planet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name_planet_unique UNIQUE (name);


--
-- Name: star name_star_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name_star_unique UNIQUE (name);


--
-- Name: planet_types planet_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_id_unique UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet_types planet_type_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_type_pk PRIMARY KEY (planet_types_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy_types galaxy_types_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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
-- Name: planet_types planet_types_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

