--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

-- Started on 2023-11-01 02:19:35

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
-- TOC entry 216 (class 1259 OID 16458)
-- Name: mobitel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mobitel (
    id integer NOT NULL,
    proizvodac character varying,
    model character varying,
    os character varying,
    ekran character varying,
    brojkamera character varying,
    kamera json,
    pohrana json,
    ram json,
    procesor character varying,
    baterija character varying,
    brzinapunjenja character varying,
    vodootpornost character varying,
    maxsvjetlina character varying,
    stopaosvjezavanja character varying,
    cijena character varying,
    boje json
);


ALTER TABLE public.mobitel OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16457)
-- Name: mobitel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mobitel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mobitel_id_seq OWNER TO postgres;

--
-- TOC entry 4841 (class 0 OID 0)
-- Dependencies: 215
-- Name: mobitel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mobitel_id_seq OWNED BY public.mobitel.id;


--
-- TOC entry 4688 (class 2604 OID 16461)
-- Name: mobitel id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mobitel ALTER COLUMN id SET DEFAULT nextval('public.mobitel_id_seq'::regclass);


--
-- TOC entry 4835 (class 0 OID 16458)
-- Dependencies: 216
-- Data for Name: mobitel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mobitel (id, proizvodac, model, os, ekran, brojkamera, kamera, pohrana, ram, procesor, baterija, brzinapunjenja, vodootpornost, maxsvjetlina, stopaosvjezavanja, cijena, boje) FROM stdin;
1	Samsung	Galaxy S22	Android 13	6.1	3	["50", "12", "10"]	["128", "256"]	["8"]	Exynos 2200	3700	25	IP68	1300	120	679	["Crni", "Zeleni", "Bez", "Ljubicasti", "Plavi", "Rozi", "Sivi", "Bijeli"]
2	Samsung	Galaxy S23 Ultra	Android 14	6.8	4	["200", "12", "10", "10"]	["256", "512", "1028"]	["8", "12"]	Snapdragon 8 Gen 2	5000	45	IP68	1750	120	1165	["Crni", "Zeleni", "Bez", "Ljubicasti", "Plavi", "Zuti", "Sivi", "Crveni"]
3	Samsung	Galaxy S21 FE	Android 13	6.4	3	["12", "12", "8"]	["128", "256"]	["6", "8"]	Snapdragon 888 5G	4500	25	IP68	1200	120	430	["Bijeli", "Sivi", "Ljubicasti", "Zeleni"]
4	Samsung	Galaxy A52s	Android 13	6.5	4	["64", "12", "5", "5"]	["128", "256"]	["4", "6", "8"]	Snapdragon 778G 5G	4500	25	IP67	800	120	230	["Crni", "Bijeli", "Ljubicasti", "Zeleni"]
5	Samsung	Galaxy A13	Android 13	6.6	4	["50", "5", "2", "2"]	["32", "64", "128"]	["4", "6"]	Exynos 850	5000	15	nema	500	60	150	["Crni", "Bijeli", "Narancasti", "Plavi"]
6	Google	Pixel 8	Android 14	6.2	2	["50", "12"]	["128", "256"]	["8"]	Google Tensor G3	4575	27	IP68	2000	120	587	["Crna", "Siva", "Roza"]
7	Google	Pixel 7a	Android 14	6.1	2	["64", "13"]	["128"]	["8"]	Google Tensor G2	4385	18	IP67	1000	90	383	["Crna", "Bijela", "Plava", "Crvena"]
8	Google	Pixel 6 Pro	Android 14	6.7	3	["50", "48", "12"]	["128", "256", "512"]	["12"]	Google Tensor	5003	23	IP68	1000	120	550	["Bijela", "Crna", "Zlatna"]
9	Xiaomi	13	Android 14	6.36	3	["50", "12", "10"]	["128", "256", "512"]	["8", "12"]	Snapdragon 8 Gen 2	4500	67	IP68	1900	120	725	["Bijeli", "Crni", "Zeleni", "Plavi", "Crveni", "Zuti", "Sivi"]
10	Xiaomi	Redmi Note 12	Android 13	6.67	3	["48", "8", "2"]	["128", "256"]	["4", "6", "8"]	Snapdragon 4 Gen 1	5000	33	IP53	1200	120	157	["Zelena", "Plava", "Crna"]
11	Apple	iPhone 13	iOS 17	6.1	2	["12", "12"]	["128", "256", "512"]	["4"]	A15 Bionic	3240	15	IP68	1200	60	580	["Crni", "Bijeli", "Plavi", "Rozi", "Zeleni", "Crveni"]
12	Apple	iPhone 14 Pro	iOS 17	6.1	3	["48", "12", "12"]	["128", "256", "512", "1028"]	["6"]	A16 Bionic	3200	15	IP68	2000	120	950	["Crni", "Srebrni", "Zlatni", "Ljubicasti"]
13	Apple	iPhone 15 Pro Max	iOS 17	6.7	3	["48", "12", "12"]	["256", "512", "1028"]	["8"]	A17 Pro	4441	15	IP68	2000	120	1450	["Crni", "Bijeli", "Plavi"]
\.


--
-- TOC entry 4842 (class 0 OID 0)
-- Dependencies: 215
-- Name: mobitel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mobitel_id_seq', 13, true);


--
-- TOC entry 4690 (class 2606 OID 16465)
-- Name: mobitel mobitel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mobitel
    ADD CONSTRAINT mobitel_pkey PRIMARY KEY (id);


-- Completed on 2023-11-01 02:19:36

--
-- PostgreSQL database dump complete
--
