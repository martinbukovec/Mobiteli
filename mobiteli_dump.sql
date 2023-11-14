--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

-- Started on 2023-11-14 06:29:41

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
-- TOC entry 219 (class 1259 OID 24641)
-- Name: boja; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boja (
    idboje bigint NOT NULL,
    nazivboje character varying NOT NULL
);


ALTER TABLE public.boja OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 24648)
-- Name: boja_idboje_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.boja_idboje_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.boja_idboje_seq OWNER TO postgres;

--
-- TOC entry 4883 (class 0 OID 0)
-- Dependencies: 220
-- Name: boja_idboje_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.boja_idboje_seq OWNED BY public.boja.idboje;


--
-- TOC entry 222 (class 1259 OID 24650)
-- Name: mobitel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mobitel (
    idmobitela bigint NOT NULL,
    idmodela bigint,
    idpohrane bigint,
    idboje bigint
);


ALTER TABLE public.mobitel OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 24649)
-- Name: mobitel_idmobitela_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mobitel_idmobitela_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mobitel_idmobitela_seq OWNER TO postgres;

--
-- TOC entry 4884 (class 0 OID 0)
-- Dependencies: 221
-- Name: mobitel_idmobitela_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mobitel_idmobitela_seq OWNED BY public.mobitel.idmobitela;


--
-- TOC entry 216 (class 1259 OID 24592)
-- Name: model; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.model (
    idmodela bigint NOT NULL,
    proizvodac character varying NOT NULL,
    model character varying NOT NULL,
    os character varying,
    ekran double precision NOT NULL,
    brojkamera integer,
    kamera integer,
    procesor character varying,
    baterija integer NOT NULL,
    brzinapunjenja integer NOT NULL,
    vodootpornost character varying,
    maxsvjetlina integer NOT NULL,
    stopaosvjezavanja integer NOT NULL,
    pocetnacijena integer NOT NULL
);


ALTER TABLE public.model OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 24672)
-- Name: model_entity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.model_entity (
    idmodela bigint NOT NULL,
    baterija integer NOT NULL,
    brojkamera integer NOT NULL,
    brzinapunjenja integer NOT NULL,
    ekran double precision NOT NULL,
    kamera integer NOT NULL,
    maxsvjetlina integer NOT NULL,
    model character varying(255),
    os character varying(255),
    pocetnacijena double precision NOT NULL,
    procesor character varying(255),
    proizvodac character varying(255),
    stopaosvjezavanja integer NOT NULL,
    vodootpornost character varying(255)
);


ALTER TABLE public.model_entity OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 24671)
-- Name: model_entity_idmodela_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.model_entity_idmodela_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.model_entity_idmodela_seq OWNER TO postgres;

--
-- TOC entry 4885 (class 0 OID 0)
-- Dependencies: 223
-- Name: model_entity_idmodela_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.model_entity_idmodela_seq OWNED BY public.model_entity.idmodela;


--
-- TOC entry 215 (class 1259 OID 24591)
-- Name: model_idmodela_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.model_idmodela_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.model_idmodela_seq OWNER TO postgres;

--
-- TOC entry 4886 (class 0 OID 0)
-- Dependencies: 215
-- Name: model_idmodela_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.model_idmodela_seq OWNED BY public.model.idmodela;


--
-- TOC entry 218 (class 1259 OID 24601)
-- Name: pohrana; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pohrana (
    idpohrane bigint NOT NULL,
    radnamemorija integer NOT NULL,
    pohrana integer NOT NULL
);


ALTER TABLE public.pohrana OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 24600)
-- Name: pohrana_idpohrane_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pohrana_idpohrane_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pohrana_idpohrane_seq OWNER TO postgres;

--
-- TOC entry 4887 (class 0 OID 0)
-- Dependencies: 217
-- Name: pohrana_idpohrane_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pohrana_idpohrane_seq OWNED BY public.pohrana.idpohrane;


--
-- TOC entry 4710 (class 2604 OID 24693)
-- Name: mobitel idmobitela; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mobitel ALTER COLUMN idmobitela SET DEFAULT nextval('public.mobitel_idmobitela_seq'::regclass);


--
-- TOC entry 4708 (class 2604 OID 24727)
-- Name: model idmodela; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model ALTER COLUMN idmodela SET DEFAULT nextval('public.model_idmodela_seq'::regclass);


--
-- TOC entry 4711 (class 2604 OID 24675)
-- Name: model_entity idmodela; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model_entity ALTER COLUMN idmodela SET DEFAULT nextval('public.model_entity_idmodela_seq'::regclass);


--
-- TOC entry 4709 (class 2604 OID 24789)
-- Name: pohrana idpohrane; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pohrana ALTER COLUMN idpohrane SET DEFAULT nextval('public.pohrana_idpohrane_seq'::regclass);


--
-- TOC entry 4872 (class 0 OID 24641)
-- Dependencies: 219
-- Data for Name: boja; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.boja (idboje, nazivboje) FROM stdin;
1	crna
2	roza
3	bijela
4	plava
5	crvena
6	bez
7	zelena
\.


--
-- TOC entry 4875 (class 0 OID 24650)
-- Dependencies: 222
-- Data for Name: mobitel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mobitel (idmobitela, idmodela, idpohrane, idboje) FROM stdin;
1	1	11	1
2	1	11	6
3	1	11	7
4	1	12	1
5	1	12	6
6	1	12	7
7	2	12	1
8	2	12	4
9	2	12	6
10	2	12	7
11	2	16	1
12	2	16	4
13	2	16	6
14	2	16	7
15	2	17	1
16	2	17	4
17	2	17	6
18	2	17	7
19	2	18	1
20	2	18	4
21	2	18	6
22	2	18	7
23	3	7	1
24	3	7	3
25	3	7	7
26	3	8	1
27	3	8	3
28	3	8	7
29	3	11	1
30	3	11	3
31	3	11	7
32	3	12	1
33	3	12	3
34	3	12	7
35	4	4	1
36	4	4	3
37	4	7	1
38	4	7	3
39	4	8	1
40	4	8	3
41	4	11	1
42	4	11	3
43	4	12	1
44	4	12	3
45	5	1	1
46	5	1	3
47	5	1	4
48	5	2	1
49	5	2	3
50	5	2	4
51	5	3	1
52	5	3	3
53	5	3	4
54	5	4	1
55	5	4	3
56	5	4	4
57	5	7	1
58	5	7	3
59	5	7	4
60	6	11	1
61	6	11	2
62	6	12	1
63	6	12	2
64	7	11	1
65	7	11	3
66	7	11	4
67	7	11	5
68	8	15	1
69	8	15	3
70	8	16	1
71	8	16	3
72	8	17	1
73	8	17	3
74	9	11	1
75	9	11	3
76	9	11	4
77	9	11	5
78	9	11	7
79	9	12	1
80	9	12	3
81	9	12	4
82	9	12	5
83	9	12	7
84	9	16	1
85	9	16	3
86	9	16	4
87	9	16	5
88	9	16	7
89	9	17	1
90	9	17	3
91	9	17	4
92	9	17	5
93	9	17	7
94	10	4	1
95	10	4	4
96	10	4	7
97	10	7	1
98	10	7	4
99	10	7	7
100	10	12	1
101	10	12	4
102	10	12	7
103	11	4	1
104	11	4	2
105	11	4	3
106	11	4	4
107	11	4	5
108	11	4	7
109	11	5	1
110	11	5	2
111	11	5	3
112	11	5	4
113	11	5	5
114	11	5	7
115	11	6	1
116	11	6	2
117	11	6	3
118	11	6	4
119	11	6	5
120	11	6	7
121	12	7	1
122	12	8	1
123	12	9	1
124	12	10	1
125	13	12	1
126	13	12	3
127	13	12	4
128	13	13	1
129	13	13	3
130	13	13	4
131	13	14	1
132	13	14	3
133	13	14	4
\.


--
-- TOC entry 4869 (class 0 OID 24592)
-- Dependencies: 216
-- Data for Name: model; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.model (idmodela, proizvodac, model, os, ekran, brojkamera, kamera, procesor, baterija, brzinapunjenja, vodootpornost, maxsvjetlina, stopaosvjezavanja, pocetnacijena) FROM stdin;
1	Samsung	Galaxy S22	Android 13	6.1	3	50	Exynos 2200	3700	25	IP68	1300	120	679
2	Samsung	Galaxy S23 Ultra	Android 14	6.8	4	200	Snapdragon 8 Gen 2	5000	45	IP68	1750	120	1165
3	Samsung	Galaxy S21 FE	Android 13	6.4	3	12	Snapdragon 888 5G	4500	25	IP68	1200	120	430
4	Samsung	Galaxy A52s	Android 13	6.5	4	64	Snapdragon 778G 5G	4500	25	IP67	800	120	230
5	Samsung	Galaxy A13	Android 13	6.6	4	50	Exynos 850	5000	15	nema	500	60	150
6	Google	Pixel 8	Android 14	6.2	2	50	Google Tensor G3	4575	27	IP68	2000	120	587
7	Google	Pixel 7a	Android 14	6.1	2	64	Google Tensor G2	4385	18	IP67	1000	90	383
8	Google	Pixel 6 Pro	Android 14	6.7	3	50	Google Tensor	5003	23	IP68	1000	120	550
9	Xiaomi	13	Android 14	6.4	3	50	Snapdragon 8 Gen 2	4500	67	IP68	1900	120	725
10	Xiaomi	Redmi Note 12	Android 13	6.7	3	48	Snapdragon 4 Gen 1	5000	33	IP53	1200	120	157
11	Apple	iPhone 13	iOS 17	6.1	2	12	A15 Bionic	3240	15	IP68	1200	60	580
12	Apple	iPhone 14 Pro	iOS 17	6.1	3	48	A16 Bionic	3200	15	IP68	2000	120	950
13	Apple	iPhone 15 Pro Max	iOS 17	6.7	3	48	A17 Pro	4441	15	IP68	2000	120	1450
\.


--
-- TOC entry 4877 (class 0 OID 24672)
-- Dependencies: 224
-- Data for Name: model_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.model_entity (idmodela, baterija, brojkamera, brzinapunjenja, ekran, kamera, maxsvjetlina, model, os, pocetnacijena, procesor, proizvodac, stopaosvjezavanja, vodootpornost) FROM stdin;
\.


--
-- TOC entry 4871 (class 0 OID 24601)
-- Dependencies: 218
-- Data for Name: pohrana; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pohrana (idpohrane, radnamemorija, pohrana) FROM stdin;
1	3	32
2	4	32
3	4	64
4	4	128
5	4	256
6	4	512
7	6	128
8	6	256
9	6	512
10	6	1028
11	8	128
12	8	256
13	8	512
14	8	1028
15	12	128
16	12	256
17	12	512
18	12	1028
\.


--
-- TOC entry 4888 (class 0 OID 0)
-- Dependencies: 220
-- Name: boja_idboje_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.boja_idboje_seq', 1, false);


--
-- TOC entry 4889 (class 0 OID 0)
-- Dependencies: 221
-- Name: mobitel_idmobitela_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mobitel_idmobitela_seq', 1, false);


--
-- TOC entry 4890 (class 0 OID 0)
-- Dependencies: 223
-- Name: model_entity_idmodela_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.model_entity_idmodela_seq', 1, false);


--
-- TOC entry 4891 (class 0 OID 0)
-- Dependencies: 215
-- Name: model_idmodela_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.model_idmodela_seq', 13, true);


--
-- TOC entry 4892 (class 0 OID 0)
-- Dependencies: 217
-- Name: pohrana_idpohrane_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pohrana_idpohrane_seq', 1, false);


--
-- TOC entry 4717 (class 2606 OID 24681)
-- Name: boja boja_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boja
    ADD CONSTRAINT boja_pkey PRIMARY KEY (idboje);


--
-- TOC entry 4719 (class 2606 OID 24695)
-- Name: mobitel mobitel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mobitel
    ADD CONSTRAINT mobitel_pkey PRIMARY KEY (idmobitela);


--
-- TOC entry 4721 (class 2606 OID 24679)
-- Name: model_entity model_entity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model_entity
    ADD CONSTRAINT model_entity_pkey PRIMARY KEY (idmodela);


--
-- TOC entry 4713 (class 2606 OID 24729)
-- Name: model model_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.model
    ADD CONSTRAINT model_pkey PRIMARY KEY (idmodela);


--
-- TOC entry 4715 (class 2606 OID 24791)
-- Name: pohrana pohrana_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pohrana
    ADD CONSTRAINT pohrana_pkey PRIMARY KEY (idpohrane);


--
-- TOC entry 4722 (class 2606 OID 24700)
-- Name: mobitel mobitel_idboje_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mobitel
    ADD CONSTRAINT mobitel_idboje_fkey FOREIGN KEY (idboje) REFERENCES public.boja(idboje);


--
-- TOC entry 4723 (class 2606 OID 24730)
-- Name: mobitel mobitel_idmodela_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mobitel
    ADD CONSTRAINT mobitel_idmodela_fkey FOREIGN KEY (idmodela) REFERENCES public.model(idmodela);


--
-- TOC entry 4724 (class 2606 OID 24792)
-- Name: mobitel mobitel_idpohrane_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mobitel
    ADD CONSTRAINT mobitel_idpohrane_fkey FOREIGN KEY (idpohrane) REFERENCES public.pohrana(idpohrane);


-- Completed on 2023-11-14 06:29:41

--
-- PostgreSQL database dump complete
--

