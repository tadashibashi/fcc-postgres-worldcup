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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(24) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(48) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (158, 2018, 'Final', 384, 385, 4, 2);
INSERT INTO public.games VALUES (159, 2018, 'Third Place', 386, 387, 2, 0);
INSERT INTO public.games VALUES (160, 2018, 'Semi-Final', 385, 387, 2, 1);
INSERT INTO public.games VALUES (161, 2018, 'Semi-Final', 384, 386, 1, 0);
INSERT INTO public.games VALUES (162, 2018, 'Quarter-Final', 385, 388, 3, 2);
INSERT INTO public.games VALUES (163, 2018, 'Quarter-Final', 387, 389, 2, 0);
INSERT INTO public.games VALUES (164, 2018, 'Quarter-Final', 386, 390, 2, 1);
INSERT INTO public.games VALUES (165, 2018, 'Quarter-Final', 384, 391, 2, 0);
INSERT INTO public.games VALUES (166, 2018, 'Eighth-Final', 387, 392, 2, 1);
INSERT INTO public.games VALUES (167, 2018, 'Eighth-Final', 389, 393, 1, 0);
INSERT INTO public.games VALUES (168, 2018, 'Eighth-Final', 386, 394, 3, 2);
INSERT INTO public.games VALUES (169, 2018, 'Eighth-Final', 390, 395, 2, 0);
INSERT INTO public.games VALUES (170, 2018, 'Eighth-Final', 385, 396, 2, 1);
INSERT INTO public.games VALUES (171, 2018, 'Eighth-Final', 388, 397, 2, 1);
INSERT INTO public.games VALUES (172, 2018, 'Eighth-Final', 391, 398, 2, 1);
INSERT INTO public.games VALUES (173, 2018, 'Eighth-Final', 384, 399, 4, 3);
INSERT INTO public.games VALUES (174, 2014, 'Final', 400, 399, 1, 0);
INSERT INTO public.games VALUES (175, 2014, 'Third Place', 401, 390, 3, 0);
INSERT INTO public.games VALUES (176, 2014, 'Semi-Final', 399, 401, 1, 0);
INSERT INTO public.games VALUES (177, 2014, 'Semi-Final', 400, 390, 7, 1);
INSERT INTO public.games VALUES (178, 2014, 'Quarter-Final', 401, 402, 1, 0);
INSERT INTO public.games VALUES (179, 2014, 'Quarter-Final', 399, 386, 1, 0);
INSERT INTO public.games VALUES (180, 2014, 'Quarter-Final', 390, 392, 2, 1);
INSERT INTO public.games VALUES (181, 2014, 'Quarter-Final', 400, 384, 1, 0);
INSERT INTO public.games VALUES (182, 2014, 'Eighth-Final', 390, 403, 2, 1);
INSERT INTO public.games VALUES (183, 2014, 'Eighth-Final', 392, 391, 2, 0);
INSERT INTO public.games VALUES (184, 2014, 'Eighth-Final', 384, 404, 2, 0);
INSERT INTO public.games VALUES (185, 2014, 'Eighth-Final', 400, 405, 2, 1);
INSERT INTO public.games VALUES (186, 2014, 'Eighth-Final', 401, 395, 2, 1);
INSERT INTO public.games VALUES (187, 2014, 'Eighth-Final', 402, 406, 2, 1);
INSERT INTO public.games VALUES (188, 2014, 'Eighth-Final', 399, 393, 1, 0);
INSERT INTO public.games VALUES (189, 2014, 'Eighth-Final', 386, 407, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (384, 'France');
INSERT INTO public.teams VALUES (385, 'Croatia');
INSERT INTO public.teams VALUES (386, 'Belgium');
INSERT INTO public.teams VALUES (387, 'England');
INSERT INTO public.teams VALUES (388, 'Russia');
INSERT INTO public.teams VALUES (389, 'Sweden');
INSERT INTO public.teams VALUES (390, 'Brazil');
INSERT INTO public.teams VALUES (391, 'Uruguay');
INSERT INTO public.teams VALUES (392, 'Colombia');
INSERT INTO public.teams VALUES (393, 'Switzerland');
INSERT INTO public.teams VALUES (394, 'Japan');
INSERT INTO public.teams VALUES (395, 'Mexico');
INSERT INTO public.teams VALUES (396, 'Denmark');
INSERT INTO public.teams VALUES (397, 'Spain');
INSERT INTO public.teams VALUES (398, 'Portugal');
INSERT INTO public.teams VALUES (399, 'Argentina');
INSERT INTO public.teams VALUES (400, 'Germany');
INSERT INTO public.teams VALUES (401, 'Netherlands');
INSERT INTO public.teams VALUES (402, 'Costa Rica');
INSERT INTO public.teams VALUES (403, 'Chile');
INSERT INTO public.teams VALUES (404, 'Nigeria');
INSERT INTO public.teams VALUES (405, 'Algeria');
INSERT INTO public.teams VALUES (406, 'Greece');
INSERT INTO public.teams VALUES (407, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 189, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 407, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

