--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

-- Started on 2023-03-02 10:08:34

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
-- TOC entry 203 (class 1259 OID 16417)
-- Name: categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoria (
    id integer NOT NULL,
    descricao character varying(100)
);


ALTER TABLE public.categoria OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16415)
-- Name: categoria_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categoria_id_seq OWNER TO postgres;

--
-- TOC entry 3002 (class 0 OID 0)
-- Dependencies: 202
-- Name: categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categoria_id_seq OWNED BY public.categoria.id;


--
-- TOC entry 201 (class 1259 OID 16406)
-- Name: noticia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.noticia (
    id integer NOT NULL,
    titulo character varying(100),
    texto text,
    categoria character varying(100),
    data date,
    autor character varying(100)
);


ALTER TABLE public.noticia OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16404)
-- Name: noticia_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.noticia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.noticia_id_seq OWNER TO postgres;

--
-- TOC entry 3003 (class 0 OID 0)
-- Dependencies: 200
-- Name: noticia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.noticia_id_seq OWNED BY public.noticia.id;


--
-- TOC entry 2858 (class 2604 OID 16420)
-- Name: categoria id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria ALTER COLUMN id SET DEFAULT nextval('public.categoria_id_seq'::regclass);


--
-- TOC entry 2857 (class 2604 OID 16409)
-- Name: noticia id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.noticia ALTER COLUMN id SET DEFAULT nextval('public.noticia_id_seq'::regclass);


--
-- TOC entry 2996 (class 0 OID 16417)
-- Dependencies: 203
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categoria VALUES (1, 'Atualidade');
INSERT INTO public.categoria VALUES (2, 'Esporte');
INSERT INTO public.categoria VALUES (3, 'Economia');


--
-- TOC entry 2994 (class 0 OID 16406)
-- Dependencies: 201
-- Data for Name: noticia; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.noticia VALUES (1, 'Carnaval começa semana que vem', 'Após a pandemia, Carnaval volta em 2023. Várias cidades estão se preparando para receber os foliões. RJ, SP, Bahia, Pernambuco promete Carnaval voltando com tudo', 'Diversão', '2023-02-16', 'Sergio Chapelim');
INSERT INTO public.noticia VALUES (2, 'Terremoto na Turquia', 'Um grande terremoto aconteceu na região da Turquia e Siria. Varios países estão se mobilizando para ajudar no resgate dos feridos', 'Mundo', '2023-02-01', 'Glória Maria');
INSERT INTO public.noticia VALUES (4, 'noticia nova', 'nova noticia foi postada', 'nova noticia', '2023-01-01', 'proprio');
INSERT INTO public.noticia VALUES (5, 'noticia de 02 de março', 'noticia de 02 de março', 'academico', '2023-03-02', 'osshiro');
INSERT INTO public.noticia VALUES (6, 'sabado letivo', 'este sábado, 04 de Março, será um sábado letivo da segunda feira.', 'educação ifms', '2023-03-02', 'ifms');


--
-- TOC entry 3004 (class 0 OID 0)
-- Dependencies: 202
-- Name: categoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categoria_id_seq', 4, true);


--
-- TOC entry 3005 (class 0 OID 0)
-- Dependencies: 200
-- Name: noticia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.noticia_id_seq', 6, true);


--
-- TOC entry 2862 (class 2606 OID 16422)
-- Name: categoria categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id);


--
-- TOC entry 2860 (class 2606 OID 16414)
-- Name: noticia noticia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.noticia
    ADD CONSTRAINT noticia_pkey PRIMARY KEY (id);


-- Completed on 2023-03-02 10:08:36

--
-- PostgreSQL database dump complete
--

