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
    comet_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    color text,
    weight_in_zelzorks integer,
    chance_of_impact_2024 boolean
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    color text NOT NULL,
    number_of_stars integer,
    galaxy_size_in_sq_squizzers numeric
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
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    color text,
    has_cheese boolean,
    surface_temperature_in_celsors numeric
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
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    color text,
    has_atmosphere boolean,
    has_life boolean,
    surface_temperature_in_celsors numeric
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
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    color text,
    number_of_planets integer,
    star_temperature_in_celsors numeric
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (4, 3, 'Wileys Comet', 'Purple', 68, true);
INSERT INTO public.comet VALUES (5, 5, 'Sharpshooter', 'Silver', 12, false);
INSERT INTO public.comet VALUES (6, 2, 'January Band', 'Blue and Gold', 127, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'AMELBA MAJOR', 'teal', 905, 2347);
INSERT INTO public.galaxy VALUES (2, 'GREEN GIANT', 'green', 10227, 6547);
INSERT INTO public.galaxy VALUES (3, 'TINY SPARKLER', 'multicolored', 227, 47);
INSERT INTO public.galaxy VALUES (4, 'BLUE MAGIC', 'blue', 6227, 847);
INSERT INTO public.galaxy VALUES (5, 'PROSTHESIUS MINOR', 'purple', 827, 89);
INSERT INTO public.galaxy VALUES (6, 'EMBLAZONED DRAGON', 'gold', 8278, 859);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 5, 'd4', 'blue', true, 45);
INSERT INTO public.moon VALUES (2, 5, 'd6', 'blue-green', true, 54);
INSERT INTO public.moon VALUES (3, 7, 'f78', 'blue-silver', true, 49);
INSERT INTO public.moon VALUES (4, 6, 'r65', 'teal', true, 44);
INSERT INTO public.moon VALUES (5, 7, 'f92', 'blue-gold', false, 96);
INSERT INTO public.moon VALUES (6, 9, 'i22', 'pink-gold', true, 49);
INSERT INTO public.moon VALUES (7, 9, 'i98', 'fiery pink', false, 72);
INSERT INTO public.moon VALUES (8, 11, 'ic12', 'hotdog pink', false, 45);
INSERT INTO public.moon VALUES (9, 12, 'w34', 'orange-red', false, 22);
INSERT INTO public.moon VALUES (10, 13, 'g45', 'fiery red', false, 14);
INSERT INTO public.moon VALUES (11, 13, 'u89', 'white', false, 87);
INSERT INTO public.moon VALUES (12, 15, 'r56', 'pale pink', false, 72);
INSERT INTO public.moon VALUES (13, 14, 'xc7', 'sparkler gold', false, 18);
INSERT INTO public.moon VALUES (14, 14, 'x4', 'sparkling blue', false, 12);
INSERT INTO public.moon VALUES (15, 9, 'q2', 'bee yellow', true, 32);
INSERT INTO public.moon VALUES (16, 8, 'q7', 'orange yellow', true, 37);
INSERT INTO public.moon VALUES (17, 9, 'q98', 'dark yellow', true, 36);
INSERT INTO public.moon VALUES (18, 6, 'o9', 'sea foam green', true, 31);
INSERT INTO public.moon VALUES (19, 7, 'z09', 'silver white', false, 65);
INSERT INTO public.moon VALUES (20, 12, 't666', 'aquamarine', false, 52);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (5, 10, 'Yama', 'alabaster', true, false, 98);
INSERT INTO public.planet VALUES (6, 12, 'Bulala', 'blue', true, false, 85);
INSERT INTO public.planet VALUES (7, 15, 'Alaba', 'burgandy', true, true, 62);
INSERT INTO public.planet VALUES (8, 16, 'Forora', 'green', false, false, 68);
INSERT INTO public.planet VALUES (9, 18, 'Shemite', 'silver-blue', true, true, 92);
INSERT INTO public.planet VALUES (10, 17, 'Alabanthe', 'silver-green', false, false, 16);
INSERT INTO public.planet VALUES (11, 11, 'Salsanta', 'black', false, false, 158);
INSERT INTO public.planet VALUES (12, 11, 'Salsameyor', 'navy', false, false, 192);
INSERT INTO public.planet VALUES (13, 10, 'Angelota', 'pink', true, true, 18);
INSERT INTO public.planet VALUES (14, 12, 'Greythale', 'pale gold', false, true, 78);
INSERT INTO public.planet VALUES (15, 13, 'Mosdala', 'orange', true, false, 64);
INSERT INTO public.planet VALUES (16, 12, 'Wasama', 'silver-white', true, false, 543);
INSERT INTO public.planet VALUES (17, 14, 'Galanca
', 'orange-yellow', true, false, 904);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (10, 4, 'Nastadon', 'light blue', 6, 18.52);
INSERT INTO public.star VALUES (11, 2, 'Tritophelos', 'silver', 12, 95.23);
INSERT INTO public.star VALUES (12, 1, 'Blastogen', 'sea green', 16, 96.5);
INSERT INTO public.star VALUES (13, 1, 'Ninalna', 'pink', 4, 68.12);
INSERT INTO public.star VALUES (14, 5, 'Pialompa', 'magenta', 7, 57.65);
INSERT INTO public.star VALUES (15, 5, 'Milnapola', 'aqua', 54, 157.65);
INSERT INTO public.star VALUES (16, 1, 'Zilopha', 'lavender', 4, 18.56);
INSERT INTO public.star VALUES (17, 3, 'Ameliopa', 'red', 22, 422.01);
INSERT INTO public.star VALUES (18, 1, 'Zilopha', 'Neon Orange', 4, 18.56);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 6, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 18, true);


--
-- Name: comet comet_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_color_key UNIQUE (color);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: galaxy galaxy_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_color_key UNIQUE (color);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_color_key UNIQUE (color);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_color_key UNIQUE (color);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_color_key UNIQUE (color);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: comet comet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

