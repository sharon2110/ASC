--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

-- Started on 2022-05-09 18:24:41

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
-- TOC entry 3238 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 239 (class 1259 OID 26261)
-- Name: auto_prov; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auto_prov (
    idautoprov integer NOT NULL,
    proveedor integer NOT NULL,
    automovil integer NOT NULL
);


ALTER TABLE public.auto_prov OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 26264)
-- Name: auto_prov_idautoprov_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auto_prov_idautoprov_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auto_prov_idautoprov_seq OWNER TO postgres;

--
-- TOC entry 3239 (class 0 OID 0)
-- Dependencies: 240
-- Name: auto_prov_idautoprov_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auto_prov_idautoprov_seq OWNED BY public.auto_prov.idautoprov;


--
-- TOC entry 201 (class 1259 OID 17644)
-- Name: banco; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.banco (
    idbanco integer NOT NULL,
    banco character varying(100)
);


ALTER TABLE public.banco OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 17647)
-- Name: banco_idbanco_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.banco_idbanco_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.banco_idbanco_seq OWNER TO postgres;

--
-- TOC entry 3240 (class 0 OID 0)
-- Dependencies: 202
-- Name: banco_idbanco_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.banco_idbanco_seq OWNED BY public.banco.idbanco;


--
-- TOC entry 203 (class 1259 OID 17649)
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    idcliente integer NOT NULL,
    usuario integer,
    cicliente character varying(20),
    ciextcli character varying(3),
    paterno character varying(50),
    materno character varying(50),
    nombre character varying(50),
    celular character varying(16),
    direccion character varying(100),
    tipocliente character varying(15),
    foto character varying(255)
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 17655)
-- Name: cliente_idcliente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cliente_idcliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cliente_idcliente_seq OWNER TO postgres;

--
-- TOC entry 3241 (class 0 OID 0)
-- Dependencies: 204
-- Name: cliente_idcliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cliente_idcliente_seq OWNED BY public.cliente.idcliente;


--
-- TOC entry 205 (class 1259 OID 17657)
-- Name: cliente_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cliente_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cliente_usuario_seq OWNER TO postgres;

--
-- TOC entry 3242 (class 0 OID 0)
-- Dependencies: 205
-- Name: cliente_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cliente_usuario_seq OWNED BY public.cliente.usuario;


--
-- TOC entry 206 (class 1259 OID 17659)
-- Name: color; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.color (
    idcolor integer NOT NULL,
    color character varying(100)
);


ALTER TABLE public.color OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 17662)
-- Name: color_idcolor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.color_idcolor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.color_idcolor_seq OWNER TO postgres;

--
-- TOC entry 3243 (class 0 OID 0)
-- Dependencies: 207
-- Name: color_idcolor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.color_idcolor_seq OWNED BY public.color.idcolor;


--
-- TOC entry 208 (class 1259 OID 17664)
-- Name: color_vehiculo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.color_vehiculo (
    idcolorvehiculo integer NOT NULL,
    color integer NOT NULL,
    automovil integer NOT NULL
);


ALTER TABLE public.color_vehiculo OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 17669)
-- Name: color_vehiculo_idcolorvehiculo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.color_vehiculo_idcolorvehiculo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.color_vehiculo_idcolorvehiculo_seq OWNER TO postgres;

--
-- TOC entry 3244 (class 0 OID 0)
-- Dependencies: 209
-- Name: color_vehiculo_idcolorvehiculo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.color_vehiculo_idcolorvehiculo_seq OWNED BY public.color_vehiculo.idcolorvehiculo;


--
-- TOC entry 210 (class 1259 OID 17673)
-- Name: detalle_tramite; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.detalle_tramite (
    iddetalletramite integer NOT NULL,
    tramite integer NOT NULL,
    marca character varying NOT NULL,
    modelo character varying NOT NULL,
    tipo character varying NOT NULL,
    color character varying NOT NULL,
    nump character varying NOT NULL,
    precio integer NOT NULL
);


ALTER TABLE public.detalle_tramite OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 17680)
-- Name: detalle_tramite_iddetalletramite_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.detalle_tramite_iddetalletramite_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.detalle_tramite_iddetalletramite_seq OWNER TO postgres;

--
-- TOC entry 3245 (class 0 OID 0)
-- Dependencies: 211
-- Name: detalle_tramite_iddetalletramite_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.detalle_tramite_iddetalletramite_seq OWNED BY public.detalle_tramite.iddetalletramite;


--
-- TOC entry 212 (class 1259 OID 17686)
-- Name: detalle_vehiculo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.detalle_vehiculo (
    iddetalle integer NOT NULL,
    vehiculo integer NOT NULL,
    numpas integer,
    cilindrada character varying(10),
    precioproveedor integer,
    preciominimo integer,
    precioventa integer
);


ALTER TABLE public.detalle_vehiculo OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 17689)
-- Name: detalle_vehiculo_iddetalle_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.detalle_vehiculo_iddetalle_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.detalle_vehiculo_iddetalle_seq OWNER TO postgres;

--
-- TOC entry 3246 (class 0 OID 0)
-- Dependencies: 213
-- Name: detalle_vehiculo_iddetalle_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.detalle_vehiculo_iddetalle_seq OWNED BY public.detalle_vehiculo.iddetalle;


--
-- TOC entry 214 (class 1259 OID 17691)
-- Name: detalle_vehiculo_vehiculo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.detalle_vehiculo_vehiculo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.detalle_vehiculo_vehiculo_seq OWNER TO postgres;

--
-- TOC entry 3247 (class 0 OID 0)
-- Dependencies: 214
-- Name: detalle_vehiculo_vehiculo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.detalle_vehiculo_vehiculo_seq OWNED BY public.detalle_vehiculo.vehiculo;


--
-- TOC entry 241 (class 1259 OID 26334)
-- Name: detalle_venta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.detalle_venta (
    iddetalleventa integer NOT NULL,
    venta integer NOT NULL,
    marca character varying NOT NULL,
    modelo character varying NOT NULL,
    tipo character varying NOT NULL,
    color character varying NOT NULL,
    nump integer NOT NULL,
    precio integer NOT NULL,
    tipo_venta character varying NOT NULL,
    contacto character varying,
    ruat character varying NOT NULL,
    poliza character varying NOT NULL,
    soat character varying NOT NULL,
    placa character varying NOT NULL,
    resolucion character varying NOT NULL
);


ALTER TABLE public.detalle_venta OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 26337)
-- Name: detalle_venta_iddetalleventa_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.detalle_venta_iddetalleventa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.detalle_venta_iddetalleventa_seq OWNER TO postgres;

--
-- TOC entry 3248 (class 0 OID 0)
-- Dependencies: 242
-- Name: detalle_venta_iddetalleventa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.detalle_venta_iddetalleventa_seq OWNED BY public.detalle_venta.iddetalleventa;


--
-- TOC entry 215 (class 1259 OID 17706)
-- Name: deuda_banco_folder; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deuda_banco_folder (
    iddeudabancofolder integer NOT NULL,
    planpago character varying(255),
    ultimaboleta character varying(255),
    folder integer NOT NULL,
    banco integer NOT NULL
);


ALTER TABLE public.deuda_banco_folder OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 17716)
-- Name: deuda_banco_folder_iddeudabancofolder_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.deuda_banco_folder_iddeudabancofolder_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.deuda_banco_folder_iddeudabancofolder_seq OWNER TO postgres;

--
-- TOC entry 3249 (class 0 OID 0)
-- Dependencies: 216
-- Name: deuda_banco_folder_iddeudabancofolder_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.deuda_banco_folder_iddeudabancofolder_seq OWNED BY public.deuda_banco_folder.iddeudabancofolder;


--
-- TOC entry 217 (class 1259 OID 17718)
-- Name: estado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estado (
    idestado integer NOT NULL,
    estado character varying(30)
);


ALTER TABLE public.estado OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 17721)
-- Name: estado_idestado_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estado_idestado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estado_idestado_seq OWNER TO postgres;

--
-- TOC entry 3250 (class 0 OID 0)
-- Dependencies: 218
-- Name: estado_idestado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estado_idestado_seq OWNED BY public.estado.idestado;


--
-- TOC entry 219 (class 1259 OID 17723)
-- Name: estado_tramite; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estado_tramite (
    idestadotramite integer NOT NULL,
    fecha date NOT NULL,
    tramite integer NOT NULL,
    estado integer NOT NULL,
    hora character varying NOT NULL
);


ALTER TABLE public.estado_tramite OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 17728)
-- Name: estado_tramite_idestadotramite_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estado_tramite_idestadotramite_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estado_tramite_idestadotramite_seq OWNER TO postgres;

--
-- TOC entry 3251 (class 0 OID 0)
-- Dependencies: 220
-- Name: estado_tramite_idestadotramite_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estado_tramite_idestadotramite_seq OWNED BY public.estado_tramite.idestadotramite;


--
-- TOC entry 221 (class 1259 OID 17732)
-- Name: folder; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.folder (
    idfolder integer NOT NULL,
    tipo character varying(10),
    fotcarnet character varying(255),
    facluz character varying(255),
    facagua character varying(255),
    croquis character varying(255),
    folio character varying(255),
    testimonio character varying(255),
    impuesto character varying(255),
    ruat character varying(255),
    soat character varying(255),
    nit character varying(255),
    boletapago character varying(255),
    afp character varying(255),
    tramite integer NOT NULL,
    contrato character varying,
    patente character varying
);


ALTER TABLE public.folder OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 17738)
-- Name: folder_idfolder_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.folder_idfolder_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.folder_idfolder_seq OWNER TO postgres;

--
-- TOC entry 3252 (class 0 OID 0)
-- Dependencies: 222
-- Name: folder_idfolder_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.folder_idfolder_seq OWNED BY public.folder.idfolder;


--
-- TOC entry 223 (class 1259 OID 17742)
-- Name: lista_deuda_banco; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lista_deuda_banco (
    idlistadeuda integer NOT NULL,
    planpago character varying,
    ultimaboleta character varying,
    listafolder integer NOT NULL,
    banco integer NOT NULL
);


ALTER TABLE public.lista_deuda_banco OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 17747)
-- Name: lista_deuda_banco_idlistadeuda_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lista_deuda_banco_idlistadeuda_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lista_deuda_banco_idlistadeuda_seq OWNER TO postgres;

--
-- TOC entry 3253 (class 0 OID 0)
-- Dependencies: 224
-- Name: lista_deuda_banco_idlistadeuda_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lista_deuda_banco_idlistadeuda_seq OWNED BY public.lista_deuda_banco.idlistadeuda;


--
-- TOC entry 225 (class 1259 OID 17751)
-- Name: lista_folder; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lista_folder (
    idlistafolder integer NOT NULL,
    fotcarnet character varying,
    facluz character varying,
    facagua character varying,
    croquis character varying,
    folio character varying,
    testimonio character varying,
    impuesto character varying,
    ruat character varying,
    soat character varying,
    nit character varying,
    boletapago character varying,
    afp character varying,
    folder integer NOT NULL,
    patente character varying,
    contrato character varying
);


ALTER TABLE public.lista_folder OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 17756)
-- Name: lista_folder_idlistafolder_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lista_folder_idlistafolder_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lista_folder_idlistafolder_seq OWNER TO postgres;

--
-- TOC entry 3254 (class 0 OID 0)
-- Dependencies: 226
-- Name: lista_folder_idlistafolder_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lista_folder_idlistafolder_seq OWNED BY public.lista_folder.idlistafolder;


--
-- TOC entry 227 (class 1259 OID 17758)
-- Name: proveedor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.proveedor (
    idproveedor integer NOT NULL,
    proveedor character varying NOT NULL
);


ALTER TABLE public.proveedor OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 17761)
-- Name: proveedor_idproveedor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.proveedor_idproveedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.proveedor_idproveedor_seq OWNER TO postgres;

--
-- TOC entry 3255 (class 0 OID 0)
-- Dependencies: 228
-- Name: proveedor_idproveedor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.proveedor_idproveedor_seq OWNED BY public.proveedor.idproveedor;


--
-- TOC entry 229 (class 1259 OID 17765)
-- Name: tramitebancario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tramitebancario (
    idtramitebancario integer NOT NULL,
    fechaini date,
    fechafin date,
    cliente integer NOT NULL,
    usuario integer NOT NULL,
    banco integer NOT NULL,
    monto_prestamo integer NOT NULL,
    asesor_credito character varying,
    sucursal character varying,
    observacion character varying
);


ALTER TABLE public.tramitebancario OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 17772)
-- Name: tramitebancario_idtramitebancario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tramitebancario_idtramitebancario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tramitebancario_idtramitebancario_seq OWNER TO postgres;

--
-- TOC entry 3256 (class 0 OID 0)
-- Dependencies: 230
-- Name: tramitebancario_idtramitebancario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tramitebancario_idtramitebancario_seq OWNED BY public.tramitebancario.idtramitebancario;


--
-- TOC entry 231 (class 1259 OID 17776)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    idusuario integer NOT NULL,
    ciusuario character varying(20),
    ciext character varying(3),
    paterno character varying(50),
    materno character varying(50),
    nombre character varying(50),
    celular character varying(10),
    direccion character varying(100),
    usuario character varying(15),
    tipousuario character varying(15),
    estado character varying(10),
    contrase_a character varying(100),
    curriculum character varying,
    croquis character varying,
    perfil character varying
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 17784)
-- Name: usuario_idusuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_idusuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_idusuario_seq OWNER TO postgres;

--
-- TOC entry 3257 (class 0 OID 0)
-- Dependencies: 232
-- Name: usuario_idusuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_idusuario_seq OWNED BY public.usuario.idusuario;


--
-- TOC entry 233 (class 1259 OID 17786)
-- Name: vehiculo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vehiculo (
    idvehiculo integer NOT NULL,
    marca character varying(50),
    tipo character varying(50),
    modelo character varying(50),
    fotovehiculo character varying(255),
    administrador integer
);


ALTER TABLE public.vehiculo OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 17789)
-- Name: vehiculo_idvehiculo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vehiculo_idvehiculo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vehiculo_idvehiculo_seq OWNER TO postgres;

--
-- TOC entry 3258 (class 0 OID 0)
-- Dependencies: 234
-- Name: vehiculo_idvehiculo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vehiculo_idvehiculo_seq OWNED BY public.vehiculo.idvehiculo;


--
-- TOC entry 238 (class 1259 OID 18082)
-- Name: venta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.venta (
    idventa integer NOT NULL,
    cliente integer NOT NULL,
    usuario integer NOT NULL,
    fecha date NOT NULL,
    hora time without time zone NOT NULL,
    observaciones character varying NOT NULL
);


ALTER TABLE public.venta OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 18078)
-- Name: venta_cliente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.venta_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venta_cliente_seq OWNER TO postgres;

--
-- TOC entry 3259 (class 0 OID 0)
-- Dependencies: 236
-- Name: venta_cliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.venta_cliente_seq OWNED BY public.venta.cliente;


--
-- TOC entry 235 (class 1259 OID 18076)
-- Name: venta_idventa_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.venta_idventa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venta_idventa_seq OWNER TO postgres;

--
-- TOC entry 3260 (class 0 OID 0)
-- Dependencies: 235
-- Name: venta_idventa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.venta_idventa_seq OWNED BY public.venta.idventa;


--
-- TOC entry 237 (class 1259 OID 18080)
-- Name: venta_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.venta_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venta_usuario_seq OWNER TO postgres;

--
-- TOC entry 3261 (class 0 OID 0)
-- Dependencies: 237
-- Name: venta_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.venta_usuario_seq OWNED BY public.venta.usuario;


--
-- TOC entry 3000 (class 2604 OID 26266)
-- Name: auto_prov idautoprov; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auto_prov ALTER COLUMN idautoprov SET DEFAULT nextval('public.auto_prov_idautoprov_seq'::regclass);


--
-- TOC entry 2979 (class 2604 OID 17845)
-- Name: banco idbanco; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banco ALTER COLUMN idbanco SET DEFAULT nextval('public.banco_idbanco_seq'::regclass);


--
-- TOC entry 2980 (class 2604 OID 17846)
-- Name: cliente idcliente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente ALTER COLUMN idcliente SET DEFAULT nextval('public.cliente_idcliente_seq'::regclass);


--
-- TOC entry 2981 (class 2604 OID 17847)
-- Name: cliente usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente ALTER COLUMN usuario SET DEFAULT nextval('public.cliente_usuario_seq'::regclass);


--
-- TOC entry 2982 (class 2604 OID 17848)
-- Name: color idcolor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.color ALTER COLUMN idcolor SET DEFAULT nextval('public.color_idcolor_seq'::regclass);


--
-- TOC entry 2983 (class 2604 OID 17849)
-- Name: color_vehiculo idcolorvehiculo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.color_vehiculo ALTER COLUMN idcolorvehiculo SET DEFAULT nextval('public.color_vehiculo_idcolorvehiculo_seq'::regclass);


--
-- TOC entry 2984 (class 2604 OID 17852)
-- Name: detalle_tramite iddetalletramite; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_tramite ALTER COLUMN iddetalletramite SET DEFAULT nextval('public.detalle_tramite_iddetalletramite_seq'::regclass);


--
-- TOC entry 2985 (class 2604 OID 17857)
-- Name: detalle_vehiculo iddetalle; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_vehiculo ALTER COLUMN iddetalle SET DEFAULT nextval('public.detalle_vehiculo_iddetalle_seq'::regclass);


--
-- TOC entry 2986 (class 2604 OID 17858)
-- Name: detalle_vehiculo vehiculo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_vehiculo ALTER COLUMN vehiculo SET DEFAULT nextval('public.detalle_vehiculo_vehiculo_seq'::regclass);


--
-- TOC entry 3001 (class 2604 OID 26339)
-- Name: detalle_venta iddetalleventa; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_venta ALTER COLUMN iddetalleventa SET DEFAULT nextval('public.detalle_venta_iddetalleventa_seq'::regclass);


--
-- TOC entry 2987 (class 2604 OID 17864)
-- Name: deuda_banco_folder iddeudabancofolder; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deuda_banco_folder ALTER COLUMN iddeudabancofolder SET DEFAULT nextval('public.deuda_banco_folder_iddeudabancofolder_seq'::regclass);


--
-- TOC entry 2988 (class 2604 OID 17867)
-- Name: estado idestado; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado ALTER COLUMN idestado SET DEFAULT nextval('public.estado_idestado_seq'::regclass);


--
-- TOC entry 2989 (class 2604 OID 17868)
-- Name: estado_tramite idestadotramite; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_tramite ALTER COLUMN idestadotramite SET DEFAULT nextval('public.estado_tramite_idestadotramite_seq'::regclass);


--
-- TOC entry 2990 (class 2604 OID 17871)
-- Name: folder idfolder; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.folder ALTER COLUMN idfolder SET DEFAULT nextval('public.folder_idfolder_seq'::regclass);


--
-- TOC entry 2991 (class 2604 OID 17873)
-- Name: lista_deuda_banco idlistadeuda; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lista_deuda_banco ALTER COLUMN idlistadeuda SET DEFAULT nextval('public.lista_deuda_banco_idlistadeuda_seq'::regclass);


--
-- TOC entry 2992 (class 2604 OID 17876)
-- Name: lista_folder idlistafolder; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lista_folder ALTER COLUMN idlistafolder SET DEFAULT nextval('public.lista_folder_idlistafolder_seq'::regclass);


--
-- TOC entry 2993 (class 2604 OID 17878)
-- Name: proveedor idproveedor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedor ALTER COLUMN idproveedor SET DEFAULT nextval('public.proveedor_idproveedor_seq'::regclass);


--
-- TOC entry 2994 (class 2604 OID 17880)
-- Name: tramitebancario idtramitebancario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tramitebancario ALTER COLUMN idtramitebancario SET DEFAULT nextval('public.tramitebancario_idtramitebancario_seq'::regclass);


--
-- TOC entry 2995 (class 2604 OID 17884)
-- Name: usuario idusuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario ALTER COLUMN idusuario SET DEFAULT nextval('public.usuario_idusuario_seq'::regclass);


--
-- TOC entry 2996 (class 2604 OID 17886)
-- Name: vehiculo idvehiculo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vehiculo ALTER COLUMN idvehiculo SET DEFAULT nextval('public.vehiculo_idvehiculo_seq'::regclass);


--
-- TOC entry 2997 (class 2604 OID 18085)
-- Name: venta idventa; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venta ALTER COLUMN idventa SET DEFAULT nextval('public.venta_idventa_seq'::regclass);


--
-- TOC entry 2998 (class 2604 OID 18086)
-- Name: venta cliente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venta ALTER COLUMN cliente SET DEFAULT nextval('public.venta_cliente_seq'::regclass);


--
-- TOC entry 2999 (class 2604 OID 18087)
-- Name: venta usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venta ALTER COLUMN usuario SET DEFAULT nextval('public.venta_usuario_seq'::regclass);


--
-- TOC entry 3229 (class 0 OID 26261)
-- Dependencies: 239
-- Data for Name: auto_prov; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auto_prov (idautoprov, proveedor, automovil) FROM stdin;
17	2	24
21	2	28
22	1	29
23	2	30
24	2	31
25	2	32
\.


--
-- TOC entry 3191 (class 0 OID 17644)
-- Dependencies: 201
-- Data for Name: banco; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.banco (idbanco, banco) FROM stdin;
3	Banco Nacional de Bolivia(BNB)
4	Banco Unión S.A
5	Banco Mercantil Santa Cruz
6	Banco BISA
7	Banco Ganadero
8	Banco Económico
\.


--
-- TOC entry 3193 (class 0 OID 17649)
-- Dependencies: 203
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cliente (idcliente, usuario, cicliente, ciextcli, paterno, materno, nombre, celular, direccion, tipocliente, foto) FROM stdin;
274	21	986542	LP	Villca	Andrade	Julian	78569845	Villa Adela calle 3	Comerciante	\N
273	22	6589785	LP	Lopez	Sagredo	Jose Alvaro	77789635	Cota Cota calle 33	Asalariado	\N
272	21	10258624	LP	Fernandez	Apaza	Silvia	75896325	Villa Fátima, calle Conzata #52	Comerciante	\N
275	21	101212	LP	Solares	Ventura	Sophia	75896325	Villa Fatima #25	Comerciante	\N
\.


--
-- TOC entry 3196 (class 0 OID 17659)
-- Dependencies: 206
-- Data for Name: color; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.color (idcolor, color) FROM stdin;
1	Blanco
2	Plata
3	Gris
4	Rojo
5	Verde
6	Blanco y Verde
7	Blanco y Gris
8	Gris y Plata
9	Azul
10	Naranjado
\.


--
-- TOC entry 3198 (class 0 OID 17664)
-- Dependencies: 208
-- Data for Name: color_vehiculo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.color_vehiculo (idcolorvehiculo, color, automovil) FROM stdin;
119	1	24
120	2	24
121	3	24
122	4	24
123	9	24
124	10	24
128	1	28
129	9	28
130	10	28
131	10	29
132	1	30
133	2	30
134	3	30
135	7	30
136	1	31
137	2	31
139	1	32
\.


--
-- TOC entry 3200 (class 0 OID 17673)
-- Dependencies: 210
-- Data for Name: detalle_tramite; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.detalle_tramite (iddetalletramite, tramite, marca, modelo, tipo, color, nump, precio) FROM stdin;
596	174	Keyton	EX80	Vagoneta	Naranjado	8	19000
597	174	Foton	Bufalo	Minibus	Blanco	15	27000
603	175	Soueast	DX3	Vagoneta	Naranjado	8	26500
604	175	T-King	Bufalo	Minibus	Blanco	14	29000
615	176	Keyton	V60	Vagoneta	Amarillo	8	26000
616	176	Golden Dragon	Normal	Minibus	Blanco	15	23500
\.


--
-- TOC entry 3202 (class 0 OID 17686)
-- Dependencies: 212
-- Data for Name: detalle_vehiculo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.detalle_vehiculo (iddetalle, vehiculo, numpas, cilindrada, precioproveedor, preciominimo, precioventa) FROM stdin;
21	24	8	1500cc.	18000	18500	19000
25	28	8	1500cc	25000	26500	27000
26	29	8	1700cc	25000	26000	26500
27	30	14	3500cc	28000	29000	29500
28	31	15	3000 cc	21000	22000	22500
29	32	15	3000cc	25000	25890	27000
\.


--
-- TOC entry 3231 (class 0 OID 26334)
-- Dependencies: 241
-- Data for Name: detalle_venta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.detalle_venta (iddetalleventa, venta, marca, modelo, tipo, color, nump, precio, tipo_venta, contacto, ruat, poliza, soat, placa, resolucion) FROM stdin;
119	143	Golden Dragon	Normal	Minibus	Blanco	15	22000	Al contado	No necesario	si	si	si	si	si
86	141	Golden Dragon	Normal	Minibus	Blanco	15	22000	Al contado	No necesario	si	si	si	si	si
38	138	Golden Dragon	Normal	Minibus	Blanco	15	22000	Al contado	No necesario	si	si	si	si	si
93	142	Golden Dragon	Normal	Minibus	Blanco	15	25000	Al contado	No necesario	si	si	si	si	si
\.


--
-- TOC entry 3205 (class 0 OID 17706)
-- Dependencies: 215
-- Data for Name: deuda_banco_folder; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.deuda_banco_folder (iddeudabancofolder, planpago, ultimaboleta, folder, banco) FROM stdin;
646	../tramites/272-7/cliente/deudas/C_3.JPG	\N	227	4
\.


--
-- TOC entry 3207 (class 0 OID 17718)
-- Dependencies: 217
-- Data for Name: estado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estado (idestado, estado) FROM stdin;
1	Iniciado
2	En análisis
3	Aprobado
4	Finalizado
5	Cancelado
\.


--
-- TOC entry 3209 (class 0 OID 17723)
-- Dependencies: 219
-- Data for Name: estado_tramite; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estado_tramite (idestadotramite, fecha, tramite, estado, hora) FROM stdin;
99	2022-04-28	174	1	07:49:29:PM
100	2022-04-29	175	1	06:10:24:PM
101	2022-05-01	175	4	12:14:28:AM
102	2022-05-08	176	1	06:07:06:PM
\.


--
-- TOC entry 3211 (class 0 OID 17732)
-- Dependencies: 221
-- Data for Name: folder; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.folder (idfolder, tipo, fotcarnet, facluz, facagua, croquis, folio, testimonio, impuesto, ruat, soat, nit, boletapago, afp, tramite, contrato, patente) FROM stdin;
231	cliente	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	176	\N	\N
232	garante	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	176	\N	\N
227	cliente	../tramites/272-7/cliente/C_3.JPG	../tramites/272-7/cliente/C_4.JPG	../tramites/272-7/cliente/C_4.JPG	\N	\N	\N	\N	\N	\N	\N	\N	\N	174	\N	\N
228	garante	../tramites/272-7/garante/C_2.JPG	../tramites/272-7/garante/C_4.JPG	../tramites/272-7/garante/C_6.JPG	\N	\N	\N	\N	\N	\N	\N	\N	\N	174	\N	\N
229	cliente	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	175	../tramites/272-4/cliente/C_1.JPG	\N
230	garante	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	175	\N	\N
\.


--
-- TOC entry 3213 (class 0 OID 17742)
-- Dependencies: 223
-- Data for Name: lista_deuda_banco; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lista_deuda_banco (idlistadeuda, planpago, ultimaboleta, listafolder, banco) FROM stdin;
423	si	si	150	4
424	si	no	150	3
\.


--
-- TOC entry 3215 (class 0 OID 17751)
-- Dependencies: 225
-- Data for Name: lista_folder; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lista_folder (idlistafolder, fotcarnet, facluz, facagua, croquis, folio, testimonio, impuesto, ruat, soat, nit, boletapago, afp, folder, patente, contrato) FROM stdin;
150	si	si	si	no	no	no	no	no	no	no	no	no	227	no	no
151	si	si	si	no	no	no	no	no	no	no	no	no	228	no	\N
152	no	no	no	no	no	no	no	no	no	no	no	no	229	no	si
153	no	no	no	no	no	no	no	no	no	no	no	no	230	no	\N
154	no	no	no	no	no	no	no	no	no	no	no	no	231	no	no
155	no	no	no	no	no	no	no	no	no	no	no	no	232	no	\N
\.


--
-- TOC entry 3217 (class 0 OID 17758)
-- Dependencies: 227
-- Data for Name: proveedor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.proveedor (idproveedor, proveedor) FROM stdin;
1	XIAMEN KING LONG UNITED AUTOMOTIVE
2	FUJIAN NEW LONGMA AUTOMOTIVE CO.,LT.
\.


--
-- TOC entry 3219 (class 0 OID 17765)
-- Dependencies: 229
-- Data for Name: tramitebancario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tramitebancario (idtramitebancario, fechaini, fechafin, cliente, usuario, banco, monto_prestamo, asesor_credito, sucursal, observacion) FROM stdin;
174	2022-04-28	\N	272	21	7	50000	\N	\N	\N
175	2022-04-29	2022-05-01	272	21	4	60000	\N	\N	\N
176	2022-05-08	\N	275	21	8	57000	Julian Mollo	Camacho	Ninguna
\.


--
-- TOC entry 3221 (class 0 OID 17776)
-- Dependencies: 231
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario (idusuario, ciusuario, ciext, paterno, materno, nombre, celular, direccion, usuario, tipousuario, estado, contrase_a, curriculum, croquis, perfil) FROM stdin;
21	12605976	LP	Tinta	Alvarez	Sharon	\N	\N	stintaa	Administrador	Activo	$2y$10$98pSaEn1bX6.NhyfJ7CNhu8RptRSsxC.40uRLsF19PtfEQSVhHi9G	\N	\N	../img_perfiles/21/3-31105_anime-girl.jpg
22	12605978	LP	Lopez	Gonzales	Alejandra	78963254	Villa Dolores #58	agonzales	Restringido	Activo	$2y$10$xV7SeXtPhj.m91wbAyDtT.gSIGMKGGTzkUZsm6c/D.3Uz2SAAWxAS	../documentos/12605978/PG-3812.pdf	../documentos/12605978/C_3.JPG	../img_perfiles/22/anime-robotech-macross-veritech-macross-hd-wallpaper-preview (1).jpg
\.


--
-- TOC entry 3223 (class 0 OID 17786)
-- Dependencies: 233
-- Data for Name: vehiculo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vehiculo (idvehiculo, marca, tipo, modelo, fotovehiculo, administrador) FROM stdin;
24	Keyton	Vagoneta	EX80	../img_vehiculos/Keyton-EX80/ambacar-suv-soueast-dx3-rojo.jpg	\N
28	Keyton	Vagoneta	V60	../img_vehiculos/Keyton-V60/ambacar-suv-soueast-dx3-rojo.jpg	\N
29	Soueast	Vagoneta	DX3	../img_vehiculos/Soueast-DX3/Soueast-DX3-Pininfarina-2020-(2).jpg	\N
30	T-King	Minibus	Bufalo	../img_vehiculos/T-King-Bufalo/golden (3).jpg	\N
31	Golden Dragon	Minibus	Normal	../img_vehiculos/Golden Dragon-Normal/golden (3).jpg	\N
32	Foton	Minibus	Bufalo	../img_vehiculos/Foton-Bufalo/golden (3).jpg	\N
\.


--
-- TOC entry 3228 (class 0 OID 18082)
-- Dependencies: 238
-- Data for Name: venta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.venta (idventa, cliente, usuario, fecha, hora, observaciones) FROM stdin;
143	272	21	2022-05-04	19:51:00	sin observaciones
138	273	22	2022-04-23	05:38:30	Sin obs
141	273	21	2022-04-29	19:04:00	Sin obs
142	275	21	2022-04-30	15:42:00	Sin observaciones
\.


--
-- TOC entry 3262 (class 0 OID 0)
-- Dependencies: 240
-- Name: auto_prov_idautoprov_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auto_prov_idautoprov_seq', 25, true);


--
-- TOC entry 3263 (class 0 OID 0)
-- Dependencies: 202
-- Name: banco_idbanco_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.banco_idbanco_seq', 8, true);


--
-- TOC entry 3264 (class 0 OID 0)
-- Dependencies: 204
-- Name: cliente_idcliente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cliente_idcliente_seq', 275, true);


--
-- TOC entry 3265 (class 0 OID 0)
-- Dependencies: 205
-- Name: cliente_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cliente_usuario_seq', 5, true);


--
-- TOC entry 3266 (class 0 OID 0)
-- Dependencies: 207
-- Name: color_idcolor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.color_idcolor_seq', 10, true);


--
-- TOC entry 3267 (class 0 OID 0)
-- Dependencies: 209
-- Name: color_vehiculo_idcolorvehiculo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.color_vehiculo_idcolorvehiculo_seq', 139, true);


--
-- TOC entry 3268 (class 0 OID 0)
-- Dependencies: 211
-- Name: detalle_tramite_iddetalletramite_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.detalle_tramite_iddetalletramite_seq', 616, true);


--
-- TOC entry 3269 (class 0 OID 0)
-- Dependencies: 213
-- Name: detalle_vehiculo_iddetalle_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.detalle_vehiculo_iddetalle_seq', 29, true);


--
-- TOC entry 3270 (class 0 OID 0)
-- Dependencies: 214
-- Name: detalle_vehiculo_vehiculo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.detalle_vehiculo_vehiculo_seq', 1, false);


--
-- TOC entry 3271 (class 0 OID 0)
-- Dependencies: 242
-- Name: detalle_venta_iddetalleventa_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.detalle_venta_iddetalleventa_seq', 119, true);


--
-- TOC entry 3272 (class 0 OID 0)
-- Dependencies: 216
-- Name: deuda_banco_folder_iddeudabancofolder_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.deuda_banco_folder_iddeudabancofolder_seq', 646, true);


--
-- TOC entry 3273 (class 0 OID 0)
-- Dependencies: 218
-- Name: estado_idestado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estado_idestado_seq', 10, true);


--
-- TOC entry 3274 (class 0 OID 0)
-- Dependencies: 220
-- Name: estado_tramite_idestadotramite_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estado_tramite_idestadotramite_seq', 102, true);


--
-- TOC entry 3275 (class 0 OID 0)
-- Dependencies: 222
-- Name: folder_idfolder_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.folder_idfolder_seq', 232, true);


--
-- TOC entry 3276 (class 0 OID 0)
-- Dependencies: 224
-- Name: lista_deuda_banco_idlistadeuda_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lista_deuda_banco_idlistadeuda_seq', 424, true);


--
-- TOC entry 3277 (class 0 OID 0)
-- Dependencies: 226
-- Name: lista_folder_idlistafolder_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lista_folder_idlistafolder_seq', 155, true);


--
-- TOC entry 3278 (class 0 OID 0)
-- Dependencies: 228
-- Name: proveedor_idproveedor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.proveedor_idproveedor_seq', 2, true);


--
-- TOC entry 3279 (class 0 OID 0)
-- Dependencies: 230
-- Name: tramitebancario_idtramitebancario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tramitebancario_idtramitebancario_seq', 176, true);


--
-- TOC entry 3280 (class 0 OID 0)
-- Dependencies: 232
-- Name: usuario_idusuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_idusuario_seq', 22, true);


--
-- TOC entry 3281 (class 0 OID 0)
-- Dependencies: 234
-- Name: vehiculo_idvehiculo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vehiculo_idvehiculo_seq', 32, true);


--
-- TOC entry 3282 (class 0 OID 0)
-- Dependencies: 236
-- Name: venta_cliente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.venta_cliente_seq', 1, false);


--
-- TOC entry 3283 (class 0 OID 0)
-- Dependencies: 235
-- Name: venta_idventa_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.venta_idventa_seq', 143, true);


--
-- TOC entry 3284 (class 0 OID 0)
-- Dependencies: 237
-- Name: venta_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.venta_usuario_seq', 1, false);


--
-- TOC entry 3037 (class 2606 OID 26586)
-- Name: auto_prov auto_prov_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auto_prov
    ADD CONSTRAINT auto_prov_pk PRIMARY KEY (idautoprov);


--
-- TOC entry 3003 (class 2606 OID 17892)
-- Name: banco banco_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banco
    ADD CONSTRAINT banco_pkey PRIMARY KEY (idbanco);


--
-- TOC entry 3005 (class 2606 OID 17894)
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (idcliente);


--
-- TOC entry 3007 (class 2606 OID 17896)
-- Name: color color_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.color
    ADD CONSTRAINT color_pkey PRIMARY KEY (idcolor);


--
-- TOC entry 3009 (class 2606 OID 17898)
-- Name: color_vehiculo color_vehiculo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.color_vehiculo
    ADD CONSTRAINT color_vehiculo_pkey PRIMARY KEY (idcolorvehiculo);


--
-- TOC entry 3011 (class 2606 OID 17900)
-- Name: detalle_tramite detalle_tramite_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_tramite
    ADD CONSTRAINT detalle_tramite_pkey PRIMARY KEY (iddetalletramite);


--
-- TOC entry 3013 (class 2606 OID 17902)
-- Name: detalle_vehiculo detalle_vehiculo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_vehiculo
    ADD CONSTRAINT detalle_vehiculo_pkey PRIMARY KEY (iddetalle);


--
-- TOC entry 3039 (class 2606 OID 26352)
-- Name: detalle_venta detalle_venta_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_venta
    ADD CONSTRAINT detalle_venta_pk PRIMARY KEY (iddetalleventa);


--
-- TOC entry 3015 (class 2606 OID 17906)
-- Name: deuda_banco_folder deuda_banco_folder_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deuda_banco_folder
    ADD CONSTRAINT deuda_banco_folder_pkey PRIMARY KEY (iddeudabancofolder);


--
-- TOC entry 3017 (class 2606 OID 17908)
-- Name: estado estado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado
    ADD CONSTRAINT estado_pkey PRIMARY KEY (idestado);


--
-- TOC entry 3019 (class 2606 OID 17910)
-- Name: estado_tramite estado_tramite_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_tramite
    ADD CONSTRAINT estado_tramite_pkey PRIMARY KEY (idestadotramite);


--
-- TOC entry 3021 (class 2606 OID 17912)
-- Name: folder folder_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.folder
    ADD CONSTRAINT folder_pkey PRIMARY KEY (idfolder);


--
-- TOC entry 3023 (class 2606 OID 17914)
-- Name: lista_deuda_banco lista_deuda_banco_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lista_deuda_banco
    ADD CONSTRAINT lista_deuda_banco_pkey PRIMARY KEY (idlistadeuda);


--
-- TOC entry 3025 (class 2606 OID 17916)
-- Name: lista_folder lista_folder_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lista_folder
    ADD CONSTRAINT lista_folder_pkey PRIMARY KEY (idlistafolder);


--
-- TOC entry 3027 (class 2606 OID 17918)
-- Name: proveedor proveedor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_pkey PRIMARY KEY (idproveedor);


--
-- TOC entry 3029 (class 2606 OID 17920)
-- Name: tramitebancario tramitebancario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tramitebancario
    ADD CONSTRAINT tramitebancario_pkey PRIMARY KEY (idtramitebancario);


--
-- TOC entry 3031 (class 2606 OID 17922)
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (idusuario);


--
-- TOC entry 3033 (class 2606 OID 17924)
-- Name: vehiculo vehiculo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vehiculo
    ADD CONSTRAINT vehiculo_pkey PRIMARY KEY (idvehiculo);


--
-- TOC entry 3035 (class 2606 OID 18089)
-- Name: venta venta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_pkey PRIMARY KEY (idventa);


--
-- TOC entry 3058 (class 2606 OID 26270)
-- Name: auto_prov auto_prov_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auto_prov
    ADD CONSTRAINT auto_prov_fk FOREIGN KEY (proveedor) REFERENCES public.proveedor(idproveedor) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3059 (class 2606 OID 26275)
-- Name: auto_prov auto_prov_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auto_prov
    ADD CONSTRAINT auto_prov_fk_1 FOREIGN KEY (automovil) REFERENCES public.vehiculo(idvehiculo) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3040 (class 2606 OID 26322)
-- Name: color_vehiculo color_vehiculo_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.color_vehiculo
    ADD CONSTRAINT color_vehiculo_fk FOREIGN KEY (color) REFERENCES public.color(idcolor) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3041 (class 2606 OID 26327)
-- Name: color_vehiculo color_vehiculo_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.color_vehiculo
    ADD CONSTRAINT color_vehiculo_fk_1 FOREIGN KEY (automovil) REFERENCES public.vehiculo(idvehiculo) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3042 (class 2606 OID 26423)
-- Name: detalle_tramite detalle_tramite_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_tramite
    ADD CONSTRAINT detalle_tramite_fk FOREIGN KEY (tramite) REFERENCES public.tramitebancario(idtramitebancario) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3060 (class 2606 OID 26346)
-- Name: detalle_venta detalle_venta_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_venta
    ADD CONSTRAINT detalle_venta_fk FOREIGN KEY (venta) REFERENCES public.venta(idventa) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3044 (class 2606 OID 26413)
-- Name: deuda_banco_folder deuda_banco_folder_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deuda_banco_folder
    ADD CONSTRAINT deuda_banco_folder_fk FOREIGN KEY (banco) REFERENCES public.banco(idbanco) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3045 (class 2606 OID 26418)
-- Name: deuda_banco_folder deuda_banco_folder_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deuda_banco_folder
    ADD CONSTRAINT deuda_banco_folder_fk_1 FOREIGN KEY (folder) REFERENCES public.folder(idfolder) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3046 (class 2606 OID 26438)
-- Name: estado_tramite estado_tramite_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_tramite
    ADD CONSTRAINT estado_tramite_fk FOREIGN KEY (tramite) REFERENCES public.tramitebancario(idtramitebancario) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3047 (class 2606 OID 26443)
-- Name: estado_tramite estado_tramite_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_tramite
    ADD CONSTRAINT estado_tramite_fk_1 FOREIGN KEY (estado) REFERENCES public.estado(idestado) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3048 (class 2606 OID 26428)
-- Name: folder folder_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.folder
    ADD CONSTRAINT folder_fk FOREIGN KEY (tramite) REFERENCES public.tramitebancario(idtramitebancario) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3049 (class 2606 OID 26453)
-- Name: lista_deuda_banco lista_deuda_banco_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lista_deuda_banco
    ADD CONSTRAINT lista_deuda_banco_fk FOREIGN KEY (listafolder) REFERENCES public.lista_folder(idlistafolder) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3050 (class 2606 OID 26458)
-- Name: lista_deuda_banco lista_deuda_banco_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lista_deuda_banco
    ADD CONSTRAINT lista_deuda_banco_fk_1 FOREIGN KEY (banco) REFERENCES public.banco(idbanco) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3051 (class 2606 OID 26448)
-- Name: lista_folder lista_folder_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lista_folder
    ADD CONSTRAINT lista_folder_fk FOREIGN KEY (folder) REFERENCES public.folder(idfolder) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3052 (class 2606 OID 26377)
-- Name: tramitebancario tramitebancario_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tramitebancario
    ADD CONSTRAINT tramitebancario_fk FOREIGN KEY (cliente) REFERENCES public.cliente(idcliente) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3053 (class 2606 OID 26382)
-- Name: tramitebancario tramitebancario_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tramitebancario
    ADD CONSTRAINT tramitebancario_fk_1 FOREIGN KEY (usuario) REFERENCES public.usuario(idusuario) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3054 (class 2606 OID 26387)
-- Name: tramitebancario tramitebancario_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tramitebancario
    ADD CONSTRAINT tramitebancario_fk_2 FOREIGN KEY (banco) REFERENCES public.banco(idbanco) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3043 (class 2606 OID 18032)
-- Name: detalle_vehiculo vehiculo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_vehiculo
    ADD CONSTRAINT vehiculo FOREIGN KEY (vehiculo) REFERENCES public.vehiculo(idvehiculo) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3055 (class 2606 OID 26601)
-- Name: vehiculo vehiculo_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vehiculo
    ADD CONSTRAINT vehiculo_fk FOREIGN KEY (administrador) REFERENCES public.usuario(idusuario) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 3057 (class 2606 OID 18095)
-- Name: venta venta_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_cliente_fkey FOREIGN KEY (cliente) REFERENCES public.cliente(idcliente);


--
-- TOC entry 3056 (class 2606 OID 18090)
-- Name: venta venta_usuario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_usuario_fkey FOREIGN KEY (usuario) REFERENCES public.usuario(idusuario);


-- Completed on 2022-05-09 18:24:41

--
-- PostgreSQL database dump complete
--

