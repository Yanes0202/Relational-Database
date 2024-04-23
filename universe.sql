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
    exist boolean,
    description text,
    constelation character varying(30),
    uniqe character varying(10)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    planet_id integer NOT NULL,
    exist boolean,
    uniqe character varying(10)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: others; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.others (
    others_id integer NOT NULL,
    name character varying(30) NOT NULL,
    exist boolean,
    uniqe character varying(10)
);


ALTER TABLE public.others OWNER TO freecodecamp;

--
-- Name: others_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.others_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.others_id_seq OWNER TO freecodecamp;

--
-- Name: others_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.others_id_seq OWNED BY public.others.others_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    rings integer,
    atmosphere integer,
    populated boolean,
    star_id integer NOT NULL,
    exist boolean,
    uniqe character varying(10)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    temperature numeric(1000,2) NOT NULL,
    exist boolean,
    galaxy_id integer,
    uniqe character varying(10)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: others others_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.others ALTER COLUMN others_id SET DEFAULT nextval('public.others_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milk Road', true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Backward', true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Bear Paw', true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Black Eye', true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Cigar', true, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Księżyc', 'Jest to jedyny naturalny satelita Ziemi.', 3, true, NULL);
INSERT INTO public.moon VALUES (2, 'Fobos', 'Jeden z dwóch naturalnych satelitów Marsa.', 4, true, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Jeden z dwóch naturalnych satelitów Marsa.', 4, true, NULL);
INSERT INTO public.moon VALUES (4, 'Io', 'Jeden z czterech wielkich księżyców Jowisza.', 5, true, NULL);
INSERT INTO public.moon VALUES (5, 'Europa', 'Jeden z czterech wielkich księżyców Jowisza.', 5, true, NULL);
INSERT INTO public.moon VALUES (6, 'Ganimedes', 'Jeden z czterech wielkich księżyców Jowisza.', 5, true, NULL);
INSERT INTO public.moon VALUES (7, 'Kalisto', 'Jeden z czterech wielkich księżyców Jowisza.', 5, true, NULL);
INSERT INTO public.moon VALUES (8, 'Mimas', 'Jeden z najmniejszych księżyców Saturna.', 6, true, NULL);
INSERT INTO public.moon VALUES (9, 'Enceladus', 'Jeden z księżyców Saturna z lodowym pokryciem.', 6, true, NULL);
INSERT INTO public.moon VALUES (10, 'Tytan', 'Jeden z największych księżyców Saturna.', 6, true, NULL);
INSERT INTO public.moon VALUES (11, 'Miranda', 'Jeden z księżyców Urana.', 7, true, NULL);
INSERT INTO public.moon VALUES (12, 'Ariel', 'Jeden z księżyców Urana.', 7, true, NULL);
INSERT INTO public.moon VALUES (13, 'Umbriel', 'Jeden z księżyców Urana.', 7, true, NULL);
INSERT INTO public.moon VALUES (14, 'Triton', 'Największy księżyc Neptuna.', 8, true, NULL);
INSERT INTO public.moon VALUES (15, 'Nereida', 'Jeden z księżyców Neptuna.', 8, true, NULL);
INSERT INTO public.moon VALUES (16, 'Pluton', 'Jeden z księżyców Plutona.', 9, true, NULL);
INSERT INTO public.moon VALUES (17, 'Charon', 'Największy księżyc Plutona.', 9, true, NULL);
INSERT INTO public.moon VALUES (18, 'Dysnomia', 'Księżyc Erisa.', 10, true, NULL);
INSERT INTO public.moon VALUES (19, 'Dactyl', 'Księżyc Ceresa.', 11, true, NULL);
INSERT INTO public.moon VALUES (20, 'Amaltea', 'Jeden z księżyców Jowisza.', 5, true, NULL);


--
-- Data for Name: others; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.others VALUES (1, 'x', true, NULL);
INSERT INTO public.others VALUES (2, 'y', true, NULL);
INSERT INTO public.others VALUES (3, 'z', false, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Merkury', 0, 0, false, 1, true, NULL);
INSERT INTO public.planet VALUES (2, 'Wenus', 0, 1, false, 1, true, NULL);
INSERT INTO public.planet VALUES (3, 'Ziemia', 0, 1, true, 1, true, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 0, 0, false, 1, true, NULL);
INSERT INTO public.planet VALUES (5, 'Jowisz', 1, 1, false, 1, true, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 0, false, 1, true, NULL);
INSERT INTO public.planet VALUES (7, 'Uran', 1, 0, false, 1, true, NULL);
INSERT INTO public.planet VALUES (8, 'Neptun', 1, 1, false, 1, true, NULL);
INSERT INTO public.planet VALUES (9, 'Pluton', 0, 0, false, 1, true, NULL);
INSERT INTO public.planet VALUES (10, 'Eris', 0, 0, false, 1, true, NULL);
INSERT INTO public.planet VALUES (11, 'Ceres', 0, 0, false, 1, true, NULL);
INSERT INTO public.planet VALUES (12, 'Haumea', 1, 0, false, 1, true, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1000.00, true, 1, NULL);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 3042.00, true, 1, NULL);
INSERT INTO public.star VALUES (3, 'Sirius', 9940.00, true, 1, NULL);
INSERT INTO public.star VALUES (4, 'Alpha Centauri', 5790.00, true, 1, NULL);
INSERT INTO public.star VALUES (5, 'Betelgeza', 3500.00, true, 1, NULL);
INSERT INTO public.star VALUES (6, 'Alfa Ursae Minoris', 5810.00, true, 1, NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: others_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.others_id_seq', 3, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_uniqe_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_uniqe_key UNIQUE (uniqe);


--
-- Name: moon moon_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_uniqe_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_uniqe_key UNIQUE (uniqe);


--
-- Name: moon moon_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique_name UNIQUE (name);


--
-- Name: others others_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.others
    ADD CONSTRAINT others_pkey PRIMARY KEY (others_id);


--
-- Name: others others_uniqe_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.others
    ADD CONSTRAINT others_uniqe_key UNIQUE (uniqe);


--
-- Name: planet planet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_uniqe_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_uniqe_key UNIQUE (uniqe);


--
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_uniqe_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_uniqe_key UNIQUE (uniqe);


--
-- Name: star unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

