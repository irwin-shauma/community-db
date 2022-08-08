--
-- PostgreSQL database dump
--

-- Dumped from database version 11.16
-- Dumped by pg_dump version 11.16

-- Started on 2022-08-08 14:29:01

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
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 3072 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 197 (class 1259 OID 23192)
-- Name: article_header; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.article_header (
    id character varying(36) NOT NULL,
    article_header_code character varying(36),
    file_id character varying(36),
    title text,
    contents text,
    created_at timestamp without time zone,
    created_by character varying(36),
    updated_at timestamp without time zone,
    updated_by character varying(36),
    is_active boolean,
    version integer
);


ALTER TABLE public.article_header OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 23198)
-- Name: balance; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.balance (
    id character varying(36) NOT NULL,
    balance_code character varying(36),
    user_id character varying(36),
    current_balance double precision,
    created_at timestamp without time zone,
    created_by character varying(36),
    updated_at timestamp without time zone,
    updated_by character varying(36),
    is_active boolean,
    version integer
);


ALTER TABLE public.balance OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 23201)
-- Name: bookmark; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bookmark (
    id character varying(36) NOT NULL,
    bookmark_code character varying(36),
    user_id character varying(36),
    thread_id character varying(36),
    created_at timestamp without time zone,
    created_by character varying(36),
    updated_at timestamp without time zone,
    updated_by character varying(36),
    is_active boolean,
    version integer
);


ALTER TABLE public.bookmark OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 23204)
-- Name: event_detail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.event_detail (
    id character varying(36) NOT NULL,
    event_detail_code character varying(36),
    event_header_id character varying(36),
    price double precision,
    start_date timestamp without time zone,
    end_date timestamp without time zone,
    provider text,
    locations text,
    created_at timestamp without time zone,
    created_by character varying(36),
    updated_at timestamp without time zone,
    updated_by character varying(36),
    is_active boolean,
    version integer
);


ALTER TABLE public.event_detail OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 23210)
-- Name: event_header; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.event_header (
    id character varying(36) NOT NULL,
    event_header_code character varying(36),
    event_type_id character varying(36),
    file_id character varying(36),
    title text,
    user_id character varying(36),
    created_at timestamp without time zone,
    created_by character varying(36),
    updated_at timestamp without time zone,
    updated_by character varying(36),
    is_active boolean,
    version integer
);


ALTER TABLE public.event_header OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 23228)
-- Name: event_payment_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.event_payment_history (
    id character varying(36) NOT NULL,
    event_payment_history_code character varying(36),
    payment_id character varying(36),
    user_id character varying(36),
    event_header_id character varying(36),
    trx_no text,
    created_at timestamp without time zone,
    created_by character varying(36),
    updated_at timestamp without time zone,
    updated_by character varying(36),
    is_active boolean,
    version integer
);


ALTER TABLE public.event_payment_history OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 23216)
-- Name: event_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.event_type (
    id character varying(36) NOT NULL,
    event_type_code character varying(36),
    type text,
    created_at timestamp without time zone,
    created_by character varying(36),
    updated_at timestamp without time zone,
    updated_by character varying(36),
    is_active boolean,
    version integer
);


ALTER TABLE public.event_type OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 23222)
-- Name: file; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.file (
    id character varying(36) NOT NULL,
    file_code character varying(36),
    file_name text,
    file_ext text,
    created_at timestamp without time zone,
    created_by character varying(36),
    updated_at timestamp without time zone,
    updated_by character varying(36),
    is_active boolean,
    version integer
);


ALTER TABLE public.file OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 23243)
-- Name: payment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment (
    id character varying(36) NOT NULL,
    payment_code character varying(36),
    file_id character varying(36),
    user_id character varying(36),
    status character varying(36),
    created_at timestamp without time zone,
    created_by character varying(36),
    updated_at timestamp without time zone,
    updated_by character varying(36),
    is_active boolean,
    version integer
);


ALTER TABLE public.payment OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 23234)
-- Name: premium_payment_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.premium_payment_history (
    id character varying(36) NOT NULL,
    premium_payment_history_code character varying(36),
    payment_id character varying(36),
    user_id character varying(36),
    premium_type_id character varying(36),
    trx_no text,
    created_at timestamp without time zone,
    created_by character varying(36),
    updated_at timestamp without time zone,
    updated_by character varying(36),
    is_active boolean,
    version integer
);


ALTER TABLE public.premium_payment_history OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 23240)
-- Name: premium_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.premium_type (
    id character varying(36) NOT NULL,
    premium_type_code character varying(36),
    price character varying(36),
    duration integer,
    created_at timestamp without time zone,
    created_by character varying(36),
    updated_at timestamp without time zone,
    updated_by character varying(36),
    is_active boolean,
    version integer
);


ALTER TABLE public.premium_type OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 23246)
-- Name: profile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profile (
    id character varying(36) NOT NULL,
    profile_code character varying(36),
    premium_payment_history_id character varying(36),
    file_id character varying(36),
    full_name text,
    company text,
    industry text,
    positions text,
    created_at timestamp without time zone,
    created_by character varying(36),
    updated_at timestamp without time zone,
    updated_by character varying(36),
    is_active boolean,
    version integer
);


ALTER TABLE public.profile OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 23252)
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    id character varying(36) NOT NULL,
    role_code character varying(36),
    role_name text,
    created_at timestamp without time zone,
    created_by character varying(36),
    updated_at timestamp without time zone,
    updated_by character varying(36),
    is_active boolean,
    version integer
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 23258)
-- Name: thread_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.thread_details (
    id character varying(36) NOT NULL,
    thread_detail_code character varying(36),
    thread_header_id character varying(36),
    user_id character varying(36),
    comment_thread text,
    created_at timestamp without time zone,
    created_by character varying(36),
    updated_at timestamp without time zone,
    updated_by character varying(36),
    is_active boolean,
    version integer
);


ALTER TABLE public.thread_details OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 23270)
-- Name: thread_headers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.thread_headers (
    id character varying(36) NOT NULL,
    thread_header_code character varying(36),
    thread_type_id character varying(36),
    user_id character varying(36),
    file_id character varying(36),
    title text,
    content_thread text,
    created_at timestamp without time zone,
    created_by character varying(36),
    updated_at timestamp without time zone,
    updated_by character varying(36),
    is_active boolean,
    version integer
);


ALTER TABLE public.thread_headers OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 23276)
-- Name: thread_like; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.thread_like (
    id character varying(36) NOT NULL,
    thread_like_code character varying(36),
    user_id character varying(36),
    thread_id character varying(36),
    created_at timestamp without time zone,
    created_by character varying(36),
    updated_at timestamp without time zone,
    updated_by character varying(36),
    is_active boolean,
    version integer
);


ALTER TABLE public.thread_like OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 23282)
-- Name: thread_polling_answer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.thread_polling_answer (
    id character varying(36) NOT NULL,
    thread_polling_answer_code character varying(36),
    thread_detail_polling_id character varying(36),
    user_id character varying(36),
    created_at timestamp without time zone,
    created_by character varying(36),
    updated_at timestamp without time zone,
    updated_by character varying(36),
    is_active boolean,
    version integer
);


ALTER TABLE public.thread_polling_answer OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 23285)
-- Name: thread_polling_detail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.thread_polling_detail (
    id character varying(36) NOT NULL,
    thread_polling_detail_code character varying(36),
    thread_polling_header_id character varying(36),
    polling_choice text,
    created_at timestamp without time zone,
    created_by character varying(36),
    updated_at timestamp without time zone,
    updated_by character varying(36),
    is_active boolean,
    version integer
);


ALTER TABLE public.thread_polling_detail OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 23264)
-- Name: thread_polling_header; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.thread_polling_header (
    id character varying(36) NOT NULL,
    thread_polling_header_code character varying(36),
    title_polling text,
    content_polling text,
    polling_question text,
    created_at timestamp without time zone,
    created_by character varying(36),
    updated_at timestamp without time zone,
    updated_by character varying(36),
    is_active boolean,
    version integer
);


ALTER TABLE public.thread_polling_header OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 23279)
-- Name: thread_polling_like; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.thread_polling_like (
    id character varying(36) NOT NULL,
    thread_polling_like_code character varying(36),
    user_id character varying(36),
    thread_polling_header_id character varying(36),
    created_at timestamp without time zone,
    created_by character varying(36),
    updated_at timestamp without time zone,
    updated_by character varying(36),
    is_active boolean,
    version integer
);


ALTER TABLE public.thread_polling_like OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 23291)
-- Name: thread_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.thread_types (
    id character varying(36) NOT NULL,
    thread_types_code character varying(36),
    thread_type text,
    created_at timestamp without time zone,
    created_by character varying(36),
    updated_at timestamp without time zone,
    updated_by character varying(36),
    is_active boolean,
    version integer
);


ALTER TABLE public.thread_types OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 23303)
-- Name: tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tokens (
    id character varying(36) NOT NULL,
    refresh_token text,
    expired_date timestamp without time zone,
    created_by character varying(36),
    created_at timestamp without time zone,
    updated_by character varying(36),
    updated_at timestamp without time zone,
    is_active boolean,
    version integer
);


ALTER TABLE public.tokens OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 23297)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id character varying(36) NOT NULL,
    users_code character varying(36),
    role_id character varying(36),
    profile_id character varying(36),
    token_id character varying(36),
    email text,
    passwords text,
    created_at timestamp without time zone,
    created_by character varying(36),
    updated_at timestamp without time zone,
    updated_by character varying(36),
    is_active boolean,
    version integer
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 3044 (class 0 OID 23192)
-- Dependencies: 197
-- Data for Name: article_header; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.article_header (id, article_header_code, file_id, title, contents, created_at, created_by, updated_at, updated_by, is_active, version) FROM stdin;
\.


--
-- TOC entry 3045 (class 0 OID 23198)
-- Dependencies: 198
-- Data for Name: balance; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.balance (id, balance_code, user_id, current_balance, created_at, created_by, updated_at, updated_by, is_active, version) FROM stdin;
\.


--
-- TOC entry 3046 (class 0 OID 23201)
-- Dependencies: 199
-- Data for Name: bookmark; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bookmark (id, bookmark_code, user_id, thread_id, created_at, created_by, updated_at, updated_by, is_active, version) FROM stdin;
\.


--
-- TOC entry 3047 (class 0 OID 23204)
-- Dependencies: 200
-- Data for Name: event_detail; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.event_detail (id, event_detail_code, event_header_id, price, start_date, end_date, provider, locations, created_at, created_by, updated_at, updated_by, is_active, version) FROM stdin;
\.


--
-- TOC entry 3048 (class 0 OID 23210)
-- Dependencies: 201
-- Data for Name: event_header; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.event_header (id, event_header_code, event_type_id, file_id, title, user_id, created_at, created_by, updated_at, updated_by, is_active, version) FROM stdin;
\.


--
-- TOC entry 3051 (class 0 OID 23228)
-- Dependencies: 204
-- Data for Name: event_payment_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.event_payment_history (id, event_payment_history_code, payment_id, user_id, event_header_id, trx_no, created_at, created_by, updated_at, updated_by, is_active, version) FROM stdin;
\.


--
-- TOC entry 3049 (class 0 OID 23216)
-- Dependencies: 202
-- Data for Name: event_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.event_type (id, event_type_code, type, created_at, created_by, updated_at, updated_by, is_active, version) FROM stdin;
\.


--
-- TOC entry 3050 (class 0 OID 23222)
-- Dependencies: 203
-- Data for Name: file; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.file (id, file_code, file_name, file_ext, created_at, created_by, updated_at, updated_by, is_active, version) FROM stdin;
\.


--
-- TOC entry 3054 (class 0 OID 23243)
-- Dependencies: 207
-- Data for Name: payment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payment (id, payment_code, file_id, user_id, status, created_at, created_by, updated_at, updated_by, is_active, version) FROM stdin;
\.


--
-- TOC entry 3052 (class 0 OID 23234)
-- Dependencies: 205
-- Data for Name: premium_payment_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.premium_payment_history (id, premium_payment_history_code, payment_id, user_id, premium_type_id, trx_no, created_at, created_by, updated_at, updated_by, is_active, version) FROM stdin;
\.


--
-- TOC entry 3053 (class 0 OID 23240)
-- Dependencies: 206
-- Data for Name: premium_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.premium_type (id, premium_type_code, price, duration, created_at, created_by, updated_at, updated_by, is_active, version) FROM stdin;
\.


--
-- TOC entry 3055 (class 0 OID 23246)
-- Dependencies: 208
-- Data for Name: profile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profile (id, profile_code, premium_payment_history_id, file_id, full_name, company, industry, positions, created_at, created_by, updated_at, updated_by, is_active, version) FROM stdin;
3ba2a85a-084d-40a3-9bf5-4ee9fdce7e4a	fe286e68-1386-4438-884f-d8dace668ef0	\N	\N	Admin	Lawencon	IT	Manager	2022-08-08 11:50:03.638309	\N	2022-08-08 11:50:03.638309	\N	t	0
343acb24-084d-40a3-9bf5-4ee9fdce7e77	d9c80bf4-3f2d-44ab-8632-e08cf14fb8e4	\N	\N	Member	Lawencon	IT	Karyawan	2022-08-08 11:50:03.638309	\N	2022-08-08 11:50:03.638309	\N	t	0
a6a657c9-a5b1-487d-9ad1-f4417751f298	zpQue	\N	\N	Irwin	Lwencon	IT	Manager	2022-08-08 13:28:31.88576	e61954ac-f866-4b67-8524-bec50bd23aa7	\N	\N	t	0
\.


--
-- TOC entry 3056 (class 0 OID 23252)
-- Dependencies: 209
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles (id, role_code, role_name, created_at, created_by, updated_at, updated_by, is_active, version) FROM stdin;
dbbda007-34bd-4c68-bfca-4bc97881fef2	SYSTEM	System	2022-08-08 11:50:03.638309	\N	2022-08-08 11:50:03.638309	\N	t	0
35a2b727-6c8a-4448-a14a-3d15c5c1beef	MEMBER	Member	2022-08-08 11:50:03.638309	\N	2022-08-08 11:50:03.638309	\N	t	0
\.


--
-- TOC entry 3057 (class 0 OID 23258)
-- Dependencies: 210
-- Data for Name: thread_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.thread_details (id, thread_detail_code, thread_header_id, user_id, comment_thread, created_at, created_by, updated_at, updated_by, is_active, version) FROM stdin;
\.


--
-- TOC entry 3059 (class 0 OID 23270)
-- Dependencies: 212
-- Data for Name: thread_headers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.thread_headers (id, thread_header_code, thread_type_id, user_id, file_id, title, content_thread, created_at, created_by, updated_at, updated_by, is_active, version) FROM stdin;
\.


--
-- TOC entry 3060 (class 0 OID 23276)
-- Dependencies: 213
-- Data for Name: thread_like; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.thread_like (id, thread_like_code, user_id, thread_id, created_at, created_by, updated_at, updated_by, is_active, version) FROM stdin;
\.


--
-- TOC entry 3062 (class 0 OID 23282)
-- Dependencies: 215
-- Data for Name: thread_polling_answer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.thread_polling_answer (id, thread_polling_answer_code, thread_detail_polling_id, user_id, created_at, created_by, updated_at, updated_by, is_active, version) FROM stdin;
\.


--
-- TOC entry 3063 (class 0 OID 23285)
-- Dependencies: 216
-- Data for Name: thread_polling_detail; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.thread_polling_detail (id, thread_polling_detail_code, thread_polling_header_id, polling_choice, created_at, created_by, updated_at, updated_by, is_active, version) FROM stdin;
\.


--
-- TOC entry 3058 (class 0 OID 23264)
-- Dependencies: 211
-- Data for Name: thread_polling_header; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.thread_polling_header (id, thread_polling_header_code, title_polling, content_polling, polling_question, created_at, created_by, updated_at, updated_by, is_active, version) FROM stdin;
\.


--
-- TOC entry 3061 (class 0 OID 23279)
-- Dependencies: 214
-- Data for Name: thread_polling_like; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.thread_polling_like (id, thread_polling_like_code, user_id, thread_polling_header_id, created_at, created_by, updated_at, updated_by, is_active, version) FROM stdin;
\.


--
-- TOC entry 3064 (class 0 OID 23291)
-- Dependencies: 217
-- Data for Name: thread_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.thread_types (id, thread_types_code, thread_type, created_at, created_by, updated_at, updated_by, is_active, version) FROM stdin;
52920899-71ae-4adf-83f9-46dac23a730a	88959a04-e091-43a3-9ddc-89b7ad9c94d8	Regular	2022-08-08 11:50:03.638309	e61954ac-f866-4b67-8524-bec50bd23aa7	\N	\N	t	0
804a3c7a-d94a-4d8a-a30a-285b3c263e6d	48c3499f-ce42-46c6-bc7e-20050f88e44e	Premium	2022-08-08 11:50:03.638309	e61954ac-f866-4b67-8524-bec50bd23aa7	\N	\N	t	0
\.


--
-- TOC entry 3066 (class 0 OID 23303)
-- Dependencies: 219
-- Data for Name: tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tokens (id, refresh_token, expired_date, created_by, created_at, updated_by, updated_at, is_active, version) FROM stdin;
1091d403-edad-44be-b7b1-6af2eb9c7b7a	d18d94af-c91e-4dac-9fde-bbe241c99932	2022-08-15 11:43:14.368008	2c55391b-2c58-4beb-a97a-f8482991efb7	2022-08-08 11:57:02.280858	\N	\N	t	0
bac6eda9-7495-4c98-8488-85d000891b0e	22b111ee-0ef3-48b8-bdce-3d3d04359cbe	2022-08-15 13:27:35.591844	c9bbbe99-0e43-41c0-a90f-3298ede4c161	2022-08-08 13:29:14.999644	\N	\N	t	0
f448062c-a5fd-4a78-81d1-c962ef6dedd1	8f413810-5d03-47ed-90d6-39c3314f487e	2022-08-15 13:27:35.591844	e61954ac-f866-4b67-8524-bec50bd23aa7	2022-08-08 13:47:20.470537	\N	\N	t	0
\.


--
-- TOC entry 3065 (class 0 OID 23297)
-- Dependencies: 218
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, users_code, role_id, profile_id, token_id, email, passwords, created_at, created_by, updated_at, updated_by, is_active, version) FROM stdin;
2c55391b-2c58-4beb-a97a-f8482991efb7	a964a2bd-132a-44cf-aa7d-87c9c7d2e350	35a2b727-6c8a-4448-a14a-3d15c5c1beef	343acb24-084d-40a3-9bf5-4ee9fdce7e77	1091d403-edad-44be-b7b1-6af2eb9c7b7a	member	$2a$10$n.MxDi1fkcGXUoO7jiwJEundWIoYsyWhWzpEKZmkbPBpc9Zy2/gym	2022-08-08 11:50:03.638309	\N	2022-08-08 11:57:02.284272	2c55391b-2c58-4beb-a97a-f8482991efb7	t	1
c9bbbe99-0e43-41c0-a90f-3298ede4c161	czcSj	35a2b727-6c8a-4448-a14a-3d15c5c1beef	a6a657c9-a5b1-487d-9ad1-f4417751f298	bac6eda9-7495-4c98-8488-85d000891b0e	irwin.shauma.rizky@gmail.com	$2a$10$tA2F8HPWyTirf73CjgX3zetkBWWUkbn1HT.WI0RuMdtyMaZbkMzUK	2022-08-08 13:28:31.916009	e61954ac-f866-4b67-8524-bec50bd23aa7	2022-08-08 13:29:15.012649	c9bbbe99-0e43-41c0-a90f-3298ede4c161	t	1
e61954ac-f866-4b67-8524-bec50bd23aa7	a98b21b6-5b89-46bf-8383-0c580cc8b5d7	dbbda007-34bd-4c68-bfca-4bc97881fef2	3ba2a85a-084d-40a3-9bf5-4ee9fdce7e4a	f448062c-a5fd-4a78-81d1-c962ef6dedd1	admin	$2a$10$pN0DCKfxFrcTgdbiPc62SOtycNH1Hd7qRmLMACR7j9JANR8AR8OKy	2022-08-08 11:50:03.638309	\N	2022-08-08 13:47:20.475548	e61954ac-f866-4b67-8524-bec50bd23aa7	t	1
\.


--
-- TOC entry 2799 (class 2606 OID 23310)
-- Name: article_header article_header_bk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article_header
    ADD CONSTRAINT article_header_bk UNIQUE (article_header_code);


--
-- TOC entry 2801 (class 2606 OID 23312)
-- Name: article_header article_header_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article_header
    ADD CONSTRAINT article_header_pk PRIMARY KEY (id);


--
-- TOC entry 2803 (class 2606 OID 23314)
-- Name: balance balance_bk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.balance
    ADD CONSTRAINT balance_bk UNIQUE (balance_code);


--
-- TOC entry 2805 (class 2606 OID 23316)
-- Name: balance balance_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.balance
    ADD CONSTRAINT balance_pk PRIMARY KEY (id);


--
-- TOC entry 2807 (class 2606 OID 23318)
-- Name: bookmark bookmark_code_bk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bookmark
    ADD CONSTRAINT bookmark_code_bk UNIQUE (bookmark_code);


--
-- TOC entry 2809 (class 2606 OID 23320)
-- Name: bookmark bookmark_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bookmark
    ADD CONSTRAINT bookmark_pk PRIMARY KEY (id);


--
-- TOC entry 2811 (class 2606 OID 23322)
-- Name: event_detail event_detail_bk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_detail
    ADD CONSTRAINT event_detail_bk UNIQUE (event_detail_code);


--
-- TOC entry 2813 (class 2606 OID 23324)
-- Name: event_detail event_detail_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_detail
    ADD CONSTRAINT event_detail_pk PRIMARY KEY (id);


--
-- TOC entry 2815 (class 2606 OID 23326)
-- Name: event_header event_header_bk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_header
    ADD CONSTRAINT event_header_bk UNIQUE (event_header_code);


--
-- TOC entry 2817 (class 2606 OID 23328)
-- Name: event_header event_header_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_header
    ADD CONSTRAINT event_header_pk PRIMARY KEY (id);


--
-- TOC entry 2827 (class 2606 OID 23338)
-- Name: event_payment_history event_payment_history_bk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_payment_history
    ADD CONSTRAINT event_payment_history_bk UNIQUE (event_payment_history_code);


--
-- TOC entry 2829 (class 2606 OID 23340)
-- Name: event_payment_history event_payment_history_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_payment_history
    ADD CONSTRAINT event_payment_history_pk PRIMARY KEY (id);


--
-- TOC entry 2819 (class 2606 OID 23330)
-- Name: event_type event_type_bk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_type
    ADD CONSTRAINT event_type_bk UNIQUE (event_type_code);


--
-- TOC entry 2821 (class 2606 OID 23332)
-- Name: event_type event_type_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_type
    ADD CONSTRAINT event_type_pk PRIMARY KEY (id);


--
-- TOC entry 2823 (class 2606 OID 23334)
-- Name: file file_bk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.file
    ADD CONSTRAINT file_bk UNIQUE (file_code);


--
-- TOC entry 2825 (class 2606 OID 23336)
-- Name: file file_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.file
    ADD CONSTRAINT file_pk PRIMARY KEY (id);


--
-- TOC entry 2839 (class 2606 OID 23350)
-- Name: payment payment_bk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_bk UNIQUE (payment_code);


--
-- TOC entry 2841 (class 2606 OID 23352)
-- Name: payment payment_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_pk PRIMARY KEY (id);


--
-- TOC entry 2831 (class 2606 OID 23342)
-- Name: premium_payment_history premium_payment_history_bk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.premium_payment_history
    ADD CONSTRAINT premium_payment_history_bk UNIQUE (premium_payment_history_code);


--
-- TOC entry 2833 (class 2606 OID 23344)
-- Name: premium_payment_history premium_payment_history_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.premium_payment_history
    ADD CONSTRAINT premium_payment_history_pk PRIMARY KEY (id);


--
-- TOC entry 2835 (class 2606 OID 23346)
-- Name: premium_type premium_type_bk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.premium_type
    ADD CONSTRAINT premium_type_bk UNIQUE (premium_type_code);


--
-- TOC entry 2837 (class 2606 OID 23348)
-- Name: premium_type premium_type_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.premium_type
    ADD CONSTRAINT premium_type_pk PRIMARY KEY (id);


--
-- TOC entry 2843 (class 2606 OID 23354)
-- Name: profile profile_code_bk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_code_bk UNIQUE (profile_code);


--
-- TOC entry 2845 (class 2606 OID 23356)
-- Name: profile profile_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_pk PRIMARY KEY (id);


--
-- TOC entry 2847 (class 2606 OID 23358)
-- Name: roles role_code_bk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT role_code_bk UNIQUE (role_code);


--
-- TOC entry 2849 (class 2606 OID 23360)
-- Name: roles role_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT role_pk PRIMARY KEY (id);


--
-- TOC entry 2851 (class 2606 OID 23362)
-- Name: thread_details thread_detail_code_bk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.thread_details
    ADD CONSTRAINT thread_detail_code_bk UNIQUE (thread_detail_code);


--
-- TOC entry 2853 (class 2606 OID 23364)
-- Name: thread_details thread_detail_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.thread_details
    ADD CONSTRAINT thread_detail_pk PRIMARY KEY (id);


--
-- TOC entry 2859 (class 2606 OID 23366)
-- Name: thread_headers thread_header_bk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.thread_headers
    ADD CONSTRAINT thread_header_bk UNIQUE (thread_header_code);


--
-- TOC entry 2861 (class 2606 OID 23368)
-- Name: thread_headers thread_header_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.thread_headers
    ADD CONSTRAINT thread_header_pk PRIMARY KEY (id);


--
-- TOC entry 2863 (class 2606 OID 23374)
-- Name: thread_like thread_like_bk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.thread_like
    ADD CONSTRAINT thread_like_bk UNIQUE (thread_like_code);


--
-- TOC entry 2865 (class 2606 OID 23376)
-- Name: thread_like thread_like_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.thread_like
    ADD CONSTRAINT thread_like_pk PRIMARY KEY (id);


--
-- TOC entry 2871 (class 2606 OID 23382)
-- Name: thread_polling_answer thread_polling_answer_bk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.thread_polling_answer
    ADD CONSTRAINT thread_polling_answer_bk UNIQUE (thread_polling_answer_code);


--
-- TOC entry 2873 (class 2606 OID 23384)
-- Name: thread_polling_answer thread_polling_answer_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.thread_polling_answer
    ADD CONSTRAINT thread_polling_answer_pk PRIMARY KEY (id);


--
-- TOC entry 2875 (class 2606 OID 23386)
-- Name: thread_polling_detail thread_polling_detail_bk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.thread_polling_detail
    ADD CONSTRAINT thread_polling_detail_bk UNIQUE (thread_polling_detail_code);


--
-- TOC entry 2877 (class 2606 OID 23388)
-- Name: thread_polling_detail thread_polling_detail_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.thread_polling_detail
    ADD CONSTRAINT thread_polling_detail_pk PRIMARY KEY (id);


--
-- TOC entry 2855 (class 2606 OID 23370)
-- Name: thread_polling_header thread_polling_header_bk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.thread_polling_header
    ADD CONSTRAINT thread_polling_header_bk UNIQUE (thread_polling_header_code);


--
-- TOC entry 2857 (class 2606 OID 23372)
-- Name: thread_polling_header thread_polling_header_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.thread_polling_header
    ADD CONSTRAINT thread_polling_header_pk PRIMARY KEY (id);


--
-- TOC entry 2867 (class 2606 OID 23378)
-- Name: thread_polling_like thread_polling_like_bk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.thread_polling_like
    ADD CONSTRAINT thread_polling_like_bk UNIQUE (thread_polling_like_code);


--
-- TOC entry 2869 (class 2606 OID 23380)
-- Name: thread_polling_like thread_polling_like_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.thread_polling_like
    ADD CONSTRAINT thread_polling_like_pk PRIMARY KEY (id);


--
-- TOC entry 2879 (class 2606 OID 23390)
-- Name: thread_types thread_type_bk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.thread_types
    ADD CONSTRAINT thread_type_bk UNIQUE (thread_types_code);


--
-- TOC entry 2881 (class 2606 OID 23392)
-- Name: thread_types thread_type_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.thread_types
    ADD CONSTRAINT thread_type_pk PRIMARY KEY (id);


--
-- TOC entry 2889 (class 2606 OID 23400)
-- Name: tokens token_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT token_pk PRIMARY KEY (id);


--
-- TOC entry 2883 (class 2606 OID 23394)
-- Name: users user_code_bk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT user_code_bk UNIQUE (users_code);


--
-- TOC entry 2885 (class 2606 OID 23396)
-- Name: users user_email_bk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT user_email_bk UNIQUE (email);


--
-- TOC entry 2887 (class 2606 OID 23398)
-- Name: users user_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT user_pk PRIMARY KEY (id);


--
-- TOC entry 2891 (class 2606 OID 23401)
-- Name: balance balance_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.balance
    ADD CONSTRAINT balance_fk FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 2894 (class 2606 OID 23426)
-- Name: event_detail event_header_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_detail
    ADD CONSTRAINT event_header_fk FOREIGN KEY (event_header_id) REFERENCES public.event_header(id);


--
-- TOC entry 2899 (class 2606 OID 23436)
-- Name: event_payment_history event_header_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_payment_history
    ADD CONSTRAINT event_header_fk FOREIGN KEY (event_header_id) REFERENCES public.event_header(id);


--
-- TOC entry 2895 (class 2606 OID 23406)
-- Name: event_header event_type_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_header
    ADD CONSTRAINT event_type_fk FOREIGN KEY (event_type_id) REFERENCES public.event_type(id);


--
-- TOC entry 2896 (class 2606 OID 23411)
-- Name: event_header file_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_header
    ADD CONSTRAINT file_fk FOREIGN KEY (file_id) REFERENCES public.file(id);


--
-- TOC entry 2890 (class 2606 OID 23421)
-- Name: article_header file_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article_header
    ADD CONSTRAINT file_fk FOREIGN KEY (file_id) REFERENCES public.file(id);


--
-- TOC entry 2906 (class 2606 OID 23471)
-- Name: profile file_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profile
    ADD CONSTRAINT file_fk FOREIGN KEY (file_id) REFERENCES public.file(id);


--
-- TOC entry 2912 (class 2606 OID 23526)
-- Name: thread_headers file_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.thread_headers
    ADD CONSTRAINT file_fk FOREIGN KEY (file_id) REFERENCES public.file(id);


--
-- TOC entry 2900 (class 2606 OID 23441)
-- Name: event_payment_history payment_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_payment_history
    ADD CONSTRAINT payment_fk FOREIGN KEY (payment_id) REFERENCES public.payment(id);


--
-- TOC entry 2903 (class 2606 OID 23456)
-- Name: premium_payment_history payment_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.premium_payment_history
    ADD CONSTRAINT payment_fk FOREIGN KEY (payment_id) REFERENCES public.payment(id);


--
-- TOC entry 2904 (class 2606 OID 23461)
-- Name: payment payment_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_fk FOREIGN KEY (file_id) REFERENCES public.file(id);


--
-- TOC entry 2907 (class 2606 OID 23561)
-- Name: profile premium_payment_history_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profile
    ADD CONSTRAINT premium_payment_history_fk FOREIGN KEY (premium_payment_history_id) REFERENCES public.premium_payment_history(id);


--
-- TOC entry 2902 (class 2606 OID 23451)
-- Name: premium_payment_history premium_type_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.premium_payment_history
    ADD CONSTRAINT premium_type_fk FOREIGN KEY (premium_type_id) REFERENCES public.premium_type(id);


--
-- TOC entry 2921 (class 2606 OID 23551)
-- Name: users profile_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT profile_fk FOREIGN KEY (profile_id) REFERENCES public.profile(id);


--
-- TOC entry 2920 (class 2606 OID 23466)
-- Name: users role_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT role_fk FOREIGN KEY (role_id) REFERENCES public.roles(id);


--
-- TOC entry 2908 (class 2606 OID 23476)
-- Name: thread_details thread_details_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.thread_details
    ADD CONSTRAINT thread_details_fk FOREIGN KEY (thread_header_id) REFERENCES public.thread_headers(id);


--
-- TOC entry 2892 (class 2606 OID 23481)
-- Name: bookmark thread_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bookmark
    ADD CONSTRAINT thread_fk FOREIGN KEY (thread_id) REFERENCES public.thread_headers(id);


--
-- TOC entry 2913 (class 2606 OID 23486)
-- Name: thread_like thread_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.thread_like
    ADD CONSTRAINT thread_fk FOREIGN KEY (thread_id) REFERENCES public.thread_headers(id);


--
-- TOC entry 2917 (class 2606 OID 23501)
-- Name: thread_polling_answer thread_polling_answer_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.thread_polling_answer
    ADD CONSTRAINT thread_polling_answer_fk FOREIGN KEY (thread_detail_polling_id) REFERENCES public.thread_polling_detail(id);


--
-- TOC entry 2919 (class 2606 OID 23491)
-- Name: thread_polling_detail thread_polling_header_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.thread_polling_detail
    ADD CONSTRAINT thread_polling_header_fk FOREIGN KEY (thread_polling_header_id) REFERENCES public.thread_polling_header(id);


--
-- TOC entry 2915 (class 2606 OID 23506)
-- Name: thread_polling_like thread_polling_header_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.thread_polling_like
    ADD CONSTRAINT thread_polling_header_fk FOREIGN KEY (thread_polling_header_id) REFERENCES public.thread_polling_header(id);


--
-- TOC entry 2910 (class 2606 OID 23516)
-- Name: thread_headers thread_type_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.thread_headers
    ADD CONSTRAINT thread_type_fk FOREIGN KEY (thread_type_id) REFERENCES public.thread_types(id);


--
-- TOC entry 2922 (class 2606 OID 23556)
-- Name: users token_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT token_fk FOREIGN KEY (token_id) REFERENCES public.tokens(id);


--
-- TOC entry 2897 (class 2606 OID 23416)
-- Name: event_header user_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_header
    ADD CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 2898 (class 2606 OID 23431)
-- Name: event_payment_history user_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_payment_history
    ADD CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 2901 (class 2606 OID 23446)
-- Name: premium_payment_history user_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.premium_payment_history
    ADD CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 2914 (class 2606 OID 23496)
-- Name: thread_like user_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.thread_like
    ADD CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 2916 (class 2606 OID 23511)
-- Name: thread_polling_like user_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.thread_polling_like
    ADD CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 2911 (class 2606 OID 23521)
-- Name: thread_headers user_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.thread_headers
    ADD CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 2893 (class 2606 OID 23531)
-- Name: bookmark user_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bookmark
    ADD CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 2918 (class 2606 OID 23536)
-- Name: thread_polling_answer user_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.thread_polling_answer
    ADD CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 2909 (class 2606 OID 23541)
-- Name: thread_details user_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.thread_details
    ADD CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 2905 (class 2606 OID 23546)
-- Name: payment user_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment
    ADD CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES public.users(id);


-- Completed on 2022-08-08 14:29:01

--
-- PostgreSQL database dump complete
--

