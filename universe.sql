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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    mass numeric(10,2),
    speed real,
    galaxy_id integer,
    asteroid_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    type character varying(20)
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
    name character varying(50) NOT NULL,
    description text,
    planet_id integer,
    diameter numeric(10,2)
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    number_moons integer,
    has_life boolean,
    star_id integer
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
    name character varying(50) NOT NULL,
    description text,
    number_planets integer,
    mass numeric(10,2),
    galaxy_id integer
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (23423.23, 2.3423424e+07, 1, 1, 'planet destroyer katarek');
INSERT INTO public.asteroid VALUES (23423.23, 2.3423424e+07, 1, 2, 'planet destroyer dfsdfk');
INSERT INTO public.asteroid VALUES (23423.23, 2.3423424e+07, 1, 3, 'planet destroyer pupskopf');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The Milky Way is a barred spiral galaxy containing our Solar System.', true, 'Barred Spiral');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The Andromeda Galaxy is a spiral galaxy located 2.537 million light-years away.', false, 'Spiral');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'The Triangulum Galaxy is a spiral galaxy approximately 3 million light-years from Earth.', false, 'Spiral');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool Galaxy', 'The Whirlpool Galaxy is an interacting grand-design spiral galaxy in the constellation Canes Venatici.', false, 'Interacting Spiral');
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', 'The Sombrero Galaxy is an unbarred spiral galaxy in the constellation Virgo.', false, 'Unbarred Spiral');
INSERT INTO public.galaxy VALUES (6, 'Pinwheel Galaxy', 'The Pinwheel Galaxy is a face-on spiral galaxy in the constellation Ursa Major.', false, 'Face-On Spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (3, 'Europa', 'Europa is one of the four Galilean moons of Jupiter, and the sixth-largest moon in the Solar System.', 3, 3121.60);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Phobos is the larger and closer of the two natural satellites of Mars.', 2, 22.20);
INSERT INTO public.moon VALUES (1, 'Luna', 'Luna, commonly known as the Moon, is Earths only natural satellite.', 1, 3474.80);
INSERT INTO public.moon VALUES (4, 'Phobos', 'Phobos is the larger and closer of the two natural satellites of Mars.', 10, 22.20);
INSERT INTO public.moon VALUES (5, 'Deimos', 'Deimos is the smaller and outer of the two natural satellites of Mars.', 10, 12.40);
INSERT INTO public.moon VALUES (6, 'Europa', 'Europa is one of the four Galilean moons of Jupiter, and the sixth-largest moon in the Solar System.', 11, 3121.60);
INSERT INTO public.moon VALUES (7, 'Ganymede', 'Ganymede is the largest and most massive moon of Jupiter and in the Solar System.', 11, 5262.40);
INSERT INTO public.moon VALUES (8, 'Callisto', 'Callisto is the second-largest moon of Jupiter, after Ganymede.', 11, 4821.60);
INSERT INTO public.moon VALUES (9, 'Titan', 'Titan is the largest moon of Saturn and the second-largest natural satellite in the Solar System.', 12, 5150.00);
INSERT INTO public.moon VALUES (10, 'Enceladus', 'Enceladus is the sixth-largest moon of Saturn.', 12, 504.20);
INSERT INTO public.moon VALUES (13, 'Io', 'Io is the innermost of the four Galilean moons of Jupiter and the fourth-largest moon in the Solar System.', 11, 3660.80);
INSERT INTO public.moon VALUES (14, 'Mimas', 'Mimas is a moon of Saturn which was discovered in 1789 by William Herschel.', 12, 396.40);
INSERT INTO public.moon VALUES (15, 'Luna', 'Luna, commonly known as the Moon, is Earth''s only natural satellite.', 1, 3474.80);
INSERT INTO public.moon VALUES (16, 'Titan', 'Titan is the largest moon of Saturn and the second-largest natural satellite in the Solar System.', 7, 5150.00);
INSERT INTO public.moon VALUES (17, 'Ganymede', 'Ganymede is the largest and most massive moon of Jupiter and in the Solar System.', 8, 5262.40);
INSERT INTO public.moon VALUES (18, 'Callisto', 'Callisto is the second-largest moon of Jupiter, after Ganymede.', 8, 4821.60);
INSERT INTO public.moon VALUES (19, 'Triton', 'Triton is the largest natural satellite of Neptune, and the first Neptunian moon to be discovered.', 6, 2706.80);
INSERT INTO public.moon VALUES (20, 'Charon', 'Charon is the largest of the five known natural satellites of the dwarf planet Pluto.', 9, 1212.00);
INSERT INTO public.moon VALUES (21, 'Io', 'Io is the innermost of the four Galilean moons of Jupiter and the fourth-largest moon in the Solar System.', 11, 3660.80);
INSERT INTO public.moon VALUES (22, 'Mimas', 'Mimas is a moon of Saturn which was discovered in 1789 by William Herschel.', 12, 396.40);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Earth is the third planet from the Sun and the only astronomical object known to harbor life.', 1, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'Mars is the fourth planet from the Sun and the second smallest planet in the Solar System.', 2, false, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 'Jupiter is the fifth planet from the Sun and the largest planet in the Solar System.', 79, false, 1);
INSERT INTO public.planet VALUES (4, 'Venus', 'Venus is the second planet from the Sun, named after the Roman goddess of love and beauty.', 0, false, 1);
INSERT INTO public.planet VALUES (5, 'Mercury', 'Mercury is the smallest and innermost planet in the Solar System.', 0, false, 1);
INSERT INTO public.planet VALUES (6, 'Neptune', 'Neptune is the eighth and farthest-known Solar planet from the Sun.', 14, false, 1);
INSERT INTO public.planet VALUES (7, 'Saturn', 'Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter.', 82, false, 1);
INSERT INTO public.planet VALUES (8, 'Uranus', 'Uranus is the seventh planet from the Sun, revolving once every 84 Earth years.', 27, false, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Pluto is a dwarf planet in the Kuiper belt, a ring of bodies beyond Neptune.', 5, false, 1);
INSERT INTO public.planet VALUES (10, 'Mars', 'Mars is the fourth planet from the Sun and the second smallest planet in the Solar System.', 2, false, 1);
INSERT INTO public.planet VALUES (11, 'Jupiter', 'Jupiter is the fifth planet from the Sun and the largest planet in the Solar System.', 79, false, 1);
INSERT INTO public.planet VALUES (12, 'Ceres', 'Ceres is the largest object in the asteroid belt between the orbits of Mars and Jupiter.', 0, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The Sun is the star at the center of the Solar System.', 8, 1.99, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 'Alpha Centauri is the closest star system and contains three stars.', 3, NULL, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'Betelgeuse is a red supergiant star in the constellation of Orion.', 0, NULL, 2);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 'Proxima Centauri is a red dwarf star located in the constellation of Centaurus.', 1, NULL, 1);
INSERT INTO public.star VALUES (5, 'Sirius', 'Sirius is the brightest star in the night sky and is located in the constellation Canis Major.', 0, NULL, 1);
INSERT INTO public.star VALUES (6, 'Vega', 'Vega is the fifth-brightest star in the night sky and is located in the constellation of Lyra.', 0, NULL, 1);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 1, false);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 1, false);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, false);


--
-- Name: asteroid asteroid primary key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT "asteroid primary key" PRIMARY KEY (asteroid_id);


--
-- Name: asteroid asteroid_asteroid_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_asteroid_id_key UNIQUE (asteroid_id);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: moon moon primary key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT "moon primary key" PRIMARY KEY (moon_id);


--
-- Name: moon moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_key UNIQUE (moon_id);


--
-- Name: planet planet primary key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT "planet primary key" PRIMARY KEY (planet_id);


--
-- Name: planet planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_key UNIQUE (planet_id);


--
-- Name: galaxy primary key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT "primary key" PRIMARY KEY (galaxy_id);


--
-- Name: star star primary key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT "star primary key" PRIMARY KEY (star_id);


--
-- Name: star star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_key UNIQUE (star_id);


--
-- Name: star parent galaxy id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT "parent galaxy id" FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon parent planet id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT "parent planet id" FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet parent star id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT "parent star id" FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

