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
    name character varying(20) NOT NULL,
    description text NOT NULL,
    galaxy_types text NOT NULL,
    has_life boolean
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
    distance_from_earth numeric(5,3),
    name character varying(20) NOT NULL,
    description text,
    planet_id integer NOT NULL
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
    age_in_millions_of_age integer,
    columnhas_life boolean,
    is_spherical boolean,
    name character varying(20) NOT NULL,
    star_id integer NOT NULL
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
-- Name: planeta_enano; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planeta_enano (
    planeta_enano_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text
);


ALTER TABLE public.planeta_enano OWNER TO freecodecamp;

--
-- Name: planeta_enano_planeta_enano_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planeta_enano_planeta_enano_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planeta_enano_planeta_enano_id_seq OWNER TO freecodecamp;

--
-- Name: planeta_enano_planeta_enano_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planeta_enano_planeta_enano_id_seq OWNED BY public.planeta_enano.planeta_enano_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    distance_from_earth integer,
    name character varying(20) NOT NULL,
    galaxy_id integer NOT NULL,
    description text
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
-- Name: planeta_enano planeta_enano_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planeta_enano ALTER COLUMN planeta_enano_id SET DEFAULT nextval('public.planeta_enano_planeta_enano_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'VIA LACTEA', 'Tiene al conocido sistema solar', 'IRREGULAR', true);
INSERT INTO public.galaxy VALUES (2, 'NGC 6753', 'TieneUnica de las galaxias espirales conocidas', 'ESPIRAL', true);
INSERT INTO public.galaxy VALUES (3, 'PALO de HOCKEY', 'TieEsta ubicada en la constalacion de Cane de Venatice', 'IRREGULAR', false);
INSERT INTO public.galaxy VALUES (4, 'GRAN NUBE MAGALLANES', 'Fernando Magallanes descubrio la galaxia', 'ENANA', false);
INSERT INTO public.galaxy VALUES (5, 'NFC 2500', 'Ubicada en la constelacion septentrional de Lynx', 'ESPIRAL BARRADA', false);
INSERT INTO public.galaxy VALUES (6, 'ANDROMEDA', 'Es la galaxia gigante mas cercana', 'GIGANTE', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 12.432, 'LUNA', 'La luna mas conocida', 1);
INSERT INTO public.moon VALUES (2, 14.120, 'FOBOS', 'Una lunaa de Marte', 2);
INSERT INTO public.moon VALUES (3, 13.342, 'DAMEUS', 'Segundo planeta de marte', 2);
INSERT INTO public.moon VALUES (4, 19.977, 'TITANIA', 'Nada Intereante', 8);
INSERT INTO public.moon VALUES (5, 87.324, 'UMBRIEL', 'Segundo planeta URANO', 8);
INSERT INTO public.moon VALUES (6, 87.324, 'OBERON', 'TERCER planeta URANO', 8);
INSERT INTO public.moon VALUES (7, 87.324, 'ARIEL', '4 planeta URANO', 8);
INSERT INTO public.moon VALUES (8, 87.324, 'MIRANDA', '5 planeta URANO', 8);
INSERT INTO public.moon VALUES (9, 85.324, 'PUCK', '6 planeta URANO', 8);
INSERT INTO public.moon VALUES (10, 85.324, 'CRECIDA', '7 planeta URANO', 8);
INSERT INTO public.moon VALUES (11, 23.372, 'TRITON', '1 planeta Neptuno', 7);
INSERT INTO public.moon VALUES (12, 23.372, 'HIPOCAMPO', '2 planeta Neptuno', 7);
INSERT INTO public.moon VALUES (13, 23.372, 'TALASA', '3 planeta Neptuno', 7);
INSERT INTO public.moon VALUES (14, 23.372, 'NAYADE', '4 planeta Neptuno', 7);
INSERT INTO public.moon VALUES (15, 23.372, 'NEREIDA', '5 planeta Neptuno', 7);
INSERT INTO public.moon VALUES (16, 56.372, 'EUROPA', '1 planeta Jupiter', 5);
INSERT INTO public.moon VALUES (17, 56.372, 'GANIMEDES', '2 planeta Jupiter', 5);
INSERT INTO public.moon VALUES (18, 45.564, 'IO', '3 planeta de Jupiter', 5);
INSERT INTO public.moon VALUES (19, 45.564, 'CALISTO', '4 planeta de Jupiter', 5);
INSERT INTO public.moon VALUES (20, 45.564, 'AMALTEA', '6 planeta de Jupiter', 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 120000, true, true, 'TIERRA', 4);
INSERT INTO public.planet VALUES (2, 120000, true, true, 'MARTE', 4);
INSERT INTO public.planet VALUES (3, 120000, true, false, 'MERCURIO', 4);
INSERT INTO public.planet VALUES (4, 120000, true, false, 'VENUS', 4);
INSERT INTO public.planet VALUES (5, 120000, true, false, 'JUPITER', 4);
INSERT INTO public.planet VALUES (6, 120000, true, false, 'SATURNO', 4);
INSERT INTO public.planet VALUES (7, 120000, true, false, 'NEPTUNO', 4);
INSERT INTO public.planet VALUES (8, 120000, true, false, 'URANO', 4);
INSERT INTO public.planet VALUES (9, 120000, true, false, 'QWE-123', 1);
INSERT INTO public.planet VALUES (10, 120000, true, false, 'P-5123', 2);
INSERT INTO public.planet VALUES (11, 120000, true, false, 'XYZ-001', 6);
INSERT INTO public.planet VALUES (12, 120000, true, false, 'TRE-321', 5);


--
-- Data for Name: planeta_enano; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planeta_enano VALUES (1, 'PLUTON', 'Por un tiempo fue un planeta');
INSERT INTO public.planeta_enano VALUES (2, 'Ceres', 'Planeta enano');
INSERT INTO public.planeta_enano VALUES (3, 'ERIS', 'Planeta enano');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 15000, 'Mirach', 6, 'Es una estrella bonita');
INSERT INTO public.star VALUES (2, 150000, 'ROSS 248', 6, 'Es una estrella poco observada');
INSERT INTO public.star VALUES (3, 150000, 'Alpheratz', 6, 'Es una estrella mas brillante de la constelacion Andromeda');
INSERT INTO public.star VALUES (4, 500, 'SOL', 1, 'Es la estrella del Sistema Solar');
INSERT INTO public.star VALUES (5, 1000, 'BETELGEUSE', 1, 'Es la estrella mas grande de la Via Lactea');
INSERT INTO public.star VALUES (6, 12000, 'OGLE-TR-122b', 1, 'Es la estrella mas pequena de la Via Lactea por el momento');


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
-- Name: planeta_enano_planeta_enano_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planeta_enano_planeta_enano_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


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
-- Name: planeta_enano planeta_enano_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planeta_enano
    ADD CONSTRAINT planeta_enano_name_key UNIQUE (name);


--
-- Name: planeta_enano planeta_enano_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planeta_enano
    ADD CONSTRAINT planeta_enano_pkey PRIMARY KEY (planeta_enano_id);


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

