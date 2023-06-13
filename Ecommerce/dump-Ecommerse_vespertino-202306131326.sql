--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

-- Started on 2023-06-13 13:26:39

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
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 3402 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 17468)
-- Name: categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoria (
    id integer NOT NULL,
    nome character varying NOT NULL
);


ALTER TABLE public.categoria OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 17467)
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
-- TOC entry 3403 (class 0 OID 0)
-- Dependencies: 214
-- Name: categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categoria_id_seq OWNED BY public.categoria.id;


--
-- TOC entry 219 (class 1259 OID 17491)
-- Name: cidade; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cidade (
    id integer NOT NULL,
    nome character varying NOT NULL,
    uf character varying(2) NOT NULL
);


ALTER TABLE public.cidade OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 17490)
-- Name: cidade_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cidade_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cidade_id_seq OWNER TO postgres;

--
-- TOC entry 3404 (class 0 OID 0)
-- Dependencies: 218
-- Name: cidade_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cidade_id_seq OWNED BY public.cidade.id;


--
-- TOC entry 221 (class 1259 OID 17500)
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    id integer NOT NULL,
    nome character varying NOT NULL,
    sexo character varying NOT NULL,
    data_de_nascimento date NOT NULL,
    endereco integer NOT NULL
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 17499)
-- Name: cliente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cliente_id_seq OWNER TO postgres;

--
-- TOC entry 3405 (class 0 OID 0)
-- Dependencies: 220
-- Name: cliente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cliente_id_seq OWNED BY public.cliente.id;


--
-- TOC entry 228 (class 1259 OID 17559)
-- Name: endereco; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.endereco (
    id integer NOT NULL,
    rua character varying NOT NULL,
    bairro character varying NOT NULL,
    cidade integer NOT NULL,
    cep character varying NOT NULL
);


ALTER TABLE public.endereco OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 17558)
-- Name: endereco_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.endereco_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.endereco_id_seq OWNER TO postgres;

--
-- TOC entry 3406 (class 0 OID 0)
-- Dependencies: 227
-- Name: endereco_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.endereco_id_seq OWNED BY public.endereco.id;


--
-- TOC entry 217 (class 1259 OID 17477)
-- Name: produto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produto (
    id integer NOT NULL,
    nome character varying NOT NULL,
    valor double precision NOT NULL,
    qtde_estoque integer NOT NULL,
    categoria integer NOT NULL
);


ALTER TABLE public.produto OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 17476)
-- Name: produto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produto_id_seq OWNER TO postgres;

--
-- TOC entry 3407 (class 0 OID 0)
-- Dependencies: 216
-- Name: produto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produto_id_seq OWNED BY public.produto.id;


--
-- TOC entry 223 (class 1259 OID 17514)
-- Name: telefone; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.telefone (
    id integer NOT NULL,
    telefone character varying NOT NULL,
    cliente integer NOT NULL
);


ALTER TABLE public.telefone OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 17513)
-- Name: telefone_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.telefone_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.telefone_id_seq OWNER TO postgres;

--
-- TOC entry 3408 (class 0 OID 0)
-- Dependencies: 222
-- Name: telefone_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.telefone_id_seq OWNED BY public.telefone.id;


--
-- TOC entry 225 (class 1259 OID 17534)
-- Name: venda; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.venda (
    id integer NOT NULL,
    data_da_venda date NOT NULL,
    cliente integer NOT NULL
);


ALTER TABLE public.venda OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 17533)
-- Name: venda_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.venda_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venda_id_seq OWNER TO postgres;

--
-- TOC entry 3409 (class 0 OID 0)
-- Dependencies: 224
-- Name: venda_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.venda_id_seq OWNED BY public.venda.id;


--
-- TOC entry 226 (class 1259 OID 17545)
-- Name: venda_produto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.venda_produto (
    id integer NOT NULL,
    venda integer NOT NULL,
    produto integer NOT NULL,
    qtde_produto integer NOT NULL
);


ALTER TABLE public.venda_produto OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 17585)
-- Name: venda_produto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.venda_produto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venda_produto_id_seq OWNER TO postgres;

--
-- TOC entry 3410 (class 0 OID 0)
-- Dependencies: 229
-- Name: venda_produto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.venda_produto_id_seq OWNED BY public.venda_produto.id;


--
-- TOC entry 3208 (class 2604 OID 17471)
-- Name: categoria id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria ALTER COLUMN id SET DEFAULT nextval('public.categoria_id_seq'::regclass);


--
-- TOC entry 3210 (class 2604 OID 17494)
-- Name: cidade id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cidade ALTER COLUMN id SET DEFAULT nextval('public.cidade_id_seq'::regclass);


--
-- TOC entry 3211 (class 2604 OID 17503)
-- Name: cliente id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente ALTER COLUMN id SET DEFAULT nextval('public.cliente_id_seq'::regclass);


--
-- TOC entry 3215 (class 2604 OID 17562)
-- Name: endereco id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.endereco ALTER COLUMN id SET DEFAULT nextval('public.endereco_id_seq'::regclass);


--
-- TOC entry 3209 (class 2604 OID 17480)
-- Name: produto id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto ALTER COLUMN id SET DEFAULT nextval('public.produto_id_seq'::regclass);


--
-- TOC entry 3212 (class 2604 OID 17517)
-- Name: telefone id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.telefone ALTER COLUMN id SET DEFAULT nextval('public.telefone_id_seq'::regclass);


--
-- TOC entry 3213 (class 2604 OID 17537)
-- Name: venda id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda ALTER COLUMN id SET DEFAULT nextval('public.venda_id_seq'::regclass);


--
-- TOC entry 3214 (class 2604 OID 17586)
-- Name: venda_produto id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda_produto ALTER COLUMN id SET DEFAULT nextval('public.venda_produto_id_seq'::regclass);


--
-- TOC entry 3382 (class 0 OID 17468)
-- Dependencies: 215
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categoria VALUES (1, 'Eletrônicos');
INSERT INTO public.categoria VALUES (2, 'Móveis');
INSERT INTO public.categoria VALUES (3, 'Roupas');
INSERT INTO public.categoria VALUES (4, 'Acessórios');
INSERT INTO public.categoria VALUES (5, 'Livros');
INSERT INTO public.categoria VALUES (6, 'Beleza');
INSERT INTO public.categoria VALUES (7, 'Esportes');
INSERT INTO public.categoria VALUES (8, 'Jogos');
INSERT INTO public.categoria VALUES (9, 'Decoração');
INSERT INTO public.categoria VALUES (10, 'Alimentos');


--
-- TOC entry 3386 (class 0 OID 17491)
-- Dependencies: 219
-- Data for Name: cidade; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cidade VALUES (1, 'Tubarão', 'SC');
INSERT INTO public.cidade VALUES (2, 'Laguna', 'SC');
INSERT INTO public.cidade VALUES (3, 'Gravatal', 'SC');
INSERT INTO public.cidade VALUES (4, 'Porto Alegre', 'RS');
INSERT INTO public.cidade VALUES (5, 'São Paulo', 'SP');
INSERT INTO public.cidade VALUES (6, 'Rio de Janeiro', 'RJ');


--
-- TOC entry 3388 (class 0 OID 17500)
-- Dependencies: 221
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cliente VALUES (1, 'João', 'Masculino', '1990-01-01', 1);
INSERT INTO public.cliente VALUES (2, 'Maria', 'Feminino', '1992-05-10', 2);


--
-- TOC entry 3395 (class 0 OID 17559)
-- Dependencies: 228
-- Data for Name: endereco; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.endereco VALUES (1, 'Celso Esmeraldino Menezes', 'Humaitá de Cima', 1, '88745000');
INSERT INTO public.endereco VALUES (2, 'Santa Fé', 'Passo das Pedras', 4, '88754000');


--
-- TOC entry 3384 (class 0 OID 17477)
-- Dependencies: 217
-- Data for Name: produto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.produto VALUES (1, 'Smartphone', 1000, 10, 1);
INSERT INTO public.produto VALUES (2, 'Sofá', 800, 5, 2);
INSERT INTO public.produto VALUES (3, 'Camiseta', 30, 20, 3);
INSERT INTO public.produto VALUES (4, 'Relógio', 200, 8, 4);
INSERT INTO public.produto VALUES (5, 'Livro', 20, 15, 5);
INSERT INTO public.produto VALUES (6, 'Maquiagem', 50, 12, 6);


--
-- TOC entry 3390 (class 0 OID 17514)
-- Dependencies: 223
-- Data for Name: telefone; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.telefone VALUES (1, '9987654321', 1);
INSERT INTO public.telefone VALUES (2, '9123456789', 2);
INSERT INTO public.telefone VALUES (3, '9999999999', 2);


--
-- TOC entry 3392 (class 0 OID 17534)
-- Dependencies: 225
-- Data for Name: venda; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.venda VALUES (1, '2023-01-01', 1);
INSERT INTO public.venda VALUES (2, '2023-01-03', 2);
INSERT INTO public.venda VALUES (3, '2023-01-05', 2);
INSERT INTO public.venda VALUES (4, '2023-01-05', 1);
INSERT INTO public.venda VALUES (5, '2023-01-10', 2);


--
-- TOC entry 3393 (class 0 OID 17545)
-- Dependencies: 226
-- Data for Name: venda_produto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.venda_produto VALUES (1, 1, 1, 1);
INSERT INTO public.venda_produto VALUES (2, 1, 3, 4);
INSERT INTO public.venda_produto VALUES (3, 2, 4, 2);
INSERT INTO public.venda_produto VALUES (4, 3, 6, 5);
INSERT INTO public.venda_produto VALUES (5, 4, 5, 3);
INSERT INTO public.venda_produto VALUES (6, 5, 1, 1);
INSERT INTO public.venda_produto VALUES (7, 5, 3, 5);


--
-- TOC entry 3411 (class 0 OID 0)
-- Dependencies: 214
-- Name: categoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categoria_id_seq', 1, false);


--
-- TOC entry 3412 (class 0 OID 0)
-- Dependencies: 218
-- Name: cidade_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cidade_id_seq', 6, true);


--
-- TOC entry 3413 (class 0 OID 0)
-- Dependencies: 220
-- Name: cliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cliente_id_seq', 1, false);


--
-- TOC entry 3414 (class 0 OID 0)
-- Dependencies: 227
-- Name: endereco_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.endereco_id_seq', 2, true);


--
-- TOC entry 3415 (class 0 OID 0)
-- Dependencies: 216
-- Name: produto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produto_id_seq', 1, false);


--
-- TOC entry 3416 (class 0 OID 0)
-- Dependencies: 222
-- Name: telefone_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.telefone_id_seq', 3, true);


--
-- TOC entry 3417 (class 0 OID 0)
-- Dependencies: 224
-- Name: venda_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.venda_id_seq', 5, true);


--
-- TOC entry 3418 (class 0 OID 0)
-- Dependencies: 229
-- Name: venda_produto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.venda_produto_id_seq', 7, true);


--
-- TOC entry 3217 (class 2606 OID 17475)
-- Name: categoria categoria_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pk PRIMARY KEY (id);


--
-- TOC entry 3221 (class 2606 OID 17498)
-- Name: cidade cidade_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cidade
    ADD CONSTRAINT cidade_pk PRIMARY KEY (id);


--
-- TOC entry 3231 (class 2606 OID 17566)
-- Name: endereco endereco_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT endereco_pk PRIMARY KEY (id);


--
-- TOC entry 3223 (class 2606 OID 17507)
-- Name: cliente newtable_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT newtable_pk PRIMARY KEY (id);


--
-- TOC entry 3219 (class 2606 OID 17484)
-- Name: produto produto_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pk PRIMARY KEY (id);


--
-- TOC entry 3225 (class 2606 OID 17521)
-- Name: telefone telefone_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.telefone
    ADD CONSTRAINT telefone_pk PRIMARY KEY (id);


--
-- TOC entry 3227 (class 2606 OID 17539)
-- Name: venda venda_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_pk PRIMARY KEY (id);


--
-- TOC entry 3229 (class 2606 OID 17591)
-- Name: venda_produto venda_produto_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda_produto
    ADD CONSTRAINT venda_produto_pk PRIMARY KEY (id);


--
-- TOC entry 3233 (class 2606 OID 17572)
-- Name: cliente cliente_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_fk FOREIGN KEY (endereco) REFERENCES public.endereco(id);


--
-- TOC entry 3238 (class 2606 OID 17567)
-- Name: endereco endereco_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT endereco_fk FOREIGN KEY (cidade) REFERENCES public.cidade(id);


--
-- TOC entry 3232 (class 2606 OID 17485)
-- Name: produto produto_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_fk FOREIGN KEY (categoria) REFERENCES public.categoria(id);


--
-- TOC entry 3234 (class 2606 OID 17522)
-- Name: telefone telefone_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.telefone
    ADD CONSTRAINT telefone_fk FOREIGN KEY (cliente) REFERENCES public.cliente(id);


--
-- TOC entry 3235 (class 2606 OID 17540)
-- Name: venda venda_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_fk FOREIGN KEY (cliente) REFERENCES public.cliente(id);


--
-- TOC entry 3236 (class 2606 OID 17592)
-- Name: venda_produto venda_produto_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda_produto
    ADD CONSTRAINT venda_produto_fk FOREIGN KEY (venda) REFERENCES public.venda(id);


--
-- TOC entry 3237 (class 2606 OID 17597)
-- Name: venda_produto venda_produto_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda_produto
    ADD CONSTRAINT venda_produto_fk_1 FOREIGN KEY (produto) REFERENCES public.produto(id);


-- Completed on 2023-06-13 13:26:40

--
-- PostgreSQL database dump complete
--

--8
select 	
	c.nome, ci.nome 
from 
	cliente c
inner join
	endereco e on
	e.id = c.endereco 
inner join 
	cidade ci on
	ci.id = e.cidade 
	and ci.nome = 'Tubarão';
	
--8
select 	
	c.nome, ci.nome 
from 
	cliente c
inner join
	endereco e on
	e.id = c.endereco 
inner join 
	cidade ci on
	ci.id = e.cidade 
	and ci.nome = 'Porto Alegre';
	
--8
select 	
	c.nome, ci.nome 
from 
	cliente c
inner join
	endereco e on
	e.id = c.endereco 
inner join 
	cidade ci on
	ci.id = e.cidade 
	and ci.nome = 'Laguna';
	
--9
select 	
	c.nome, v.data_da_venda, p.nome, p.valor, vp.qtde_produto
from 
	cliente c
inner join 
	venda v on
	v.cliente = c.id
	and c.nome = 'João'
inner join 	
	venda_produto vp on
	vp.venda = v.id 
inner join 
	produto p on
	p.id = vp.produto ;
	
--9
select 	
	c.nome, v.data_da_venda, p.nome, p.valor, vp.qtde_produto
from 
	cliente c
inner join 
	venda v on
	v.cliente = c.id
	and c.nome = 'Maria'
inner join 	
	venda_produto vp on
	vp.venda = v.id 
inner join 
	produto p on
	p.id = vp.produto ;
	
--10
select 	
	c.nome, p.nome
from 
	categoria c 
left join
	produto p on
	p.categoria = c.id;

--11
--Produtos mais vendidos
select
	p.nome as produto, sum(vp.produto) as total_vendas
from
	produto p
inner join 
	venda_produto vp on
	vp.produto = p.id
group by
	p.nome
order by  
	sum(vp.produto) desc;

--12
--Clientes mais ativos
select
	c.nome, count(v.id) as total_compras
from
	cliente c
left join venda v on
	c.id = v.cliente
group by
	c.nome
order by
	count(v.id) desc;

--13
--Alerta de produtos com estoque baixo
select 
	p.nome as produto, p.qtde_estoque as estoque 
from 
	produto p 
where 
	p.qtde_estoque <= 5
order by 
	p.qtde_estoque; 

