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
    round character varying(100) NOT NULL,
    year integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
    name character varying(100) NOT NULL
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

INSERT INTO public.games VALUES (161, 'Final', 2018, 4, 2, 299, 300);
INSERT INTO public.games VALUES (162, 'Third Place', 2018, 2, 0, 301, 302);
INSERT INTO public.games VALUES (163, 'Semi-Final', 2018, 2, 1, 300, 302);
INSERT INTO public.games VALUES (164, 'Semi-Final', 2018, 1, 0, 299, 301);
INSERT INTO public.games VALUES (165, 'Quarter-Final', 2018, 3, 2, 300, 308);
INSERT INTO public.games VALUES (166, 'Quarter-Final', 2018, 2, 0, 302, 310);
INSERT INTO public.games VALUES (167, 'Quarter-Final', 2018, 2, 1, 301, 312);
INSERT INTO public.games VALUES (168, 'Quarter-Final', 2018, 2, 0, 299, 314);
INSERT INTO public.games VALUES (169, 'Eighth-Final', 2018, 2, 1, 302, 316);
INSERT INTO public.games VALUES (170, 'Eighth-Final', 2018, 1, 0, 310, 318);
INSERT INTO public.games VALUES (171, 'Eighth-Final', 2018, 3, 2, 301, 320);
INSERT INTO public.games VALUES (172, 'Eighth-Final', 2018, 2, 0, 312, 322);
INSERT INTO public.games VALUES (173, 'Eighth-Final', 2018, 2, 1, 300, 324);
INSERT INTO public.games VALUES (174, 'Eighth-Final', 2018, 2, 1, 308, 326);
INSERT INTO public.games VALUES (175, 'Eighth-Final', 2018, 2, 1, 314, 328);
INSERT INTO public.games VALUES (176, 'Eighth-Final', 2018, 4, 3, 299, 330);
INSERT INTO public.games VALUES (177, 'Final', 2014, 1, 0, 331, 330);
INSERT INTO public.games VALUES (178, 'Third Place', 2014, 3, 0, 333, 312);
INSERT INTO public.games VALUES (179, 'Semi-Final', 2014, 1, 0, 330, 333);
INSERT INTO public.games VALUES (180, 'Semi-Final', 2014, 7, 1, 331, 312);
INSERT INTO public.games VALUES (181, 'Quarter-Final', 2014, 1, 0, 333, 340);
INSERT INTO public.games VALUES (182, 'Quarter-Final', 2014, 1, 0, 330, 301);
INSERT INTO public.games VALUES (183, 'Quarter-Final', 2014, 2, 1, 312, 316);
INSERT INTO public.games VALUES (184, 'Quarter-Final', 2014, 1, 0, 331, 299);
INSERT INTO public.games VALUES (185, 'Eighth-Final', 2014, 2, 1, 312, 348);
INSERT INTO public.games VALUES (186, 'Eighth-Final', 2014, 2, 0, 316, 314);
INSERT INTO public.games VALUES (187, 'Eighth-Final', 2014, 2, 0, 299, 352);
INSERT INTO public.games VALUES (188, 'Eighth-Final', 2014, 2, 1, 331, 354);
INSERT INTO public.games VALUES (189, 'Eighth-Final', 2014, 2, 1, 333, 322);
INSERT INTO public.games VALUES (190, 'Eighth-Final', 2014, 2, 1, 340, 358);
INSERT INTO public.games VALUES (191, 'Eighth-Final', 2014, 1, 0, 330, 318);
INSERT INTO public.games VALUES (192, 'Eighth-Final', 2014, 2, 1, 301, 362);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (299, 'France');
INSERT INTO public.teams VALUES (300, 'Croatia');
INSERT INTO public.teams VALUES (301, 'Belgium');
INSERT INTO public.teams VALUES (302, 'England');
INSERT INTO public.teams VALUES (308, 'Russia');
INSERT INTO public.teams VALUES (310, 'Sweden');
INSERT INTO public.teams VALUES (312, 'Brazil');
INSERT INTO public.teams VALUES (314, 'Uruguay');
INSERT INTO public.teams VALUES (316, 'Colombia');
INSERT INTO public.teams VALUES (318, 'Switzerland');
INSERT INTO public.teams VALUES (320, 'Japan');
INSERT INTO public.teams VALUES (322, 'Mexico');
INSERT INTO public.teams VALUES (324, 'Denmark');
INSERT INTO public.teams VALUES (326, 'Spain');
INSERT INTO public.teams VALUES (328, 'Portugal');
INSERT INTO public.teams VALUES (330, 'Argentina');
INSERT INTO public.teams VALUES (331, 'Germany');
INSERT INTO public.teams VALUES (333, 'Netherlands');
INSERT INTO public.teams VALUES (340, 'Costa Rica');
INSERT INTO public.teams VALUES (348, 'Chile');
INSERT INTO public.teams VALUES (352, 'Nigeria');
INSERT INTO public.teams VALUES (354, 'Algeria');
INSERT INTO public.teams VALUES (358, 'Greece');
INSERT INTO public.teams VALUES (362, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 192, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 362, true);


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

