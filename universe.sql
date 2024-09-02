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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size numeric(7,2),
    description text,
    is_travelable boolean,
    has_blackhole boolean
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
    name character varying(30) NOT NULL,
    planet_id integer,
    size numeric(7,2),
    description text,
    has_darkside boolean,
    is_livable boolean
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
    star_id integer,
    size numeric(7,2),
    description text,
    is_livable boolean,
    is_friendly boolean
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
-- Name: space_ships; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_ships (
    space_ships_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size numeric(7,2),
    description text,
    has_teleport boolean,
    is_operating boolean
);


ALTER TABLE public.space_ships OWNER TO freecodecamp;

--
-- Name: space_ships_space_ships_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_ships_space_ships_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_ships_space_ships_id_seq OWNER TO freecodecamp;

--
-- Name: space_ships_space_ships_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_ships_space_ships_id_seq OWNED BY public.space_ships.space_ships_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    size numeric(7,2),
    description text,
    is_powerful_enough boolean,
    is_bright_enough boolean
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
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: space_ships space_ships_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_ships ALTER COLUMN space_ships_id SET DEFAULT nextval('public.space_ships_space_ships_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 5.10, 'we are galaxy 1', false, false);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 5.10, 'we are galaxy 2', false, false);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 5.10, 'we are galaxy 3', false, false);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 5.10, 'we are galaxy 4', false, false);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 5.10, 'we are galaxy 5', false, false);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 5.10, 'we are galaxy 6', false, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 1, 7.10, 'we are moon 1', false, true);
INSERT INTO public.moon VALUES (2, 'moon2', 1, 7.10, 'we are moon 2', false, true);
INSERT INTO public.moon VALUES (3, 'moon3', 2, 7.10, 'we are moon 3', false, true);
INSERT INTO public.moon VALUES (4, 'moon4', 2, 7.10, 'we are moon 4', false, true);
INSERT INTO public.moon VALUES (5, 'moon5', 3, 7.10, 'we are moon 5', false, true);
INSERT INTO public.moon VALUES (6, 'moon6', 3, 7.10, 'we are moon 6', false, true);
INSERT INTO public.moon VALUES (7, 'moon7', 1, 7.10, 'we are moon 7', false, true);
INSERT INTO public.moon VALUES (8, 'moon8', 1, 7.10, 'we are moon 8', false, true);
INSERT INTO public.moon VALUES (9, 'moon9', 2, 7.10, 'we are moon 9', false, true);
INSERT INTO public.moon VALUES (10, 'moon10', 2, 7.10, 'we are moon 10', false, true);
INSERT INTO public.moon VALUES (11, 'moon11', 3, 7.10, 'we are moon 11', false, true);
INSERT INTO public.moon VALUES (12, 'moon12', 3, 7.10, 'we are moon 12', false, true);
INSERT INTO public.moon VALUES (13, 'moon13', 3, 7.10, 'we are moon 13', false, true);
INSERT INTO public.moon VALUES (14, 'moon14', 3, 7.10, 'we are moon 14', false, true);
INSERT INTO public.moon VALUES (15, 'moon15', 3, 7.10, 'we are moon 15', false, true);
INSERT INTO public.moon VALUES (16, 'moon16', 3, 7.10, 'we are moon 16', false, true);
INSERT INTO public.moon VALUES (17, 'moon17', 3, 7.10, 'we are moon 17', false, true);
INSERT INTO public.moon VALUES (18, 'moon18', 3, 7.10, 'we are moon 18', false, true);
INSERT INTO public.moon VALUES (19, 'moon19', 3, 7.10, 'we are moon 19', false, true);
INSERT INTO public.moon VALUES (20, 'moon20', 3, 7.10, 'we are moon 20', false, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 1, 7.10, 'we are planet 1', false, true);
INSERT INTO public.planet VALUES (2, 'planet2', 1, 7.10, 'we are planet 2', false, true);
INSERT INTO public.planet VALUES (3, 'planet3', 2, 7.10, 'we are planet 3', false, true);
INSERT INTO public.planet VALUES (4, 'planet4', 2, 7.10, 'we are planet 4', false, true);
INSERT INTO public.planet VALUES (5, 'planet5', 3, 7.10, 'we are planet 5', false, true);
INSERT INTO public.planet VALUES (6, 'planet6', 3, 7.10, 'we are planet 6', false, true);
INSERT INTO public.planet VALUES (7, 'planet7', 1, 7.10, 'we are planet 1', false, true);
INSERT INTO public.planet VALUES (8, 'planet8', 1, 7.10, 'we are planet 2', false, true);
INSERT INTO public.planet VALUES (9, 'planet9', 2, 7.10, 'we are planet 3', false, true);
INSERT INTO public.planet VALUES (10, 'planet10', 2, 7.10, 'we are planet 4', false, true);
INSERT INTO public.planet VALUES (11, 'planet11', 3, 7.10, 'we are planet 5', false, true);
INSERT INTO public.planet VALUES (12, 'planet12', 3, 7.10, 'we are planet 6', false, true);


--
-- Data for Name: space_ships; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 1, 6.10, 'we are star 1', false, false);
INSERT INTO public.star VALUES (2, 'star2', 1, 6.10, 'we are star 2', false, false);
INSERT INTO public.star VALUES (3, 'star3', 2, 6.10, 'we are star 3', false, false);
INSERT INTO public.star VALUES (4, 'star4', 2, 6.10, 'we are star 4', false, false);
INSERT INTO public.star VALUES (5, 'star5', 3, 6.10, 'we are star 5', false, false);
INSERT INTO public.star VALUES (6, 'star6', 3, 6.10, 'we are star 6', false, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: space_ships_space_ships_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_ships_space_ships_id_seq', 5, true);


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
-- Name: space_ships space_ships_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_ships
    ADD CONSTRAINT space_ships_name_key UNIQUE (name);


--
-- Name: space_ships space_ships_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_ships
    ADD CONSTRAINT space_ships_pkey PRIMARY KEY (space_ships_id);


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
-- Name: planet planet_star_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

