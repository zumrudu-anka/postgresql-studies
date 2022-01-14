--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

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
-- Name: ADDRESS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ADDRESS" (
    "ID" integer NOT NULL,
    "USER_ID" integer NOT NULL,
    "COUNTRY_ID" smallint NOT NULL,
    "CITY_ID" smallint NOT NULL,
    "TOWN_ID" integer,
    "DISTRICT_ID" integer,
    "POSTAL_CODE" character varying(10),
    "ADDRESS_TEXT" character varying(500)
);


ALTER TABLE public."ADDRESS" OWNER TO postgres;

--
-- Name: ADDRESS_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."ADDRESS" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."ADDRESS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: CITIES; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."CITIES" (
    "ID" smallint NOT NULL,
    "COUNTRY_ID" smallint NOT NULL,
    "CITY" character varying(50) NOT NULL
);


ALTER TABLE public."CITIES" OWNER TO postgres;

--
-- Name: CITIES_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."CITIES" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."CITIES_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: COUNTRIES; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."COUNTRIES" (
    "ID" smallint NOT NULL,
    "COUNTRY" character varying(50) NOT NULL
);


ALTER TABLE public."COUNTRIES" OWNER TO postgres;

--
-- Name: COUNTRIES_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."COUNTRIES" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."COUNTRIES_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: DISTRICTS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DISTRICTS" (
    "ID" integer NOT NULL,
    "TOWN_ID" integer NOT NULL,
    "DISTRICT" character varying(50) NOT NULL
);


ALTER TABLE public."DISTRICTS" OWNER TO postgres;

--
-- Name: DISTRICTS_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."DISTRICTS" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."DISTRICTS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: INVOICES; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."INVOICES" (
    "ID" integer NOT NULL,
    "ORDER_ID" integer NOT NULL,
    "ADDRESS_ID" integer NOT NULL,
    "DATE_" timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "CARGO_RECEIPT_NO" character varying(50) NOT NULL,
    "TOTAL_PRICE" money NOT NULL
);


ALTER TABLE public."INVOICES" OWNER TO postgres;

--
-- Name: INVOICES_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."INVOICES" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."INVOICES_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: INVOICE_DETAILS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."INVOICE_DETAILS" (
    "ID" integer NOT NULL,
    "INVOICE_ID" integer NOT NULL,
    "ORDER_DETAIL_ID" integer NOT NULL,
    "ITEM_ID" integer NOT NULL,
    "UNIT_PRICE" money NOT NULL,
    "AMOUNT" integer NOT NULL,
    "LINE_TOTAL" money NOT NULL
);


ALTER TABLE public."INVOICE_DETAILS" OWNER TO postgres;

--
-- Name: INVOICE_DETAILS_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."INVOICE_DETAILS" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."INVOICE_DETAILS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: ITEMS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ITEMS" (
    "ID" integer NOT NULL,
    "ITEM_CODE" character varying(50) NOT NULL,
    "ITEM_NAME" character varying(100) NOT NULL,
    "UNIT_PRICE" money NOT NULL,
    "CATEGORY_1" character varying(50) NOT NULL,
    "CATEGORY_2" character varying(50),
    "CATEGORY_3" character varying(50),
    "CATEGORY_4" character varying(50),
    "BRAND" character varying(50)
);


ALTER TABLE public."ITEMS" OWNER TO postgres;

--
-- Name: ITEMS_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."ITEMS" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."ITEMS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: ORDERS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ORDERS" (
    "ID" integer NOT NULL,
    "USER_ID" integer NOT NULL,
    "DATE_" timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "TOTAL_PRICE" money NOT NULL,
    "STATUS_" smallint NOT NULL,
    "ADDRESS_ID" integer NOT NULL
);


ALTER TABLE public."ORDERS" OWNER TO postgres;

--
-- Name: ORDERS_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."ORDERS" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."ORDERS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: ORDER_DETAILS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ORDER_DETAILS" (
    "ID" integer NOT NULL,
    "ORDER_ID" integer NOT NULL,
    "ITEM_ID" integer NOT NULL,
    "AMOUNT" integer NOT NULL,
    "LINE_TOTAL" money NOT NULL
);


ALTER TABLE public."ORDER_DETAILS" OWNER TO postgres;

--
-- Name: ORDER_DETAILS_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."ORDER_DETAILS" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."ORDER_DETAILS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: PAYMENTS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."PAYMENTS" (
    "ID" integer NOT NULL,
    "ORDER_ID" integer NOT NULL,
    "DATE_" timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "PAYMENT_TYPE" smallint NOT NULL,
    "IS_OK" bit(1) NOT NULL,
    "APPROVE_CODE" character varying(50) NOT NULL,
    "PAYMENT_TOTAL" money NOT NULL
);


ALTER TABLE public."PAYMENTS" OWNER TO postgres;

--
-- Name: PAYMENTS_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."PAYMENTS" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."PAYMENTS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: TOWNS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."TOWNS" (
    "ID" integer NOT NULL,
    "CITY_ID" smallint NOT NULL,
    "TOWN" character varying(50) NOT NULL
);


ALTER TABLE public."TOWNS" OWNER TO postgres;

--
-- Name: TOWNS_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."TOWNS" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."TOWNS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: USERS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."USERS" (
    "ID" integer NOT NULL,
    "USERNAME_" character varying(50) NOT NULL,
    "PASSWORD_" character varying(50) NOT NULL,
    "EMAIL" character varying(50) NOT NULL,
    "GENDER" character varying(1),
    "BIRTH_DATE" date,
    "CREATED_DATE" timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "TEL_NO_1" character varying(15),
    "TEL_NO_2" character varying(15)
);


ALTER TABLE public."USERS" OWNER TO postgres;

--
-- Name: USERS_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."USERS" ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."USERS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: ADDRESS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ADDRESS" ("ID", "USER_ID", "COUNTRY_ID", "CITY_ID", "TOWN_ID", "DISTRICT_ID", "POSTAL_CODE", "ADDRESS_TEXT") FROM stdin;
\.


--
-- Data for Name: CITIES; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."CITIES" ("ID", "COUNTRY_ID", "CITY") FROM stdin;
\.


--
-- Data for Name: COUNTRIES; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."COUNTRIES" ("ID", "COUNTRY") FROM stdin;
\.


--
-- Data for Name: DISTRICTS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."DISTRICTS" ("ID", "TOWN_ID", "DISTRICT") FROM stdin;
\.


--
-- Data for Name: INVOICES; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."INVOICES" ("ID", "ORDER_ID", "ADDRESS_ID", "DATE_", "CARGO_RECEIPT_NO", "TOTAL_PRICE") FROM stdin;
\.


--
-- Data for Name: INVOICE_DETAILS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."INVOICE_DETAILS" ("ID", "INVOICE_ID", "ORDER_DETAIL_ID", "ITEM_ID", "UNIT_PRICE", "AMOUNT", "LINE_TOTAL") FROM stdin;
\.


--
-- Data for Name: ITEMS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ITEMS" ("ID", "ITEM_CODE", "ITEM_NAME", "UNIT_PRICE", "CATEGORY_1", "CATEGORY_2", "CATEGORY_3", "CATEGORY_4", "BRAND") FROM stdin;
\.


--
-- Data for Name: ORDERS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ORDERS" ("ID", "USER_ID", "DATE_", "TOTAL_PRICE", "STATUS_", "ADDRESS_ID") FROM stdin;
\.


--
-- Data for Name: ORDER_DETAILS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ORDER_DETAILS" ("ID", "ORDER_ID", "ITEM_ID", "AMOUNT", "LINE_TOTAL") FROM stdin;
\.


--
-- Data for Name: PAYMENTS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."PAYMENTS" ("ID", "ORDER_ID", "DATE_", "PAYMENT_TYPE", "IS_OK", "APPROVE_CODE", "PAYMENT_TOTAL") FROM stdin;
\.


--
-- Data for Name: TOWNS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."TOWNS" ("ID", "CITY_ID", "TOWN") FROM stdin;
\.


--
-- Data for Name: USERS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."USERS" ("ID", "USERNAME_", "PASSWORD_", "EMAIL", "GENDER", "BIRTH_DATE", "CREATED_DATE", "TEL_NO_1", "TEL_NO_2") FROM stdin;
\.


--
-- Name: ADDRESS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."ADDRESS_ID_seq"', 1, false);


--
-- Name: CITIES_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."CITIES_ID_seq"', 1, false);


--
-- Name: COUNTRIES_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."COUNTRIES_ID_seq"', 1, false);


--
-- Name: DISTRICTS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."DISTRICTS_ID_seq"', 1, false);


--
-- Name: INVOICES_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."INVOICES_ID_seq"', 1, false);


--
-- Name: INVOICE_DETAILS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."INVOICE_DETAILS_ID_seq"', 1, false);


--
-- Name: ITEMS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."ITEMS_ID_seq"', 1, false);


--
-- Name: ORDERS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."ORDERS_ID_seq"', 1, false);


--
-- Name: ORDER_DETAILS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."ORDER_DETAILS_ID_seq"', 1, false);


--
-- Name: PAYMENTS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."PAYMENTS_ID_seq"', 1, false);


--
-- Name: TOWNS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."TOWNS_ID_seq"', 1, false);


--
-- Name: USERS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."USERS_ID_seq"', 1, false);


--
-- Name: ADDRESS ADDRESS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ADDRESS"
    ADD CONSTRAINT "ADDRESS_pkey" PRIMARY KEY ("ID");


--
-- Name: CITIES CITIES_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CITIES"
    ADD CONSTRAINT "CITIES_pkey" PRIMARY KEY ("ID");


--
-- Name: COUNTRIES COUNTRIES_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."COUNTRIES"
    ADD CONSTRAINT "COUNTRIES_pkey" PRIMARY KEY ("ID");


--
-- Name: DISTRICTS DISTRICTS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DISTRICTS"
    ADD CONSTRAINT "DISTRICTS_pkey" PRIMARY KEY ("ID");


--
-- Name: INVOICES INVOICES_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."INVOICES"
    ADD CONSTRAINT "INVOICES_pkey" PRIMARY KEY ("ID");


--
-- Name: INVOICE_DETAILS INVOICE_DETAILS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."INVOICE_DETAILS"
    ADD CONSTRAINT "INVOICE_DETAILS_pkey" PRIMARY KEY ("ID");


--
-- Name: ITEMS ITEMS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ITEMS"
    ADD CONSTRAINT "ITEMS_pkey" PRIMARY KEY ("ID");


--
-- Name: ORDERS ORDERS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ORDERS"
    ADD CONSTRAINT "ORDERS_pkey" PRIMARY KEY ("ID");


--
-- Name: ORDER_DETAILS ORDER_DETAILS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ORDER_DETAILS"
    ADD CONSTRAINT "ORDER_DETAILS_pkey" PRIMARY KEY ("ID");


--
-- Name: PAYMENTS PAYMENTS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PAYMENTS"
    ADD CONSTRAINT "PAYMENTS_pkey" PRIMARY KEY ("ID");


--
-- Name: TOWNS TOWNS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TOWNS"
    ADD CONSTRAINT "TOWNS_pkey" PRIMARY KEY ("ID");


--
-- Name: USERS USERS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."USERS"
    ADD CONSTRAINT "USERS_pkey" PRIMARY KEY ("ID");


--
-- PostgreSQL database dump complete
--

