--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

-- Started on 2023-11-01 01:58:16

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
1	Samsung	Galaxy S22	Android 13	6.1"	3	["50MP", "12MP", "10MP"]	["128GB", "256GB"]	["8GB"]	Exynos 2200	3700mAh	25W	IP68	1300nits	120Hz	679eur	["Crni", "Zeleni", "Bež", "Ljubičasti", "Plavi", "Rozi", "Sivi", "Bijeli"]
2	Samsung	Galaxy S23 Ultra	Android 14	6.8"	4	["200MP", "12MP", "10MP", "10MP"]	["256GB", "512GB", "1028GB"]	["8GB", "12GB"]	Snapdragon 8 Gen 2	5000mAh	45W	IP68	1750nits	120Hz	1165 eur	["Crni", "Zeleni", "Bež", "Ljubičasti", "Plavi", "Žuti", "Sivi", "Crveni"]
3	Samsung	Galaxy S21 FE	Android 13	6.4"	3	["12MP", "12MP", "8MP"]	["128GB", "256GB"]	["6GB", "8GB"]	Snapdragon 888 5G	4500mAh	25W	IP68	1200nits	120Hz	430 eur	["Bijeli", "Sivi", "Ljubičasti", "Zeleni"]
4	Samsung	Galaxy A52s	Android 13	6.5"	4	["64MP", "12MP", "5MP", "5MP"]	["128GB", "256GB"]	["4GB", "6GB", "8GB"]	Snapdragon 778G 5G	4500mAh	25W	IP67	800nits	120Hz	230 eur	["Crni", "Bijeli", "Ljubičasti", "Zeleni"]
5	Samsung	Galaxy A13	Android 13	6.6"	4	["50MP", "5MP", "2MP", "2MP"]	["32GB", "64GB", "128GB"]	["4GB", "6GB"]	Exynos 850	5000mAh	15W	nema	500nits	60Hz	150 eur	["Crni", "Bijeli", "Narančasti", "Plavi"]
6	Google	Pixel 8	Android 14	6.2"	2	["50MP", "12MP"]	["128GB", "256GB"]	["8GB"]	Google Tensor G3	4575mAh	27W	IP68	2000nits	120Hz	587 eur	["Crna", "Siva", "Roza"]
7	Google	Pixel 7a	Android 14	6.1"	2	["64MP", "13MP"]	["128GB"]	["8GB"]	Google Tensor G2	4385mAh	18W	IP67	1000nits	90Hz	383 eur	["Crna", "Bijela", "Plava", "Crvena"]
8	Google	Pixel 6 Pro	Android 14	6.7"	3	["50MP", "48MP", "12MP"]	["128GB", "256GB", "512GB"]	["12GB"]	Google Tensor	5003mAh	23W	IP68	1000nits	120Hz	550 eur	["Bijela", "Crna", "Zlatna"]
9	Xiaomi	13	Android 14	6.36"	3	["50MP", "12MP", "10MP"]	["128GB", "256GB", "512GB"]	["8GB", "12GB"]	Snapdragon 8 Gen 2	4500mAh	67W	IP68	1900nits	120Hz	725 eur	["Bijeli", "Crni", "Zeleni", "Plavi", "Crveni", "Žuti", "Sivi"]
10	Xiaomi	Redmi Note 12	Android 13	6.67"	3	["48MP", "8MP", "2MP"]	["128GB", "256GB"]	["4GB", "6GB", "8GB"]	Snapdragon 4 Gen 1	5000mAh	33W	IP53	1200nits	120Hz	157 eur	["Zelena", "Plava", "Crna"]
11	Apple	iPhone 13	iOS 17	6.1"	2	["12MP", "12MP"]	["128GB", "256GB", "512GB"]	["4GB"]	A15 Bionic	3240mAh	15W	IP68	1200nits	60Hz	580 eur	["Crni", "Bijeli", "Plavi", "Rozi", "Zeleni", "Crveni"]
12	Apple	iPhone 14 Pro	iOS 17	6.1"	3	["48MP", "12MP", "12MP"]	["128GB", "256GB", "512GB", "1028GB"]	["6GB"]	A16 Bionic	3200mAh	15W	IP68	2000nits	120Hz	950 eur	["Crni", "Srebrni", "Zlatni", "Ljubičasti"]
13	Apple	iPhone 15 Pro Max	iOS 17	6.7"	3	["48MP", "12MP", "12MP"]	["256GB", "512GB", "1028GB"]	["8GB"]	A17 Pro	4441mAh	15W	IP68	2000nits	120Hz	1450 eur	["Crni", "Bijeli", "Plavi"]
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


-- Completed on 2023-11-01 01:58:16

--
-- PostgreSQL database dump complete
--

