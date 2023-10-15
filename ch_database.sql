--
-- PostgreSQL database dump
--

-- Dumped from database version 16rc1
-- Dumped by pg_dump version 16rc1

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
-- Name: children; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.children (
    id integer NOT NULL,
    familyid integer,
    name character varying(255) NOT NULL,
    dateofbirth date,
    age integer
);


ALTER TABLE public.children OWNER TO postgres;

--
-- Name: children_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.children_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.children_id_seq OWNER TO postgres;

--
-- Name: children_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.children_id_seq OWNED BY public.children.id;


--
-- Name: family; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.family (
    id integer NOT NULL,
    memberid integer,
    spousename character varying(255),
    numberofchildren integer
);


ALTER TABLE public.family OWNER TO postgres;

--
-- Name: family_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.family_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.family_id_seq OWNER TO postgres;

--
-- Name: family_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.family_id_seq OWNED BY public.family.id;


--
-- Name: givinghistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.givinghistory (
    id integer NOT NULL,
    memberid integer,
    amountpaid numeric(10,2),
    paymentdate date,
    amountowed numeric(10,2)
);


ALTER TABLE public.givinghistory OWNER TO postgres;

--
-- Name: givinghistory_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.givinghistory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.givinghistory_id_seq OWNER TO postgres;

--
-- Name: givinghistory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.givinghistory_id_seq OWNED BY public.givinghistory.id;


--
-- Name: involvement; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.involvement (
    id integer NOT NULL,
    memberid integer,
    gengroups text,
    volunteeractivities text
);


ALTER TABLE public.involvement OWNER TO postgres;

--
-- Name: involvement_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.involvement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.involvement_id_seq OWNER TO postgres;

--
-- Name: involvement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.involvement_id_seq OWNED BY public.involvement.id;


--
-- Name: members; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.members (
    id integer NOT NULL,
    name character varying(255),
    dateofbirth date,
    dayborn character varying(255),
    age integer,
    parentsname character varying(255),
    hometownaddress text,
    residenceaddress text,
    occupation character varying(255),
    phonenumber character varying(255),
    emailaddress character varying(255),
    maritalstatus character varying(255),
    hobbies text
);


ALTER TABLE public.members OWNER TO postgres;

--
-- Name: members_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.members_id_seq OWNER TO postgres;

--
-- Name: members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.members_id_seq OWNED BY public.members.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    staff_id integer NOT NULL,
    password text NOT NULL,
    email character varying(255)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: children id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.children ALTER COLUMN id SET DEFAULT nextval('public.children_id_seq'::regclass);


--
-- Name: family id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.family ALTER COLUMN id SET DEFAULT nextval('public.family_id_seq'::regclass);


--
-- Name: givinghistory id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.givinghistory ALTER COLUMN id SET DEFAULT nextval('public.givinghistory_id_seq'::regclass);


--
-- Name: involvement id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.involvement ALTER COLUMN id SET DEFAULT nextval('public.involvement_id_seq'::regclass);


--
-- Name: members id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.members ALTER COLUMN id SET DEFAULT nextval('public.members_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: children; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.children (id, familyid, name, dateofbirth, age) FROM stdin;
\.


--
-- Data for Name: family; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.family (id, memberid, spousename, numberofchildren) FROM stdin;
\.


--
-- Data for Name: givinghistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.givinghistory (id, memberid, amountpaid, paymentdate, amountowed) FROM stdin;
\.


--
-- Data for Name: involvement; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.involvement (id, memberid, gengroups, volunteeractivities) FROM stdin;
\.


--
-- Data for Name: members; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.members (id, name, dateofbirth, dayborn, age, parentsname, hometownaddress, residenceaddress, occupation, phonenumber, emailaddress, maritalstatus, hobbies) FROM stdin;
2	Isaac Larbi	2023-10-10		12			Hall Six-F35, KNUST	Student	123456	larbisammy18@gmail.com		
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, staff_id, password, email) FROM stdin;
1	1234	1234	\N
\.


--
-- Name: children_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.children_id_seq', 1, false);


--
-- Name: family_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.family_id_seq', 1, false);


--
-- Name: givinghistory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.givinghistory_id_seq', 1, false);


--
-- Name: involvement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.involvement_id_seq', 1, false);


--
-- Name: members_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.members_id_seq', 2, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: children children_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.children
    ADD CONSTRAINT children_pkey PRIMARY KEY (id);


--
-- Name: family family_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.family
    ADD CONSTRAINT family_pkey PRIMARY KEY (id);


--
-- Name: givinghistory givinghistory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.givinghistory
    ADD CONSTRAINT givinghistory_pkey PRIMARY KEY (id);


--
-- Name: involvement involvement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.involvement
    ADD CONSTRAINT involvement_pkey PRIMARY KEY (id);


--
-- Name: members members_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.members
    ADD CONSTRAINT members_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users users_staff_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_staff_id_key UNIQUE (staff_id);


--
-- Name: children children_familyid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.children
    ADD CONSTRAINT children_familyid_fkey FOREIGN KEY (familyid) REFERENCES public.family(id);


--
-- Name: children children_familyid_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.children
    ADD CONSTRAINT children_familyid_fkey1 FOREIGN KEY (familyid) REFERENCES public.family(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: family family_memberid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.family
    ADD CONSTRAINT family_memberid_fkey FOREIGN KEY (memberid) REFERENCES public.members(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: family family_memberid_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.family
    ADD CONSTRAINT family_memberid_fkey1 FOREIGN KEY (memberid) REFERENCES public.members(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: children fk_family; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.children
    ADD CONSTRAINT fk_family FOREIGN KEY (familyid) REFERENCES public.family(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: givinghistory fk_member_givinghistory; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.givinghistory
    ADD CONSTRAINT fk_member_givinghistory FOREIGN KEY (memberid) REFERENCES public.members(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: involvement fk_member_involvement; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.involvement
    ADD CONSTRAINT fk_member_involvement FOREIGN KEY (memberid) REFERENCES public.members(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: givinghistory givinghistory_memberid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.givinghistory
    ADD CONSTRAINT givinghistory_memberid_fkey FOREIGN KEY (memberid) REFERENCES public.members(id);


--
-- Name: givinghistory givinghistory_memberid_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.givinghistory
    ADD CONSTRAINT givinghistory_memberid_fkey1 FOREIGN KEY (memberid) REFERENCES public.members(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: involvement involvement_memberid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.involvement
    ADD CONSTRAINT involvement_memberid_fkey FOREIGN KEY (memberid) REFERENCES public.members(id);


--
-- Name: involvement involvement_memberid_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.involvement
    ADD CONSTRAINT involvement_memberid_fkey1 FOREIGN KEY (memberid) REFERENCES public.members(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

