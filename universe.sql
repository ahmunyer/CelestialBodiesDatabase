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
-- Name: constellations; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellations (
    constellations_id integer NOT NULL,
    name character varying(30) NOT NULL,
    animal character varying(30)
);


ALTER TABLE public.constellations OWNER TO freecodecamp;

--
-- Name: constellations_constellations_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellations_constellations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellations_constellations_id_seq OWNER TO freecodecamp;

--
-- Name: constellations_constellations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellations_constellations_id_seq OWNED BY public.constellations.constellations_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    galaxy_type text,
    distance_from_earth_in_mly numeric(4,1),
    constellation character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer,
    radius_in_kn numeric(7,2),
    year_discovered integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moonseq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moonseq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moonseq OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    type character varying(30),
    mean_earth_radiuses integer,
    orbit_in_earth_days numeric(7,2),
    in_habital_zone boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: plseq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.plseq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.plseq OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    number_of_planets integer,
    distance_from_earth_in_ly numeric(5,1),
    is_binary boolean,
    constellation character varying(30)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_seq OWNER TO freecodecamp;

--
-- Name: constellations constellations_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations ALTER COLUMN constellations_id SET DEFAULT nextval('public.constellations_constellations_id_seq'::regclass);


--
-- Data for Name: constellations; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellations VALUES (1, 'Cygnus', 'swan');
INSERT INTO public.constellations VALUES (2, 'Sagittarius', 'archer');
INSERT INTO public.constellations VALUES (3, 'Draco', 'dragon');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Tadpole Galaxy', 3, 'barred spiral', 420.0, 'Draco');
INSERT INTO public.galaxy VALUES ('Backward Galaxy', 2, 'unbarred spiral', 200.0, 'Centaurus');
INSERT INTO public.galaxy VALUES ('Butterfly Galaxy', 5, 'unbarred spiral', 60.0, 'Virgo');
INSERT INTO public.galaxy VALUES ('Andromeda Galaxy', 6, 'barred spiral', 2.5, 'Andromeda');
INSERT INTO public.galaxy VALUES ('Milky Way Galaxy', 1, 'barred spiral', 0.0, 'none');
INSERT INTO public.galaxy VALUES ('Fireworks Galaxy', 4, 'intermediate spiral', 25.2, 'Cygnus');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 1, 1, 1738.00, NULL);
INSERT INTO public.moon VALUES ('Europa', 2, 3, 1560.80, 1610);
INSERT INTO public.moon VALUES ('Callisto', 3, 3, 2410.30, 1610);
INSERT INTO public.moon VALUES ('Elara', 4, 3, 43.00, 1905);
INSERT INTO public.moon VALUES ('Sinope', 5, 3, 19.00, 1914);
INSERT INTO public.moon VALUES ('Carme', 6, 3, 23.00, 1938);
INSERT INTO public.moon VALUES ('Leda', 7, 3, 10.00, 1974);
INSERT INTO public.moon VALUES ('Thebe', 8, 3, 49.30, 1979);
INSERT INTO public.moon VALUES ('Metis', 9, 3, 21.50, 1979);
INSERT INTO public.moon VALUES ('Themisto', 10, 3, 4.00, 1975);
INSERT INTO public.moon VALUES ('Taygete', 11, 3, 2.50, 2000);
INSERT INTO public.moon VALUES ('Harpalyke', 12, 3, 2.20, 2000);
INSERT INTO public.moon VALUES ('Thyone', 13, 3, 2.00, 2001);
INSERT INTO public.moon VALUES ('Aitne', 14, 3, 1.50, 2001);
INSERT INTO public.moon VALUES ('Carpo', 15, 3, 1.50, 2003);
INSERT INTO public.moon VALUES ('Dia', 16, 3, 2.00, 2000);
INSERT INTO public.moon VALUES ('Eirene', 17, 3, 2.00, 2003);
INSERT INTO public.moon VALUES ('Pandia', 18, 3, 1.50, 2017);
INSERT INTO public.moon VALUES ('Ersa', 19, 3, 1.50, 2018);
INSERT INTO public.moon VALUES ('Valetudo', 20, 3, 0.50, 2016);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 1, 'terrestrial', 0, 365.26, true, 1);
INSERT INTO public.planet VALUES ('Jupiter', 3, 'gas giant', 11, 4328.90, false, 1);
INSERT INTO public.planet VALUES ('Proxima Centauri b', 4, 'exoplanet', 1, 11.20, true, 3);
INSERT INTO public.planet VALUES ('Proxima Centauri d', 5, 'exoplanet', 1, 5.10, false, 3);
INSERT INTO public.planet VALUES ('Saffar', 6, 'exoplanet', 20, 4.62, false, 6);
INSERT INTO public.planet VALUES ('Samh', 7, 'gas giant', NULL, 241.30, false, 6);
INSERT INTO public.planet VALUES ('Draugr', 8, 'pulsar', NULL, 25.26, false, 5);
INSERT INTO public.planet VALUES ('Poltergeist', 9, 'pulsar', NULL, 66.54, false, 5);
INSERT INTO public.planet VALUES ('Kepler-11b', 10, 'exoplanet', 2, 10.30, false, 4);
INSERT INTO public.planet VALUES ('Kepler-11g', 11, 'exoplanet', 4, 118.38, false, 4);
INSERT INTO public.planet VALUES ('Kepler-90g', 12, 'super-puff', 8, 210.48, false, 2);
INSERT INTO public.planet VALUES ('Kepler-90e', 13, 'exoplanet', 3, 91.94, false, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('kepler90', 2, 8, 2790.0, false, 'Draco');
INSERT INTO public.star VALUES ('proxima centauri', 3, 3, 4.2, false, 'Centaurus');
INSERT INTO public.star VALUES ('sun', 1, 8, 0.0, false, 'none');
INSERT INTO public.star VALUES ('kepler11', 4, 6, 2150.0, false, 'Cygnus');
INSERT INTO public.star VALUES ('psr b1257+12', 5, 3, 2300.0, false, 'Virgo');
INSERT INTO public.star VALUES ('upsilon andromedae', 6, 3, 44.0, true, 'Andromeda');


--
-- Name: constellations_constellations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellations_constellations_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moonseq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moonseq', 20, true);


--
-- Name: plseq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.plseq', 13, true);


--
-- Name: star_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_seq', 6, true);


--
-- Name: galaxy constellation; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT constellation UNIQUE (constellation);


--
-- Name: constellations constellations_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations
    ADD CONSTRAINT constellations_name_key UNIQUE (name);


--
-- Name: constellations constellations_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations
    ADD CONSTRAINT constellations_pkey PRIMARY KEY (constellations_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star constellation_match; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT constellation_match FOREIGN KEY (constellation) REFERENCES public.galaxy(constellation);


--
-- Name: moon planet_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id_cons; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id_cons FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

