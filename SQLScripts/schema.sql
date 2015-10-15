--
-- PostgreSQL database dump
--

-- Dumped from database version 9.2.8
-- Dumped by pg_dump version 9.2.8
-- Started on 2015-05-26 07:44:13

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 226 (class 3079 OID 11727)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2408 (class 0 OID 0)
-- Dependencies: 226
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 184 (class 1259 OID 147898)
-- Name: activofijo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE activofijo (
    id bigint NOT NULL,
    anos_vida_util integer,
    fecha_adquisicion date,
    status character varying(255),
    tipo_depreciacion character varying(255),
    id_producto bigint,
    id_tipo_activo_fijo bigint,
    CONSTRAINT activofijo_anos_vida_util_check CHECK ((anos_vida_util >= 1))
);


ALTER TABLE public.activofijo OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 148046)
-- Name: asistencia; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE asistencia (
    idasistencia integer NOT NULL,
    fecha date NOT NULL,
    horafin timestamp without time zone NOT NULL,
    horaincio timestamp without time zone NOT NULL,
    idempleado integer NOT NULL
);


ALTER TABLE public.asistencia OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 148051)
-- Name: capacitacion; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE capacitacion (
    idcapacitacion integer NOT NULL,
    fechafin date NOT NULL,
    fechainicio date NOT NULL,
    nombre character varying(45) NOT NULL,
    empleado_idempleado integer NOT NULL
);


ALTER TABLE public.capacitacion OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 147923)
-- Name: catalogocuenta; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE catalogocuenta (
    idcatalogocuenta integer NOT NULL,
    claveinterbancaria character varying(18) NOT NULL,
    deber real NOT NULL,
    haber real NOT NULL,
    nacional boolean NOT NULL,
    nombre character varying(100) NOT NULL,
    empresa integer NOT NULL
);


ALTER TABLE public.catalogocuenta OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 141862)
-- Name: catalogoproducto; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE catalogoproducto (
    idcatalogoproducto integer NOT NULL,
    codigo character varying(45) NOT NULL,
    costo double precision NOT NULL,
    descripcion character varying(60) NOT NULL,
    nombre character varying(45) NOT NULL,
    noserie character varying(45) NOT NULL,
    precio double precision NOT NULL,
    volumen integer NOT NULL,
    lineaproduccion_idlineaproduccion integer NOT NULL
);


ALTER TABLE public.catalogoproducto OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 147907)
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cliente (
    id bigint NOT NULL,
    apellido_materno character varying(100),
    apellido_paterno character varying(100) NOT NULL,
    calle character varying(255),
    colonia character varying(255),
    cp integer,
    email character varying(255) NOT NULL,
    empresa character varying(500) NOT NULL,
    estado character varying(255),
    extension1 character varying(255),
    extension2 character varying(255),
    municipio character varying(255),
    nombre_contacto character varying(100) NOT NULL,
    numero_exterior character varying(255),
    numero_interior character varying(255),
    pais character varying(100) NOT NULL,
    rfc character varying(13) NOT NULL,
    status boolean NOT NULL,
    sucursal character varying(255),
    telefono1 character varying(255),
    telefono2 character varying(255)
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 147915)
-- Name: conductor; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE conductor (
    id bigint NOT NULL,
    apellido_materno character varying(100) NOT NULL,
    apellido_paterno character varying(100) NOT NULL,
    disponibleconductor boolean NOT NULL,
    licencia character varying(100) NOT NULL,
    nombre character varying(100) NOT NULL,
    pagodia character varying(255) NOT NULL,
    status boolean NOT NULL
);


ALTER TABLE public.conductor OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 148056)
-- Name: credencial; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE credencial (
    id integer NOT NULL,
    contrasena character varying(100) NOT NULL,
    status boolean NOT NULL,
    usuario character varying(300) NOT NULL,
    id_empleado integer
);


ALTER TABLE public.credencial OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 147928)
-- Name: cuentabancaria; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cuentabancaria (
    id integer NOT NULL,
    clavebanco character varying(16) NOT NULL,
    claveinterbancaria character varying(18) NOT NULL,
    deber real NOT NULL,
    haber real NOT NULL,
    nombrebanco character varying(60) NOT NULL,
    departamento integer,
    empresa integer NOT NULL
);


ALTER TABLE public.cuentabancaria OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 148061)
-- Name: departamento; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE departamento (
    iddepartamento integer NOT NULL,
    nombre_departamento character varying(45),
    presupuesto double precision NOT NULL,
    id_cuentabancaria integer,
    id_empresa integer,
    metastopes_idmetastopes integer
);


ALTER TABLE public.departamento OWNER TO postgres;

--
-- TOC entry 180 (class 1259 OID 115253)
-- Name: descripcionventa; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE descripcionventa (
    iddescripcionventa integer NOT NULL,
    descripcion character varying(60) NOT NULL,
    sancionempleado_idsancionempleado integer NOT NULL,
    sansioncliente_idsansioncliente integer NOT NULL
);


ALTER TABLE public.descripcionventa OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 148066)
-- Name: detallevacaciones; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE detallevacaciones (
    iddetallevacaciones integer NOT NULL,
    idempleado integer NOT NULL,
    idvacaciones integer NOT NULL
);


ALTER TABLE public.detallevacaciones OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 115270)
-- Name: detalleventa; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE detalleventa (
    iddetalleventa integer NOT NULL,
    descripcionventa_iddescripcionventa integer NOT NULL,
    catalogoproducto_idcatalogoproducto integer NOT NULL,
    ordenventa_idordenventa integer NOT NULL
);


ALTER TABLE public.detalleventa OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 148071)
-- Name: empleado; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE empleado (
    idempleado integer NOT NULL,
    amaterno character varying(255),
    apaterno character varying(255) NOT NULL,
    calle character varying(255),
    codigo_postal integer,
    colonia character varying(255),
    email character varying(255),
    estado character varying(255) NOT NULL,
    estado_civil character varying(45),
    fecha_nacimiento date NOT NULL,
    municipio character varying(255) NOT NULL,
    nombre character varying(255) NOT NULL,
    num_seguro character varying(255),
    rfc character varying(45),
    sexo character varying(45),
    telefono character varying(255),
    id_credencial integer,
    id_departamento integer,
    id_puesto integer
);


ALTER TABLE public.empleado OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 147941)
-- Name: empresa; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE empresa (
    id integer NOT NULL,
    calle character varying(60) NOT NULL,
    capitalinicial real NOT NULL,
    colonia character varying(60) NOT NULL,
    email character varying(60) NOT NULL,
    estado character varying(60) NOT NULL,
    municipio character varying(60) NOT NULL,
    nombre character varying(60) NOT NULL,
    nume character varying(60) NOT NULL,
    numi character varying(60) NOT NULL,
    pais character varying(60) NOT NULL,
    rfc character varying(13) NOT NULL,
    telefono character varying(12) NOT NULL
);


ALTER TABLE public.empresa OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 147933)
-- Name: empresatransporte; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE empresatransporte (
    id bigint NOT NULL,
    calle character varying(100) NOT NULL,
    ciudad character varying(100) NOT NULL,
    nombreempresa character varying(500) NOT NULL,
    numero character varying(255),
    pais character varying(100) NOT NULL,
    rfc character varying(13) NOT NULL,
    status boolean NOT NULL,
    tipo boolean NOT NULL
);


ALTER TABLE public.empresatransporte OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 148079)
-- Name: estacion; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE estacion (
    idestacion integer NOT NULL,
    descripcion character varying(60) NOT NULL,
    nombre character varying(45) NOT NULL,
    tiempo integer NOT NULL,
    lineaproduccion_idlineaproduccion integer NOT NULL
);


ALTER TABLE public.estacion OWNER TO postgres;

--
-- TOC entry 169 (class 1259 OID 114868)
-- Name: estadoorden; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE estadoorden (
    idestadoorden integer NOT NULL,
    descripcion character varying(60) NOT NULL
);


ALTER TABLE public.estadoorden OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 148084)
-- Name: estadoordendetrabajo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE estadoordendetrabajo (
    idestadoordendetrabajo bigint NOT NULL,
    status character varying(45) NOT NULL,
    idordentrabajo_idordentrabajo integer
);


ALTER TABLE public.estadoordendetrabajo OWNER TO postgres;

--
-- TOC entry 176 (class 1259 OID 115184)
-- Name: estadoordentrabajo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE estadoordentrabajo (
    idestadoordentrabajo integer NOT NULL,
    status character varying(45) NOT NULL,
    ordentrabajo_idordentrabajo integer NOT NULL
);


ALTER TABLE public.estadoordentrabajo OWNER TO postgres;

--
-- TOC entry 177 (class 1259 OID 115195)
-- Name: estadoordenventa; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE estadoordenventa (
    idestadoordenventa integer NOT NULL,
    status character varying(45) NOT NULL
);


ALTER TABLE public.estadoordenventa OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 147949)
-- Name: factura; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE factura (
    id bigint NOT NULL,
    iva double precision,
    subtotal double precision,
    total double precision
);


ALTER TABLE public.factura OWNER TO postgres;

--
-- TOC entry 192 (class 1259 OID 147954)
-- Name: gastosenvio; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE gastosenvio (
    id bigint NOT NULL,
    casetas character varying(255) NOT NULL,
    gastos_alojamiento character varying(255) NOT NULL,
    gastos_envio character varying(255) NOT NULL,
    status boolean NOT NULL,
    id_cliente bigint
);


ALTER TABLE public.gastosenvio OWNER TO postgres;

--
-- TOC entry 193 (class 1259 OID 147962)
-- Name: gastosgenerales; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE gastosgenerales (
    id integer NOT NULL,
    costo real NOT NULL,
    fecha date NOT NULL,
    nombreservicio character varying(60) NOT NULL,
    CONSTRAINT gastosgenerales_costo_check CHECK ((costo >= (0)::double precision))
);


ALTER TABLE public.gastosgenerales OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 148362)
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO postgres;

--
-- TOC entry 175 (class 1259 OID 115161)
-- Name: historial; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE historial (
    idhistorial integer NOT NULL,
    fechamovimiento date NOT NULL,
    empleado_idempleadoanterior integer NOT NULL,
    empleado_idempleadoactual integer NOT NULL,
    activofijo_idactivofijo integer NOT NULL
);


ALTER TABLE public.historial OWNER TO postgres;

--
-- TOC entry 194 (class 1259 OID 147968)
-- Name: historial_activofijo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE historial_activofijo (
    id bigint NOT NULL,
    fecha_movimiento date,
    id_activo_fijo bigint,
    id_empleado_anterior integer,
    id_empleado_actual integer
);


ALTER TABLE public.historial_activofijo OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 148089)
-- Name: inventario; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE inventario (
    id integer NOT NULL,
    cantidad integer NOT NULL,
    categoria character varying(70) NOT NULL,
    codigoinventario character varying(6) NOT NULL,
    fechaentrada date NOT NULL,
    fechaproduccion date NOT NULL,
    maximo integer NOT NULL,
    minimo integer NOT NULL,
    nombre character varying(50) NOT NULL,
    precio_unitario double precision NOT NULL,
    status boolean NOT NULL,
    tipoproducto character varying(45) NOT NULL,
    ubicacion character varying(70) NOT NULL,
    CONSTRAINT inventario_maximo_check CHECK ((maximo >= 1)),
    CONSTRAINT inventario_minimo_check CHECK ((minimo >= 1))
);


ALTER TABLE public.inventario OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 148096)
-- Name: lineaproduccion; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE lineaproduccion (
    idlineaproduccion integer NOT NULL,
    activo character(1) NOT NULL,
    nombre character varying(45) NOT NULL,
    responsa character varying(45) NOT NULL,
    tiempo integer NOT NULL,
    idproducto_id bigint
);


ALTER TABLE public.lineaproduccion OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 148101)
-- Name: metastopes; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE metastopes (
    idmetastopes integer NOT NULL,
    dep character varying(45) NOT NULL,
    descripcion character varying(60) NOT NULL,
    fechaf date NOT NULL,
    fechai date NOT NULL,
    status character varying(45) NOT NULL
);


ALTER TABLE public.metastopes OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 148106)
-- Name: nomina; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE nomina (
    idnomina integer NOT NULL,
    periodo integer NOT NULL,
    sueldototal double precision NOT NULL,
    empleado_idempleado integer NOT NULL,
    prestacion_idprestacion integer NOT NULL
);


ALTER TABLE public.nomina OWNER TO postgres;

--
-- TOC entry 172 (class 1259 OID 115023)
-- Name: notificacion; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE notificacion (
    idnotificacion integer NOT NULL,
    status smallint NOT NULL,
    titulo character varying(45) NOT NULL,
    fecha timestamp(0) without time zone NOT NULL,
    topesmetas character varying(45) NOT NULL,
    contenido character varying(45) NOT NULL,
    origen character varying(45) NOT NULL,
    destino character varying(45) NOT NULL,
    departamento_iddepartamento integer NOT NULL
);


ALTER TABLE public.notificacion OWNER TO postgres;

--
-- TOC entry 195 (class 1259 OID 147973)
-- Name: orden_venta; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE orden_venta (
    id bigint NOT NULL,
    deposito boolean,
    facturada boolean,
    fecha_entrega date NOT NULL,
    fecha_pedido date,
    monto double precision NOT NULL,
    monto_concargos double precision NOT NULL,
    status character varying(255) NOT NULL,
    id_cliente bigint,
    id_factura bigint,
    vendedor_idempleado integer
);


ALTER TABLE public.orden_venta OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 147978)
-- Name: ordencompra; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE ordencompra (
    id bigint NOT NULL,
    aprobada boolean NOT NULL,
    costo_total double precision NOT NULL,
    fecha_entrega date,
    fecha_pedido date NOT NULL,
    forma_pago character varying(500) NOT NULL
);


ALTER TABLE public.ordencompra OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 115309)
-- Name: ordendeenvio; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE ordendeenvio (
    idordendeenvio integer NOT NULL,
    horaentrega timestamp(0) without time zone NOT NULL,
    tiempoentrega timestamp(0) without time zone NOT NULL,
    nombrerecibe character varying(45) NOT NULL,
    ordenventa_idordenventa integer NOT NULL,
    transporte_idtransporte integer NOT NULL
);


ALTER TABLE public.ordendeenvio OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 147986)
-- Name: ordenenvio; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE ordenenvio (
    id bigint NOT NULL,
    hora_entrega character varying(255),
    nombre_recibe character varying(500) NOT NULL,
    status boolean NOT NULL,
    tiempo_entrega character varying(100) NOT NULL,
    id_conductor bigint,
    id_transporte bigint,
    id_ordenventa bigint
);


ALTER TABLE public.ordenenvio OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 148111)
-- Name: ordentrabajo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE ordentrabajo (
    idordentrabajo integer NOT NULL,
    auditor character varying(45) NOT NULL,
    comentario character varying(100) NOT NULL,
    descripcion character varying(60) NOT NULL,
    fechaentrega date NOT NULL,
    fechapedido date NOT NULL,
    prioridad character varying(45) NOT NULL,
    lineaproduccion_idlineaproduccion integer NOT NULL
);


ALTER TABLE public.ordentrabajo OWNER TO postgres;

--
-- TOC entry 178 (class 1259 OID 115208)
-- Name: ordenventa; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE ordenventa (
    idordenventa integer NOT NULL,
    fechapedido date NOT NULL,
    fechaentrega date NOT NULL,
    monto double precision NOT NULL,
    facturada smallint NOT NULL,
    deposito smallint NOT NULL,
    cliente_idcliente integer NOT NULL,
    tipomodena_idtipomodena integer NOT NULL,
    estadoordenventa_idestadoordenventa integer NOT NULL
);


ALTER TABLE public.ordenventa OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 148116)
-- Name: prestacion; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE prestacion (
    idprestacion integer NOT NULL,
    descripcion character varying(60) NOT NULL,
    fechafin date NOT NULL,
    fechainicio date NOT NULL,
    monto double precision NOT NULL,
    nombre character varying(45) NOT NULL
);


ALTER TABLE public.prestacion OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 147999)
-- Name: producto; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE producto (
    id bigint NOT NULL,
    categoria character varying(255) NOT NULL,
    descripcion character varying(100) NOT NULL,
    marca character varying(10) NOT NULL,
    nombre character varying(100) NOT NULL
);


ALTER TABLE public.producto OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 147994)
-- Name: producto_vendido; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE producto_vendido (
    id bigint NOT NULL,
    cantidad integer NOT NULL,
    id_orden_venta bigint,
    productoinventario_id integer
);


ALTER TABLE public.producto_vendido OWNER TO postgres;

--
-- TOC entry 171 (class 1259 OID 114922)
-- Name: productoadquirido; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE productoadquirido (
    idproductoadquirido integer NOT NULL,
    nombre character varying(45) NOT NULL,
    descripcion character varying(45) NOT NULL,
    costo double precision NOT NULL,
    status smallint NOT NULL,
    ordencompra_idordencompra integer NOT NULL,
    catalogoproducto_idcatalogoproducto integer NOT NULL,
    inventario_idinventario integer NOT NULL,
    proveedor_idproveedor integer NOT NULL,
    tipopago_idtipopago integer NOT NULL
);


ALTER TABLE public.productoadquirido OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 148004)
-- Name: productoenorden; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE productoenorden (
    id bigint NOT NULL,
    cantdad integer NOT NULL,
    id_orden bigint,
    id_productoproveedor bigint NOT NULL
);


ALTER TABLE public.productoenorden OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 148009)
-- Name: productoproveedor; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE productoproveedor (
    id bigint NOT NULL,
    costo character varying(100) NOT NULL,
    status character varying(100) NOT NULL,
    unidad character varying(100) NOT NULL,
    id_producto bigint,
    id_productosenorden bigint,
    id_proveedor bigint
);


ALTER TABLE public.productoproveedor OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 148014)
-- Name: proveedor; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE proveedor (
    id bigint NOT NULL,
    apellido_materno character varying(100) NOT NULL,
    apellido_paterno character varying(100) NOT NULL,
    calle character varying(500) NOT NULL,
    colonia character varying(500) NOT NULL,
    cp integer NOT NULL,
    email character varying(255) NOT NULL,
    empresa character varying(500) NOT NULL,
    estado character varying(500) NOT NULL,
    extension1 character varying(255) NOT NULL,
    extension2 character varying(255),
    municipio character varying(500) NOT NULL,
    nombre character varying(100) NOT NULL,
    numero_exterior character varying(255) NOT NULL,
    numero_interior character varying(255) NOT NULL,
    pais character varying(100) NOT NULL,
    rfc character varying(13) NOT NULL,
    status boolean NOT NULL,
    telefono1 character varying(255) NOT NULL,
    telefono2 character varying(255)
);


ALTER TABLE public.proveedor OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 148121)
-- Name: puesto; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE puesto (
    id integer NOT NULL,
    descripcion character varying(255) NOT NULL,
    hora_entrada character varying(255) NOT NULL,
    hora_fin character varying(255) NOT NULL,
    nombre character varying(255) NOT NULL,
    presupuesto double precision NOT NULL,
    status boolean NOT NULL,
    sueldo_base double precision NOT NULL,
    rol_id integer
);


ALTER TABLE public.puesto OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 148129)
-- Name: rol; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE rol (
    id integer NOT NULL,
    descripcion character varying(255) NOT NULL,
    nombre character varying(255) NOT NULL,
    status boolean NOT NULL
);


ALTER TABLE public.rol OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 148022)
-- Name: sancion_cliente; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sancion_cliente (
    id bigint NOT NULL,
    descripcion character varying(255),
    monto double precision NOT NULL,
    id_orden_venta bigint
);


ALTER TABLE public.sancion_cliente OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 148137)
-- Name: sancionempleado; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sancionempleado (
    idsancionempleado integer NOT NULL,
    descripcion character varying(60) NOT NULL,
    monto double precision NOT NULL,
    nombre character varying(45) NOT NULL,
    nomina_idnomina integer NOT NULL
);


ALTER TABLE public.sancionempleado OWNER TO postgres;

--
-- TOC entry 179 (class 1259 OID 115242)
-- Name: sansioncliente; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sansioncliente (
    idsansioncliente integer NOT NULL,
    monto double precision NOT NULL,
    cliente_idcliente integer NOT NULL
);


ALTER TABLE public.sansioncliente OWNER TO postgres;

--
-- TOC entry 174 (class 1259 OID 115083)
-- Name: statusactivofijo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE statusactivofijo (
    idstatusactivofijo integer NOT NULL,
    status character varying(45) NOT NULL
);


ALTER TABLE public.statusactivofijo OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 148027)
-- Name: tipoactivofijo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tipoactivofijo (
    id bigint NOT NULL,
    nombre character varying(255)
);


ALTER TABLE public.tipoactivofijo OWNER TO postgres;

--
-- TOC entry 173 (class 1259 OID 115078)
-- Name: tipodepreciacion; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tipodepreciacion (
    idtipodepreciacion integer NOT NULL,
    nombre character varying(45) NOT NULL
);


ALTER TABLE public.tipodepreciacion OWNER TO postgres;

--
-- TOC entry 168 (class 1259 OID 114803)
-- Name: tipomodena; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tipomodena (
    idtipomodena integer NOT NULL,
    nombremodena character varying(45) NOT NULL,
    valor double precision NOT NULL
);


ALTER TABLE public.tipomodena OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 148040)
-- Name: tipomoneda; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tipomoneda (
    id integer NOT NULL,
    nombremoneda character varying(60) NOT NULL,
    valorenpesos double precision NOT NULL,
    CONSTRAINT tipomoneda_valorenpesos_check CHECK ((valorenpesos >= (0)::double precision))
);


ALTER TABLE public.tipomoneda OWNER TO postgres;

--
-- TOC entry 170 (class 1259 OID 114917)
-- Name: tipopago; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tipopago (
    idtipopago integer NOT NULL,
    descripcion character varying(60) NOT NULL
);


ALTER TABLE public.tipopago OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 148032)
-- Name: transporte; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE transporte (
    id bigint NOT NULL,
    costodia character varying(255) NOT NULL,
    dimension character varying(255) NOT NULL,
    disponibletransporte boolean NOT NULL,
    placas character varying(7) NOT NULL,
    status boolean NOT NULL,
    tipotransporte character varying(255) NOT NULL,
    idempresa bigint
);


ALTER TABLE public.transporte OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 148142)
-- Name: vacaciones; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE vacaciones (
    idvacaciones integer NOT NULL,
    aprobacion integer NOT NULL,
    fechaalta date NOT NULL,
    fechabaja date NOT NULL,
    status character varying(255) NOT NULL
);


ALTER TABLE public.vacaciones OWNER TO postgres;

--
-- TOC entry 2359 (class 0 OID 147898)
-- Dependencies: 184
-- Data for Name: activofijo; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- TOC entry 2106 (class 2606 OID 147906)
-- Name: activofijo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY activofijo
    ADD CONSTRAINT activofijo_pkey PRIMARY KEY (id);


--
-- TOC entry 2152 (class 2606 OID 148050)
-- Name: asistencia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY asistencia
    ADD CONSTRAINT asistencia_pkey PRIMARY KEY (idasistencia);


--
-- TOC entry 2154 (class 2606 OID 148055)
-- Name: capacitacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY capacitacion
    ADD CONSTRAINT capacitacion_pkey PRIMARY KEY (idcapacitacion);


--
-- TOC entry 2112 (class 2606 OID 147927)
-- Name: catalogocuenta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY catalogocuenta
    ADD CONSTRAINT catalogocuenta_pkey PRIMARY KEY (idcatalogocuenta);


--
-- TOC entry 2104 (class 2606 OID 141866)
-- Name: catalogoproducto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY catalogoproducto
    ADD CONSTRAINT catalogoproducto_pkey PRIMARY KEY (idcatalogoproducto);


--
-- TOC entry 2108 (class 2606 OID 147914)
-- Name: cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id);


--
-- TOC entry 2110 (class 2606 OID 147922)
-- Name: conductor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY conductor
    ADD CONSTRAINT conductor_pkey PRIMARY KEY (id);


--
-- TOC entry 2156 (class 2606 OID 148060)
-- Name: credencial_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY credencial
    ADD CONSTRAINT credencial_pkey PRIMARY KEY (id);


--
-- TOC entry 2114 (class 2606 OID 147932)
-- Name: cuentabancaria_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cuentabancaria
    ADD CONSTRAINT cuentabancaria_pkey PRIMARY KEY (id);


--
-- TOC entry 2158 (class 2606 OID 148065)
-- Name: departamento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY departamento
    ADD CONSTRAINT departamento_pkey PRIMARY KEY (iddepartamento);


--
-- TOC entry 2091 (class 2606 OID 115257)
-- Name: descripcionventa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY descripcionventa
    ADD CONSTRAINT descripcionventa_pkey PRIMARY KEY (iddescripcionventa);


--
-- TOC entry 2160 (class 2606 OID 148070)
-- Name: detallevacaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY detallevacaciones
    ADD CONSTRAINT detallevacaciones_pkey PRIMARY KEY (iddetallevacaciones);


--
-- TOC entry 2095 (class 2606 OID 115274)
-- Name: detalleventa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY detalleventa
    ADD CONSTRAINT detalleventa_pkey PRIMARY KEY (iddetalleventa);


--
-- TOC entry 2162 (class 2606 OID 148078)
-- Name: empleado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY empleado
    ADD CONSTRAINT empleado_pkey PRIMARY KEY (idempleado);


--
-- TOC entry 2118 (class 2606 OID 147948)
-- Name: empresa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY empresa
    ADD CONSTRAINT empresa_pkey PRIMARY KEY (id);


--
-- TOC entry 2116 (class 2606 OID 147940)
-- Name: empresatransporte_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY empresatransporte
    ADD CONSTRAINT empresatransporte_pkey PRIMARY KEY (id);


--
-- TOC entry 2164 (class 2606 OID 148083)
-- Name: estacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY estacion
    ADD CONSTRAINT estacion_pkey PRIMARY KEY (idestacion);


--
-- TOC entry 2055 (class 2606 OID 114872)
-- Name: estadoorden_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY estadoorden
    ADD CONSTRAINT estadoorden_pkey PRIMARY KEY (idestadoorden);


--
-- TOC entry 2166 (class 2606 OID 148088)
-- Name: estadoordendetrabajo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY estadoordendetrabajo
    ADD CONSTRAINT estadoordendetrabajo_pkey PRIMARY KEY (idestadoordendetrabajo);


--
-- TOC entry 2078 (class 2606 OID 115188)
-- Name: estadoordentrabajo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY estadoordentrabajo
    ADD CONSTRAINT estadoordentrabajo_pkey PRIMARY KEY (idestadoordentrabajo);


--
-- TOC entry 2081 (class 2606 OID 115199)
-- Name: estadoordenventa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY estadoordenventa
    ADD CONSTRAINT estadoordenventa_pkey PRIMARY KEY (idestadoordenventa);


--
-- TOC entry 2120 (class 2606 OID 147953)
-- Name: factura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY factura
    ADD CONSTRAINT factura_pkey PRIMARY KEY (id);


--
-- TOC entry 2122 (class 2606 OID 147961)
-- Name: gastosenvio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gastosenvio
    ADD CONSTRAINT gastosenvio_pkey PRIMARY KEY (id);


--
-- TOC entry 2124 (class 2606 OID 147967)
-- Name: gastosgenerales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY gastosgenerales
    ADD CONSTRAINT gastosgenerales_pkey PRIMARY KEY (id);


--
-- TOC entry 2126 (class 2606 OID 147972)
-- Name: historial_activofijo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY historial_activofijo
    ADD CONSTRAINT historial_activofijo_pkey PRIMARY KEY (id);


--
-- TOC entry 2076 (class 2606 OID 115165)
-- Name: historial_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY historial
    ADD CONSTRAINT historial_pkey PRIMARY KEY (idhistorial);


--
-- TOC entry 2168 (class 2606 OID 148095)
-- Name: inventario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY inventario
    ADD CONSTRAINT inventario_pkey PRIMARY KEY (id);


--
-- TOC entry 2170 (class 2606 OID 148100)
-- Name: lineaproduccion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lineaproduccion
    ADD CONSTRAINT lineaproduccion_pkey PRIMARY KEY (idlineaproduccion);


--
-- TOC entry 2172 (class 2606 OID 148105)
-- Name: metastopes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY metastopes
    ADD CONSTRAINT metastopes_pkey PRIMARY KEY (idmetastopes);


--
-- TOC entry 2174 (class 2606 OID 148110)
-- Name: nomina_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY nomina
    ADD CONSTRAINT nomina_pkey PRIMARY KEY (idnomina);


--
-- TOC entry 2067 (class 2606 OID 115027)
-- Name: notificacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY notificacion
    ADD CONSTRAINT notificacion_pkey PRIMARY KEY (idnotificacion);


--
-- TOC entry 2128 (class 2606 OID 147977)
-- Name: orden_venta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY orden_venta
    ADD CONSTRAINT orden_venta_pkey PRIMARY KEY (id);


--
-- TOC entry 2130 (class 2606 OID 147985)
-- Name: ordencompra_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ordencompra
    ADD CONSTRAINT ordencompra_pkey PRIMARY KEY (id);


--
-- TOC entry 2102 (class 2606 OID 115313)
-- Name: ordendeenvio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ordendeenvio
    ADD CONSTRAINT ordendeenvio_pkey PRIMARY KEY (idordendeenvio);


--
-- TOC entry 2132 (class 2606 OID 147993)
-- Name: ordenenvio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ordenenvio
    ADD CONSTRAINT ordenenvio_pkey PRIMARY KEY (id);


--
-- TOC entry 2176 (class 2606 OID 148115)
-- Name: ordentrabajo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ordentrabajo
    ADD CONSTRAINT ordentrabajo_pkey PRIMARY KEY (idordentrabajo);


--
-- TOC entry 2086 (class 2606 OID 115212)
-- Name: ordenventa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ordenventa
    ADD CONSTRAINT ordenventa_pkey PRIMARY KEY (idordenventa);


--
-- TOC entry 2178 (class 2606 OID 148120)
-- Name: prestacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY prestacion
    ADD CONSTRAINT prestacion_pkey PRIMARY KEY (idprestacion);


--
-- TOC entry 2136 (class 2606 OID 148003)
-- Name: producto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (id);


--
-- TOC entry 2134 (class 2606 OID 147998)
-- Name: producto_vendido_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY producto_vendido
    ADD CONSTRAINT producto_vendido_pkey PRIMARY KEY (id);


--
-- TOC entry 2064 (class 2606 OID 114926)
-- Name: productoadquirido_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY productoadquirido
    ADD CONSTRAINT productoadquirido_pkey PRIMARY KEY (idproductoadquirido);


--
-- TOC entry 2138 (class 2606 OID 148008)
-- Name: productoenorden_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY productoenorden
    ADD CONSTRAINT productoenorden_pkey PRIMARY KEY (id);


--
-- TOC entry 2140 (class 2606 OID 148013)
-- Name: productoproveedor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY productoproveedor
    ADD CONSTRAINT productoproveedor_pkey PRIMARY KEY (id);


--
-- TOC entry 2142 (class 2606 OID 148021)
-- Name: proveedor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY proveedor
    ADD CONSTRAINT proveedor_pkey PRIMARY KEY (id);


--
-- TOC entry 2180 (class 2606 OID 148128)
-- Name: puesto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY puesto
    ADD CONSTRAINT puesto_pkey PRIMARY KEY (id);


--
-- TOC entry 2182 (class 2606 OID 148136)
-- Name: rol_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (id);


--
-- TOC entry 2144 (class 2606 OID 148026)
-- Name: sancion_cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sancion_cliente
    ADD CONSTRAINT sancion_cliente_pkey PRIMARY KEY (id);


--
-- TOC entry 2184 (class 2606 OID 148141)
-- Name: sancionempleado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sancionempleado
    ADD CONSTRAINT sancionempleado_pkey PRIMARY KEY (idsancionempleado);


--
-- TOC entry 2089 (class 2606 OID 115246)
-- Name: sansioncliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sansioncliente
    ADD CONSTRAINT sansioncliente_pkey PRIMARY KEY (idsansioncliente);


--
-- TOC entry 2071 (class 2606 OID 115087)
-- Name: statusactivofijo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY statusactivofijo
    ADD CONSTRAINT statusactivofijo_pkey PRIMARY KEY (idstatusactivofijo);


--
-- TOC entry 2146 (class 2606 OID 148031)
-- Name: tipoactivofijo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tipoactivofijo
    ADD CONSTRAINT tipoactivofijo_pkey PRIMARY KEY (id);


--
-- TOC entry 2069 (class 2606 OID 115082)
-- Name: tipodepreciacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tipodepreciacion
    ADD CONSTRAINT tipodepreciacion_pkey PRIMARY KEY (idtipodepreciacion);


--
-- TOC entry 2053 (class 2606 OID 114807)
-- Name: tipomodena_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tipomodena
    ADD CONSTRAINT tipomodena_pkey PRIMARY KEY (idtipomodena);


--
-- TOC entry 2150 (class 2606 OID 148045)
-- Name: tipomoneda_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tipomoneda
    ADD CONSTRAINT tipomoneda_pkey PRIMARY KEY (id);


--
-- TOC entry 2057 (class 2606 OID 114921)
-- Name: tipopago_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tipopago
    ADD CONSTRAINT tipopago_pkey PRIMARY KEY (idtipopago);


--
-- TOC entry 2148 (class 2606 OID 148039)
-- Name: transporte_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY transporte
    ADD CONSTRAINT transporte_pkey PRIMARY KEY (id);


--
-- TOC entry 2186 (class 2606 OID 148146)
-- Name: vacaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY vacaciones
    ADD CONSTRAINT vacaciones_pkey PRIMARY KEY (idvacaciones);


--
-- TOC entry 2092 (class 1259 OID 115268)
-- Name: fk_descripcionventa_sancionempleado1_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX fk_descripcionventa_sancionempleado1_idx ON descripcionventa USING btree (sancionempleado_idsancionempleado);


--
-- TOC entry 2093 (class 1259 OID 115269)
-- Name: fk_descripcionventa_sansioncliente1_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX fk_descripcionventa_sansioncliente1_idx ON descripcionventa USING btree (sansioncliente_idsansioncliente);


--
-- TOC entry 2096 (class 1259 OID 115291)
-- Name: fk_detalleventa_catalogoproducto1_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX fk_detalleventa_catalogoproducto1_idx ON detalleventa USING btree (catalogoproducto_idcatalogoproducto);


--
-- TOC entry 2097 (class 1259 OID 115290)
-- Name: fk_detalleventa_descripcionventa1_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX fk_detalleventa_descripcionventa1_idx ON detalleventa USING btree (descripcionventa_iddescripcionventa);


--
-- TOC entry 2098 (class 1259 OID 115292)
-- Name: fk_detalleventa_ordenventa1_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX fk_detalleventa_ordenventa1_idx ON detalleventa USING btree (ordenventa_idordenventa);


--
-- TOC entry 2079 (class 1259 OID 115194)
-- Name: fk_estadoordentrabajo_ordentrabajo1_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX fk_estadoordentrabajo_ordentrabajo1_idx ON estadoordentrabajo USING btree (ordentrabajo_idordentrabajo);


--
-- TOC entry 2072 (class 1259 OID 115183)
-- Name: fk_historial_activofijo1_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX fk_historial_activofijo1_idx ON historial USING btree (activofijo_idactivofijo);


--
-- TOC entry 2073 (class 1259 OID 115181)
-- Name: fk_historial_empleado1_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX fk_historial_empleado1_idx ON historial USING btree (empleado_idempleadoanterior);


--
-- TOC entry 2074 (class 1259 OID 115182)
-- Name: fk_historial_empleado2_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX fk_historial_empleado2_idx ON historial USING btree (empleado_idempleadoactual);


--
-- TOC entry 2065 (class 1259 OID 115033)
-- Name: fk_notificacion_departamento1_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX fk_notificacion_departamento1_idx ON notificacion USING btree (departamento_iddepartamento);


--
-- TOC entry 2099 (class 1259 OID 115324)
-- Name: fk_ordendeenvio_ordenventa1_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX fk_ordendeenvio_ordenventa1_idx ON ordendeenvio USING btree (ordenventa_idordenventa);


--
-- TOC entry 2100 (class 1259 OID 115325)
-- Name: fk_ordendeenvio_transporte1_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX fk_ordendeenvio_transporte1_idx ON ordendeenvio USING btree (transporte_idtransporte);


--
-- TOC entry 2082 (class 1259 OID 115228)
-- Name: fk_ordenventa_cliente1_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX fk_ordenventa_cliente1_idx ON ordenventa USING btree (cliente_idcliente);


--
-- TOC entry 2083 (class 1259 OID 115230)
-- Name: fk_ordenventa_estadoordenventa1_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX fk_ordenventa_estadoordenventa1_idx ON ordenventa USING btree (estadoordenventa_idestadoordenventa);


--
-- TOC entry 2084 (class 1259 OID 115229)
-- Name: fk_ordenventa_tipomodena1_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX fk_ordenventa_tipomodena1_idx ON ordenventa USING btree (tipomodena_idtipomodena);


--
-- TOC entry 2058 (class 1259 OID 114953)
-- Name: fk_productoadquirido_catalogoproducto1_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX fk_productoadquirido_catalogoproducto1_idx ON productoadquirido USING btree (catalogoproducto_idcatalogoproducto);


--
-- TOC entry 2059 (class 1259 OID 114954)
-- Name: fk_productoadquirido_inventario1_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX fk_productoadquirido_inventario1_idx ON productoadquirido USING btree (inventario_idinventario);


--
-- TOC entry 2060 (class 1259 OID 114952)
-- Name: fk_productoadquirido_ordencompra1_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX fk_productoadquirido_ordencompra1_idx ON productoadquirido USING btree (ordencompra_idordencompra);


--
-- TOC entry 2061 (class 1259 OID 114955)
-- Name: fk_productoadquirido_proveedor1_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX fk_productoadquirido_proveedor1_idx ON productoadquirido USING btree (proveedor_idproveedor);


--
-- TOC entry 2062 (class 1259 OID 114956)
-- Name: fk_productoadquirido_tipopago1_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX fk_productoadquirido_tipopago1_idx ON productoadquirido USING btree (tipopago_idtipopago);


--
-- TOC entry 2087 (class 1259 OID 115252)
-- Name: fk_sansioncliente_cliente1_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX fk_sansioncliente_cliente1_idx ON sansioncliente USING btree (cliente_idcliente);


--
-- TOC entry 2218 (class 2606 OID 148267)
-- Name: fk_1cv0t82m8r9xwb5qxdj882lk5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asistencia
    ADD CONSTRAINT fk_1cv0t82m8r9xwb5qxdj882lk5 FOREIGN KEY (idempleado) REFERENCES empleado(idempleado);


--
-- TOC entry 2230 (class 2606 OID 148327)
-- Name: fk_2ejqv7eop68sbrk7xqvu6llxq; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY estadoordendetrabajo
    ADD CONSTRAINT fk_2ejqv7eop68sbrk7xqvu6llxq FOREIGN KEY (idordentrabajo_idordentrabajo) REFERENCES ordentrabajo(idordentrabajo);


--
-- TOC entry 2209 (class 2606 OID 148222)
-- Name: fk_2hijbygjwn4q19issqlp7gqhg; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY producto_vendido
    ADD CONSTRAINT fk_2hijbygjwn4q19issqlp7gqhg FOREIGN KEY (id_orden_venta) REFERENCES orden_venta(id);


--
-- TOC entry 2225 (class 2606 OID 148302)
-- Name: fk_2ul6835ywywlbjtkakdgrc99g; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY detallevacaciones
    ADD CONSTRAINT fk_2ul6835ywywlbjtkakdgrc99g FOREIGN KEY (idvacaciones) REFERENCES vacaciones(idvacaciones);


--
-- TOC entry 2198 (class 2606 OID 148167)
-- Name: fk_2urg409miwhl37am93s3qvlck; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cuentabancaria
    ADD CONSTRAINT fk_2urg409miwhl37am93s3qvlck FOREIGN KEY (empresa) REFERENCES empresa(id);


--
-- TOC entry 2207 (class 2606 OID 148212)
-- Name: fk_2xprq1v3yefih62osa1h8j9n4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ordenenvio
    ADD CONSTRAINT fk_2xprq1v3yefih62osa1h8j9n4 FOREIGN KEY (id_transporte) REFERENCES transporte(id);


--
-- TOC entry 2210 (class 2606 OID 148227)
-- Name: fk_43l8u9m2gls038uew61d9d1wu; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY producto_vendido
    ADD CONSTRAINT fk_43l8u9m2gls038uew61d9d1wu FOREIGN KEY (productoinventario_id) REFERENCES inventario(id);


--
-- TOC entry 2235 (class 2606 OID 148352)
-- Name: fk_5tb5peg8i78pto8j3ch63o54e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY puesto
    ADD CONSTRAINT fk_5tb5peg8i78pto8j3ch63o54e FOREIGN KEY (rol_id) REFERENCES rol(id);


--
-- TOC entry 2199 (class 2606 OID 148172)
-- Name: fk_5uqk7n914tb7swq2jodc16t0m; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gastosenvio
    ADD CONSTRAINT fk_5uqk7n914tb7swq2jodc16t0m FOREIGN KEY (id_cliente) REFERENCES cliente(id);


--
-- TOC entry 2201 (class 2606 OID 148182)
-- Name: fk_6jdnr3rv8gaapd1bcvsbbky36; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY historial_activofijo
    ADD CONSTRAINT fk_6jdnr3rv8gaapd1bcvsbbky36 FOREIGN KEY (id_empleado_anterior) REFERENCES empleado(idempleado);


--
-- TOC entry 2215 (class 2606 OID 148252)
-- Name: fk_6uuxvedkqamh5kafne4tacvtf; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY productoproveedor
    ADD CONSTRAINT fk_6uuxvedkqamh5kafne4tacvtf FOREIGN KEY (id_proveedor) REFERENCES proveedor(id);


--
-- TOC entry 2222 (class 2606 OID 148287)
-- Name: fk_8k1270p3uk9h45vhpl2vnyxyn; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY departamento
    ADD CONSTRAINT fk_8k1270p3uk9h45vhpl2vnyxyn FOREIGN KEY (id_empresa) REFERENCES empresa(id);


--
-- TOC entry 2194 (class 2606 OID 148147)
-- Name: fk_8yjps0h0753kw4qroudnqwaht; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY activofijo
    ADD CONSTRAINT fk_8yjps0h0753kw4qroudnqwaht FOREIGN KEY (id_producto) REFERENCES productoproveedor(id);


--
-- TOC entry 2231 (class 2606 OID 148332)
-- Name: fk_avb1eanh6ma9n2p4caxl55ul; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY lineaproduccion
    ADD CONSTRAINT fk_avb1eanh6ma9n2p4caxl55ul FOREIGN KEY (idproducto_id) REFERENCES producto(id);


--
-- TOC entry 2211 (class 2606 OID 148232)
-- Name: fk_bt8d12xewk5tbg63ly1ht43kf; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY productoenorden
    ADD CONSTRAINT fk_bt8d12xewk5tbg63ly1ht43kf FOREIGN KEY (id_orden) REFERENCES ordencompra(id);


--
-- TOC entry 2208 (class 2606 OID 148217)
-- Name: fk_c7i7rbgxgwv3up233awd7a2fi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ordenenvio
    ADD CONSTRAINT fk_c7i7rbgxgwv3up233awd7a2fi FOREIGN KEY (id_ordenventa) REFERENCES orden_venta(id);


--
-- TOC entry 2223 (class 2606 OID 148292)
-- Name: fk_d0fou7prsq9vpb1cshc0117cf; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY departamento
    ADD CONSTRAINT fk_d0fou7prsq9vpb1cshc0117cf FOREIGN KEY (metastopes_idmetastopes) REFERENCES metastopes(idmetastopes);


--
-- TOC entry 2216 (class 2606 OID 148257)
-- Name: fk_d7s29kf4ij81yvctk100e881j; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sancion_cliente
    ADD CONSTRAINT fk_d7s29kf4ij81yvctk100e881j FOREIGN KEY (id_orden_venta) REFERENCES orden_venta(id);


--
-- TOC entry 2190 (class 2606 OID 115263)
-- Name: fk_descripcionventa_sansioncliente1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY descripcionventa
    ADD CONSTRAINT fk_descripcionventa_sansioncliente1 FOREIGN KEY (sansioncliente_idsansioncliente) REFERENCES sansioncliente(idsansioncliente);


--
-- TOC entry 2191 (class 2606 OID 115275)
-- Name: fk_detalleventa_descripcionventa1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY detalleventa
    ADD CONSTRAINT fk_detalleventa_descripcionventa1 FOREIGN KEY (descripcionventa_iddescripcionventa) REFERENCES descripcionventa(iddescripcionventa);


--
-- TOC entry 2192 (class 2606 OID 115285)
-- Name: fk_detalleventa_ordenventa1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY detalleventa
    ADD CONSTRAINT fk_detalleventa_ordenventa1 FOREIGN KEY (ordenventa_idordenventa) REFERENCES ordenventa(idordenventa);


--
-- TOC entry 2227 (class 2606 OID 148312)
-- Name: fk_duivhh28ix7psao2yq15ilmd3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY empleado
    ADD CONSTRAINT fk_duivhh28ix7psao2yq15ilmd3 FOREIGN KEY (id_departamento) REFERENCES departamento(iddepartamento);


--
-- TOC entry 2204 (class 2606 OID 148197)
-- Name: fk_dwtoi3ena5pm2pb67lkwcd1lm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orden_venta
    ADD CONSTRAINT fk_dwtoi3ena5pm2pb67lkwcd1lm FOREIGN KEY (id_factura) REFERENCES factura(id);


--
-- TOC entry 2228 (class 2606 OID 148317)
-- Name: fk_etp4df9svayns7n6wjtxg0clt; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY empleado
    ADD CONSTRAINT fk_etp4df9svayns7n6wjtxg0clt FOREIGN KEY (id_puesto) REFERENCES puesto(id);


--
-- TOC entry 2212 (class 2606 OID 148237)
-- Name: fk_fcpm7e8obx4otvqoh16mu45hd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY productoenorden
    ADD CONSTRAINT fk_fcpm7e8obx4otvqoh16mu45hd FOREIGN KEY (id_productoproveedor) REFERENCES productoproveedor(id);


--
-- TOC entry 2206 (class 2606 OID 148207)
-- Name: fk_g7jyjkbefh18xdqtdoxljq3vu; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ordenenvio
    ADD CONSTRAINT fk_g7jyjkbefh18xdqtdoxljq3vu FOREIGN KEY (id_conductor) REFERENCES conductor(id);


--
-- TOC entry 2232 (class 2606 OID 148337)
-- Name: fk_gopl3xv7iski6niwmtw6qdh4c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY nomina
    ADD CONSTRAINT fk_gopl3xv7iski6niwmtw6qdh4c FOREIGN KEY (empleado_idempleado) REFERENCES empleado(idempleado);


--
-- TOC entry 2233 (class 2606 OID 148342)
-- Name: fk_gyqax9b1l08eecxqnnffo2eoa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY nomina
    ADD CONSTRAINT fk_gyqax9b1l08eecxqnnffo2eoa FOREIGN KEY (prestacion_idprestacion) REFERENCES prestacion(idprestacion);


--
-- TOC entry 2234 (class 2606 OID 148347)
-- Name: fk_hvhlk0db9f5hv5mq1l9os2jb8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ordentrabajo
    ADD CONSTRAINT fk_hvhlk0db9f5hv5mq1l9os2jb8 FOREIGN KEY (lineaproduccion_idlineaproduccion) REFERENCES lineaproduccion(idlineaproduccion);


--
-- TOC entry 2200 (class 2606 OID 148177)
-- Name: fk_if76i16citkrjsnu6tvfd1nkc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY historial_activofijo
    ADD CONSTRAINT fk_if76i16citkrjsnu6tvfd1nkc FOREIGN KEY (id_activo_fijo) REFERENCES activofijo(id);


--
-- TOC entry 2196 (class 2606 OID 148157)
-- Name: fk_j4t3bltu93r80kt4abtl17ev8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY catalogocuenta
    ADD CONSTRAINT fk_j4t3bltu93r80kt4abtl17ev8 FOREIGN KEY (empresa) REFERENCES empresa(id);


--
-- TOC entry 2219 (class 2606 OID 148272)
-- Name: fk_jsl93d04ciyw6fmoxoksxp4ur; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY capacitacion
    ADD CONSTRAINT fk_jsl93d04ciyw6fmoxoksxp4ur FOREIGN KEY (empleado_idempleado) REFERENCES empleado(idempleado);


--
-- TOC entry 2229 (class 2606 OID 148322)
-- Name: fk_k1dj59ip3ud56e3y75p4by09g; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY estacion
    ADD CONSTRAINT fk_k1dj59ip3ud56e3y75p4by09g FOREIGN KEY (lineaproduccion_idlineaproduccion) REFERENCES lineaproduccion(idlineaproduccion);


--
-- TOC entry 2213 (class 2606 OID 148242)
-- Name: fk_kgcwux946r7w9epecxp81t39q; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY productoproveedor
    ADD CONSTRAINT fk_kgcwux946r7w9epecxp81t39q FOREIGN KEY (id_producto) REFERENCES producto(id);


--
-- TOC entry 2226 (class 2606 OID 148307)
-- Name: fk_l5v27mfc9i6052sj4aui9uuit; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY empleado
    ADD CONSTRAINT fk_l5v27mfc9i6052sj4aui9uuit FOREIGN KEY (id_credencial) REFERENCES credencial(id);


--
-- TOC entry 2205 (class 2606 OID 148202)
-- Name: fk_l9414vbgup96v8370xq26tw6r; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orden_venta
    ADD CONSTRAINT fk_l9414vbgup96v8370xq26tw6r FOREIGN KEY (vendedor_idempleado) REFERENCES empleado(idempleado);


--
-- TOC entry 2202 (class 2606 OID 148187)
-- Name: fk_lapgeici9jiejd9t69bf6ci66; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY historial_activofijo
    ADD CONSTRAINT fk_lapgeici9jiejd9t69bf6ci66 FOREIGN KEY (id_empleado_actual) REFERENCES empleado(idempleado);


--
-- TOC entry 2221 (class 2606 OID 148282)
-- Name: fk_m3c8nh9h6xbagj170u3aa1949; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY departamento
    ADD CONSTRAINT fk_m3c8nh9h6xbagj170u3aa1949 FOREIGN KEY (id_cuentabancaria) REFERENCES cuentabancaria(id);


--
-- TOC entry 2203 (class 2606 OID 148192)
-- Name: fk_m7n0ysk5wu71175hcrj4d6pkl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orden_venta
    ADD CONSTRAINT fk_m7n0ysk5wu71175hcrj4d6pkl FOREIGN KEY (id_cliente) REFERENCES cliente(id);


--
-- TOC entry 2217 (class 2606 OID 148262)
-- Name: fk_mdbk0vpiusu96sk240m0wlctj; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY transporte
    ADD CONSTRAINT fk_mdbk0vpiusu96sk240m0wlctj FOREIGN KEY (idempresa) REFERENCES empresatransporte(id);


--
-- TOC entry 2214 (class 2606 OID 148247)
-- Name: fk_mqafhmejijfomwe2180seujc4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY productoproveedor
    ADD CONSTRAINT fk_mqafhmejijfomwe2180seujc4 FOREIGN KEY (id_productosenorden) REFERENCES productoproveedor(id);


--
-- TOC entry 2224 (class 2606 OID 148297)
-- Name: fk_n3pwn2uodr24rty8qxgqpp4e3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY detallevacaciones
    ADD CONSTRAINT fk_n3pwn2uodr24rty8qxgqpp4e3 FOREIGN KEY (idempleado) REFERENCES empleado(idempleado);


--
-- TOC entry 2193 (class 2606 OID 115314)
-- Name: fk_ordendeenvio_ordenventa1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ordendeenvio
    ADD CONSTRAINT fk_ordendeenvio_ordenventa1 FOREIGN KEY (ordenventa_idordenventa) REFERENCES ordenventa(idordenventa);


--
-- TOC entry 2189 (class 2606 OID 115223)
-- Name: fk_ordenventa_estadoordenventa1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ordenventa
    ADD CONSTRAINT fk_ordenventa_estadoordenventa1 FOREIGN KEY (estadoordenventa_idestadoordenventa) REFERENCES estadoordenventa(idestadoordenventa);


--
-- TOC entry 2188 (class 2606 OID 115218)
-- Name: fk_ordenventa_tipomodena1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ordenventa
    ADD CONSTRAINT fk_ordenventa_tipomodena1 FOREIGN KEY (tipomodena_idtipomodena) REFERENCES tipomodena(idtipomodena);


--
-- TOC entry 2195 (class 2606 OID 148152)
-- Name: fk_plmd8jbcjcee969o14tvktvsl; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY activofijo
    ADD CONSTRAINT fk_plmd8jbcjcee969o14tvktvsl FOREIGN KEY (id_tipo_activo_fijo) REFERENCES tipoactivofijo(id);


--
-- TOC entry 2187 (class 2606 OID 114947)
-- Name: fk_productoadquirido_tipopago1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY productoadquirido
    ADD CONSTRAINT fk_productoadquirido_tipopago1 FOREIGN KEY (tipopago_idtipopago) REFERENCES tipopago(idtipopago);


--
-- TOC entry 2197 (class 2606 OID 148162)
-- Name: fk_ra1ibmfhwamk6kj8ty895cp14; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cuentabancaria
    ADD CONSTRAINT fk_ra1ibmfhwamk6kj8ty895cp14 FOREIGN KEY (departamento) REFERENCES departamento(iddepartamento);


--
-- TOC entry 2236 (class 2606 OID 148357)
-- Name: fk_sbfsco833bg2cjvx6dyb1kc2g; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sancionempleado
    ADD CONSTRAINT fk_sbfsco833bg2cjvx6dyb1kc2g FOREIGN KEY (nomina_idnomina) REFERENCES nomina(idnomina);


--
-- TOC entry 2220 (class 2606 OID 148277)
-- Name: fk_sx5wg0qlt6dhjayyj0vm38v6d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY credencial
    ADD CONSTRAINT fk_sx5wg0qlt6dhjayyj0vm38v6d FOREIGN KEY (id_empleado) REFERENCES empleado(idempleado);


--
-- TOC entry 2407 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2015-05-26 07:44:14

--
-- PostgreSQL database dump complete
--

