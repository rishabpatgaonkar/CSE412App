--
-- PostgreSQL database dump
--

-- Dumped from database version 11.11 (Ubuntu 11.11-1.pgdg20.04+1)
-- Dumped by pg_dump version 11.11 (Ubuntu 11.11-1.pgdg20.04+1)

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

--
-- Name: btree_gin; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS btree_gin WITH SCHEMA public;


--
-- Name: EXTENSION btree_gin; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gin IS 'support for indexing common datatypes in GIN';


--
-- Name: btree_gist; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS btree_gist WITH SCHEMA public;


--
-- Name: EXTENSION btree_gist; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gist IS 'support for indexing common datatypes in GiST';


--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: cube; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS cube WITH SCHEMA public;


--
-- Name: EXTENSION cube; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION cube IS 'data type for multidimensional cubes';


--
-- Name: dblink; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;


--
-- Name: EXTENSION dblink; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';


--
-- Name: dict_int; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dict_int WITH SCHEMA public;


--
-- Name: EXTENSION dict_int; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_int IS 'text search dictionary template for integers';


--
-- Name: dict_xsyn; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dict_xsyn WITH SCHEMA public;


--
-- Name: EXTENSION dict_xsyn; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_xsyn IS 'text search dictionary template for extended synonym processing';


--
-- Name: earthdistance; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS earthdistance WITH SCHEMA public;


--
-- Name: EXTENSION earthdistance; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION earthdistance IS 'calculate great-circle distances on the surface of the Earth';


--
-- Name: fuzzystrmatch; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;


--
-- Name: EXTENSION fuzzystrmatch; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';


--
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


--
-- Name: intarray; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS intarray WITH SCHEMA public;


--
-- Name: EXTENSION intarray; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION intarray IS 'functions, operators, and index support for 1-D arrays of integers';


--
-- Name: ltree; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;


--
-- Name: EXTENSION ltree; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';


--
-- Name: pg_stat_statements; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;


--
-- Name: EXTENSION pg_stat_statements; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_stat_statements IS 'track execution statistics of all SQL statements executed';


--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: pgrowlocks; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgrowlocks WITH SCHEMA public;


--
-- Name: EXTENSION pgrowlocks; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgrowlocks IS 'show row-level locking information';


--
-- Name: pgstattuple; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgstattuple WITH SCHEMA public;


--
-- Name: EXTENSION pgstattuple; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgstattuple IS 'show tuple-level statistics';


--
-- Name: tablefunc; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;


--
-- Name: EXTENSION tablefunc; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';


--
-- Name: unaccent; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;


--
-- Name: EXTENSION unaccent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- Name: xml2; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS xml2 WITH SCHEMA public;


--
-- Name: EXTENSION xml2; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION xml2 IS 'XPath querying and XSLT';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: car; Type: TABLE; Schema: public; Owner: rdbxscrg
--

CREATE TABLE public.car (
    c_cid character varying(3) NOT NULL,
    c_sid character varying(3) NOT NULL,
    c_make character varying(55) NOT NULL,
    c_model character varying(55) NOT NULL,
    c_year character(4) NOT NULL,
    c_color character varying(25) NOT NULL,
    c_price character varying(7) NOT NULL,
    c_zipcode character(5) NOT NULL,
    c_engine character varying(55) NOT NULL,
    c_trans character varying(55) NOT NULL
);


ALTER TABLE public.car OWNER TO rdbxscrg;

--
-- Name: contacts; Type: TABLE; Schema: public; Owner: rdbxscrg
--

CREATE TABLE public.contacts (
    co_cuid character varying(3) NOT NULL,
    co_sid character varying(3) NOT NULL,
    co_cid character varying(3) NOT NULL,
    co_cu_email character varying(55) NOT NULL,
    co_msg character varying(1000) NOT NULL
);


ALTER TABLE public.contacts OWNER TO rdbxscrg;

--
-- Name: customer; Type: TABLE; Schema: public; Owner: rdbxscrg
--

CREATE TABLE public.customer (
    cu_cuid character varying(3)
);


ALTER TABLE public.customer OWNER TO rdbxscrg;

--
-- Name: posts; Type: TABLE; Schema: public; Owner: rdbxscrg
--

CREATE TABLE public.posts (
    p_sid character varying(3) NOT NULL,
    p_cid character varying(3) NOT NULL,
    p_date date NOT NULL
);


ALTER TABLE public.posts OWNER TO rdbxscrg;

--
-- Name: seller; Type: TABLE; Schema: public; Owner: rdbxscrg
--

CREATE TABLE public.seller (
    s_sid character(100) NOT NULL,
    s_address character varying(200) NOT NULL,
    s_name character varying(25) NOT NULL,
    s_email character varying(55) NOT NULL,
    s_phone character(10) NOT NULL
);


ALTER TABLE public.seller OWNER TO rdbxscrg;

--
-- Name: views; Type: TABLE; Schema: public; Owner: rdbxscrg
--

CREATE TABLE public.views (
    v_cuid character varying(3) NOT NULL,
    v_cid character varying(3) NOT NULL,
    v_count character varying(3) NOT NULL
);


ALTER TABLE public.views OWNER TO rdbxscrg;

--
-- Data for Name: car; Type: TABLE DATA; Schema: public; Owner: rdbxscrg
--

COPY public.car (c_cid, c_sid, c_make, c_model, c_year, c_color, c_price, c_zipcode, c_engine, c_trans) FROM stdin;
2	3	Tesla	Model 3	2021	BLUE	52000	85286	ELECTRIC	AUTOMATIC
4	19	Tesla	Model X	2020	WHITE	65000	85201	ELECTRIC	AUTOMATIC
5	4	Tesla	Model Y	2022	GREY	64500	85244	ELECTRIC	AUTOMATIC
6	1	Toyota	Camry	2019	WHITE	22500	85020	V6	AUTOMATIC
7	6	Acura	TSX	2020	BLACK	35500	85224	V6	AUTOMATIC
8	12	Acura	NSX	1996	GREEN	18500	85006	V8	MANUAL
9	11	Porsche	911	2017	SILVER	55600	85010	V8	MANUAL
10	1	Porsche	Taycan	2021	WHITE	82100	85010	ELECTRIC	AUTOMATIC
11	5	Audi	A8	2017	WHITE	85224	38200	V6	MANUAL
12	13	Volkswagen	Jetta	2016	BLUE	85286	18550	V4	AUTOMATIC
13	14	Honda	Civic	2015	GREY	85005	10550	V4	AUTOMATIC
14	16	Honda	Accord	2008	GREY	85010	6500 	V4	AUTOMATIC
15	7	Honda	CRV	2019	WHITE	85226	19500	V4	AUTOMATIC
16	10	Ford	Mustang	1966	BLUE	85224	24000	V8	MANUAL
17	20	Ford	F-150	2016	GREEN	85001	36000	V8	MANUAL
18	15	Ford	F-350	2020	RED	85011	55000	V8	AUTOMATIC
19	17	Kia	Sorrento	2019	RED	85012	26550	V4	AUTOMATIC
20	3	Chevy	Malibu	2018	BLUE	85228	21000	V4	AUTOMATIC
21	12	Nissan	Pathfinder	2008	GREEN	85228	8500 	V6	AUTOMATIC
22	5	Nissan	Maxima	2012	BLACK	85228	12500	V6	AUTOMATIC
24	20	Lexus	LX	2020	WHITE	85229	52001	V6	AUTOMATIC
25	1	Lexus	RX	2021	BLACK	85289	55500	V6	AUTOMATIC
3	8	Tesla	Model S	2019	GREY	61000	85281	ELECTRIC	AUTOMATIC
26	4	Toyota	4Runner	2020	Blue	85286	55500	V4	MANUAL
23	18	Nissan	Leaf	2019	WHITE	85005	85286	ELECTRIC	AUTOMATIC
1	18	Tesla	Model 3	2018	RED	42000	85286	ELECTRIC	AUTOMATIC
\.


--
-- Data for Name: contacts; Type: TABLE DATA; Schema: public; Owner: rdbxscrg
--

COPY public.contacts (co_cuid, co_sid, co_cid, co_cu_email, co_msg) FROM stdin;
111	18	1	ditto@gmail.com	What is the max miles at the full charge of the battery?
112	3	2	rogon@gmail.com	I interested in buying can we set a date?
113	4	5	aeder@gmail.com	I am interested can I get the carfax for this?
114	19	4	Gener@gmail.com	The car looks amazing can I get a test drive?
115	5	11	Gener@gmail.com	Can I get pictures of the interior?
116	7	15	Gener@gmail.com	I really like the car but can we negotiate price?
117	17	19	Gener@gmail.com	I would like to inquire more about the car can I setup a time to call?
118	5	22	SID@gmail.com	Is it possible meet somewhere, I would just like to pay with cash?
119	19	4	SID@gmail.com	Are there other interested buyers?  If yes I would like to meet as soon as possible.
120	13	12	drive@gmail.com	I am really interested.  Could we set a time to negotiate?
\.


--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: rdbxscrg
--

COPY public.customer (cu_cuid) FROM stdin;
111
112
113
114
115
116
117
118
119
120
\.


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: rdbxscrg
--

COPY public.posts (p_sid, p_cid, p_date) FROM stdin;
8	3	2021-12-27
19	4	2021-08-27
4	5	2020-02-27
1	6	2021-02-27
6	7	2020-01-27
12	8	2020-05-11
11	9	2019-09-11
1	10	2020-09-15
5	11	2020-03-15
13	12	2019-04-15
14	13	2018-06-06
16	14	2017-07-06
7	15	2019-04-06
10	16	2020-10-06
20	17	2020-11-06
15	18	2021-12-06
17	19	2020-09-06
12	21	2010-10-30
5	22	2013-01-30
18	23	2020-02-11
20	24	2021-05-11
1	25	2022-01-11
\.


--
-- Data for Name: seller; Type: TABLE DATA; Schema: public; Owner: rdbxscrg
--

COPY public.seller (s_sid, s_address, s_name, s_email, s_phone) FROM stdin;
1                                                                                                   	1234 Indigo Ln Phoenix,AZ 85224	Bob Anderson	racer123@yahoo.com	4809332334
2                                                                                                   	2265 Mars Ln Phoenix,AZ 85386	Kim Woods	rargyse@yahoo.com	4808223435
3                                                                                                   	16285 Pegasus Ln Phoenix,AZ 86533	Johnny Do	asdkdfj@yahoo.com	4802932939
4                                                                                                   	17832 Crenshaw Ln Peoria,AZ 85333	Pam Oliver	dkalkw@yahoo.com	4803345236
5                                                                                                   	1023 Shadow Dr Gilbert,AZ 85266	Diane Sorenson	bkslake@yahoo.com	4803256623
6                                                                                                   	23646 Pine Dr Chandler,AZ 82366	Zen Tran	lksdkks@yahoo.com	4803426623
7                                                                                                   	23353 Magnolia Dr Chandler,AZ 82536	Bob Sanchez	driksbe@yahoo.com	4806323133
8                                                                                                   	23453 New York Pl Scottsdale,AZ 85636	Sue Garcia	2334skdks@yahoo.com	4803362366
9                                                                                                   	39928 Shining Pl Scottsdale,AZ 85636	Nick Young	3452cckdks@yahoo.com	4809093124
10                                                                                                  	332 Courting Pl Tucson,AZ 81636	Sam Jameson	32343s3s@yahoo.com	6063231453
11                                                                                                  	5231 Turtle Pl Tucson,AZ 81676	Jimmy Buelher	dfdsd3s@yahoo.com	6063233532
12                                                                                                  	10993 Horizon Pl Tucson,AZ 81600	Dino Bear	nowhere@yahoo.com	6063234432
13                                                                                                  	686 Pear Pl Goodyear,AZ 82600	Boogy Boo	asdlkfsad@yahoo.com	9052324422
14                                                                                                  	37499 Smallbear Dr Goodyear,AZ 82612	Bugs Bunny	2335dddd@yahoo.com	9052325522
15                                                                                                  	1053 Drake Dr Goodyear,AZ 83566	Daffy Duck	tiondddd@yahoo.com	905233265 
16                                                                                                  	12135 Joker Dr Avondale,AZ 83413	Brady James	sdaseddd@yahoo.com	8586228324
17                                                                                                  	1623 Fallon Dr Avondale,AZ 82413	John Banks	sds2233seddd@yahoo.com	4809223983
18                                                                                                  	9032 Buck St Mesa,AZ 89232	Juliet Smalls	cornssld@yahoo.com	4803230013
19                                                                                                  	5232 Anderson St Mesa,AZ 89252	Joann Tinsley	dslkdowd@yahoo.com	4809323023
20                                                                                                  	234555 Morant St Mesa,AZ 89252	Timmy Tee	signwlkl@yahoo.com	4809322332
\.


--
-- Data for Name: views; Type: TABLE DATA; Schema: public; Owner: rdbxscrg
--

COPY public.views (v_cuid, v_cid, v_count) FROM stdin;
111	1	23
112	2	15
113	5	14
114	4	5
115	11	8
116	15	4
117	19	11
118	22	5
119	4	9
120	12	9
\.


--
-- Name: car car_c_cid_key; Type: CONSTRAINT; Schema: public; Owner: rdbxscrg
--

ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_c_cid_key UNIQUE (c_cid);


--
-- Name: car car_pkey; Type: CONSTRAINT; Schema: public; Owner: rdbxscrg
--

ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_pkey PRIMARY KEY (c_cid, c_sid);


--
-- Name: contacts contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: rdbxscrg
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_pkey PRIMARY KEY (co_cuid, co_sid, co_cid);


--
-- Name: customer customer_cu_cuid_key; Type: CONSTRAINT; Schema: public; Owner: rdbxscrg
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_cu_cuid_key UNIQUE (cu_cuid);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: rdbxscrg
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (p_sid, p_cid);


--
-- Name: seller seller_pkey; Type: CONSTRAINT; Schema: public; Owner: rdbxscrg
--

ALTER TABLE ONLY public.seller
    ADD CONSTRAINT seller_pkey PRIMARY KEY (s_sid);


--
-- Name: views views_pkey; Type: CONSTRAINT; Schema: public; Owner: rdbxscrg
--

ALTER TABLE ONLY public.views
    ADD CONSTRAINT views_pkey PRIMARY KEY (v_cuid, v_cid);


--
-- Name: car car_c_sid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rdbxscrg
--

ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_c_sid_fkey FOREIGN KEY (c_sid) REFERENCES public.seller(s_sid);


--
-- Name: contacts contacts_co_cid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rdbxscrg
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_co_cid_fkey FOREIGN KEY (co_cid) REFERENCES public.car(c_cid);


--
-- Name: contacts contacts_co_cuid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rdbxscrg
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_co_cuid_fkey FOREIGN KEY (co_cuid) REFERENCES public.customer(cu_cuid);


--
-- Name: contacts contacts_co_sid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rdbxscrg
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_co_sid_fkey FOREIGN KEY (co_sid) REFERENCES public.seller(s_sid);


--
-- Name: posts posts_p_cid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rdbxscrg
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_p_cid_fkey FOREIGN KEY (p_cid) REFERENCES public.car(c_cid);


--
-- Name: posts posts_p_sid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rdbxscrg
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_p_sid_fkey FOREIGN KEY (p_sid) REFERENCES public.seller(s_sid);


--
-- Name: views views_v_cid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rdbxscrg
--

ALTER TABLE ONLY public.views
    ADD CONSTRAINT views_v_cid_fkey FOREIGN KEY (v_cid) REFERENCES public.car(c_cid);


--
-- Name: views views_v_cuid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rdbxscrg
--

ALTER TABLE ONLY public.views
    ADD CONSTRAINT views_v_cuid_fkey FOREIGN KEY (v_cuid) REFERENCES public.customer(cu_cuid);


--
-- PostgreSQL database dump complete
--

