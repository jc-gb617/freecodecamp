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
    name character varying(100) NOT NULL,
    galaxy_age integer NOT NULL,
    galaxy_shape_id integer NOT NULL,
    galactic_cluster character varying(10) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.galaxy ALTER COLUMN galaxy_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.galaxy_galaxy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: galaxy_shapes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_shapes (
    galaxy_shape_id integer NOT NULL,
    name character varying(100),
    description text
);


ALTER TABLE public.galaxy_shapes OWNER TO freecodecamp;

--
-- Name: galaxy_shapes_galaxy_shape_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.galaxy_shapes ALTER COLUMN galaxy_shape_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.galaxy_shapes_galaxy_shape_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    has_life boolean,
    is_spherical boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.moon ALTER COLUMN moon_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.moon_moon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    planet_position integer,
    has_life boolean,
    is_dwarf_planet boolean,
    description text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.planet ALTER COLUMN planet_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.planet_planet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    star_class integer NOT NULL,
    age numeric(15,0) NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.star ALTER COLUMN star_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.star_star_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (1, 'Milky Way', 10000000, 1, 'Local');
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (2, 'Andromeda', 10000000, 2, 'Local');
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (3, 'M-32', 10000000, 1, 'Local');
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (4, 'Pegasus', 10000000, 1, 'M1');
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (5, 'Farsky', 10000000, 1, 'M1');
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (6, 'Nearswirl', 10000000, 1, 'M1');


--
-- Data for Name: galaxy_shapes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_shapes OVERRIDING SYSTEM VALUE VALUES (1, 'Bar', NULL);
INSERT INTO public.galaxy_shapes OVERRIDING SYSTEM VALUE VALUES (2, 'Spiral', NULL);
INSERT INTO public.galaxy_shapes OVERRIDING SYSTEM VALUE VALUES (3, 'Pinwheel', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (1, 3, 'Luna', false, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (2, 4, 'Phobos', false, false);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (3, 4, 'Deimos', false, false);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (4, 6, 'Io', false, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (5, 6, 'Europa', false, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (6, 6, 'Ganymede', false, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (7, 6, 'Callisto', false, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (8, 6, 'Leda', false, false);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (9, 6, 'Ersa', false, false);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (10, 6, 'Thebe', false, false);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (11, 6, 'Elara', false, false);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (12, 6, 'Pandia', false, false);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (13, 6, 'Lysithea', false, false);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (14, 6, 'Dia', false, false);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (15, 6, 'Euporie', false, false);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (16, 6, 'Kalyke', false, false);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (17, 6, 'Mneme', false, false);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (18, 7, 'Titan', false, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (19, 7, 'Enceledas', false, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (20, 9, 'Triton', false, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (21, 10, 'Charon', false, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (1, 1, 'Mercury', 1, false, false, 'Hot and fast');
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (2, 1, 'Venus', 2, false, false, 'Hot and Cloud');
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (3, 1, 'Earth', 3, true, false, 'Not bad.');
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (4, 1, 'Mars', 4, false, false, 'Red');
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (5, 1, 'Ceres', 5, false, true, 'Almost!');
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (6, 1, 'Jupiter', 6, false, false, 'Big guy.');
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (7, 1, 'Saturn', 7, false, false, 'Rings!');
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (8, 1, 'Uranus', 8, false, false, 'Sideways');
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (9, 1, 'Neptune', 9, false, false, 'Big and blue');
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (10, 1, 'Pluto', 10, false, true, 'Way out!');
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (11, 2, 'Alpha Centauri b', 1, false, false, 'Neighbor');
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (12, 3, 'Proxima Centauri b', 1, false, false, 'Out there.');
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (13, 6, 'Vulcan', 1, true, false, 'Logical.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (1, 1, 'Sol', 1, 1000000000);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (2, 1, 'Alpha Centauri A', 1, 1000000000);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (3, 1, 'Proxima Centuri', 1, 1000000000);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (4, 1, 'Polaris', 1, 1000000000);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (5, 1, 'Arcturus', 1, 1000000000);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (6, 1, 'Epsilon Erendi', 1, 1000000000);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_shapes_galaxy_shape_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_shapes_galaxy_shape_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


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
-- Name: galaxy_shapes galaxy_shapes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_shapes
    ADD CONSTRAINT galaxy_shapes_pkey PRIMARY KEY (galaxy_shape_id);


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
-- Name: star galaxy_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: galaxy galaxy_shape_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_shape_id FOREIGN KEY (galaxy_shape_id) REFERENCES public.galaxy_shapes(galaxy_shape_id);


--
-- Name: moon planet_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

