        /*Script Insert Empleados Domingo 17-05-20*/


        ALTER TABLE Departamento ALTER COLUMN MetasTopes_idMetasTopes DROP NOT NULL;

        /*  Roles */
        INSERT INTO rol(
                    id, nombre, descripcion, status)
            VALUES (1, 'JEFE_OPERATIVO_ROL' , 'JEFE OPERATIVO', true);

        INSERT INTO rol(
                    id, nombre, descripcion, status)
            VALUES (2, 'JEFE_DEPARTAMENTO_ROL', 'JEFE DEPARTAMENTO', true);


        INSERT INTO rol(
                    id, nombre, descripcion, status)
            VALUES (3, 'EMPLEADO_BASE_ROL', 'EMPLEADO BASE',true);

        INSERT INTO rol(
                    id, nombre, descripcion, status)
            VALUES (4, 'DIRECTOR_ROL', 'DIRECTOR', true);

        INSERT INTO rol(
                    id, nombre, descripcion, status)
            VALUES (5, 'SUB_DIRECTOR_ROL', 'SUB DIRECTOR', true);


        /*  Puestos */
        INSERT INTO puesto(
                    id, nombre,hora_entrada,hora_fin, descripcion, status, sueldo_base, presupuesto,rol_id)
            VALUES (1, 'JEFE_OPERATIVO','06:00', '15:00','Encargado del trato directo con el personal',true, 5200, 0,1);

        INSERT INTO puesto(
                    id, nombre,hora_entrada,hora_fin, descripcion, status, sueldo_base, presupuesto,rol_id)
            VALUES (2, 'JEFE_DEPARTAMENTO','06:00','15:00','Encargado de la parte administrativa del departamento',true, 7350, 0,2);

        INSERT INTO puesto(
                    id, nombre,hora_entrada,hora_fin, descripcion, status, sueldo_base, presupuesto,rol_id)
            VALUES (3, 'EMPLEADO_BASE','06:00','15:00','Encargado del trato directo con el personal',true, 5200, 0,3);

        INSERT INTO puesto(
                    id, nombre,hora_entrada,hora_fin, descripcion, status,sueldo_base, presupuesto,rol_id)
            VALUES (4, 'DIRECTOR','06:00','15:00','..',true, 20200, 0,4);


        INSERT INTO puesto(
                    id, nombre,hora_entrada,hora_fin, descripcion, status, sueldo_base, presupuesto,rol_id)
            VALUES (5, 'SUB_DIRECTOR', '06:00','15:00','..',true, 15200,0, 5);




        /*  Empresa */

INSERT INTO empresa(
            id, calle, capitalinicial, colonia, email, estado, municipio, 
            nombre, nume, numi, pais, rfc, telefono)
            VALUES (1, 'sin calle',2,'capital','EMAIL@d.COM','ESTADO','MUNICIPIO','nombre', 12121,'numi','pais','SAPI121212ERD',7221234567);


        /* Cuenta Bancaria */

        INSERT INTO cuentabancaria(
                    id,clavebanco, claveinterbancaria,deber,haber, nombrebanco, empresa)
            VALUES (1,'19328341000123', '213',1223,12332, 'ScotiaBank' ,1);




        /* Departamentos */

        INSERT INTO departamento(
                    iddepartamento, presupuesto, id_empresa, id_cuentabancaria, nombre_departamento)
            VALUES (1,2321,1,1,'Ventas');
            
        INSERT INTO departamento(
                    iddepartamento, presupuesto, id_empresa, id_cuentabancaria, nombre_departamento)
            VALUES (2,2321,1,1,'Compras');

        INSERT INTO departamento(
                    iddepartamento, presupuesto, id_empresa, id_cuentabancaria, nombre_departamento)
            VALUES (3,2321,1,1,'Inventarios');

        INSERT INTO departamento(
                    iddepartamento, presupuesto, id_empresa, id_cuentabancaria, nombre_departamento)
            VALUES (4,2321,1,1,'Contabilidad Finanzas');
            
        INSERT INTO departamento(
                    iddepartamento, presupuesto, id_empresa, id_cuentabancaria, nombre_departamento)
            VALUES (5,2321,1,1,'Dirección');

        INSERT INTO departamento(
                    iddepartamento, presupuesto, id_empresa, id_cuentabancaria, nombre_departamento)
            VALUES (6,2321,1,1,'Activo Fijo');

        INSERT INTO departamento(   
                    iddepartamento, presupuesto, id_empresa, id_cuentabancaria, nombre_departamento)
            VALUES (7,2321,1,1,'Recursos Humanos');

        INSERT INTO departamento(
                    iddepartamento, presupuesto, id_empresa, id_cuentabancaria, nombre_departamento)
            VALUES (8,2321,1,1,'Operaciones');

        INSERT INTO departamento(
                    iddepartamento, presupuesto, id_empresa, id_cuentabancaria, nombre_departamento)
            VALUES (9,2321,1,1,'Logistica');



        /*Empleados */


        /*Empleados ventas */
        INSERT INTO empleado(
                    idempleado, nombre, id_departamento, id_puesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (1,'Maria de la luz',1,1,'Albarran' , 'Rebollo',
                    'MLAR011201AS3', 'AV Centenario','Centro', 've.jo.mrebollo@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);



        INSERT INTO empleado(
                    idempleado, nombre, id_departamento, id_puesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (2,'Carlos',1,3,'Contreras' , 'Navarrete',
                    'MLAR011201AS3', 'AV Centenario','Centro', 've.eb.ccontreras@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);

         /*Empleados  Compras*/

        INSERT INTO empleado(
                    idempleado, nombre, id_departamento, id_puesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (3,'Monserrat',2,1,'Aristeo' , 'Garcia',
                    'MLAR011201AS3', 'AV Centenario','Centro', 'co.jo.mgarcua@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);

        INSERT INTO empleado(
                    idempleado, nombre, id_departamento, id_puesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (4,'Salvador Josue',2,2,'Tejocote' , 'Lopez',
                    'MLAR011201AS3', 'AV Centenario','Centro', 'co.jd.jslopez@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);

        INSERT INTO empleado(
                    idempleado, nombre, id_departamento, id_puesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (5,'Pablo Erick',2,3,'Gonzalez' , 'Carrasco',
                    'MLAR011201AS3', 'AV Centenario','Centro', 'co.eb.pecarrasco@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);

         /*Empleados Contabilidad*/

        INSERT INTO empleado(
                    idempleado, nombre, id_departamento, id_puesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (6,'Sergio Enrique ',4,2,'Hernandez' , 'Ortega',
                    'MLAR011201AS3', 'AV Centenario','Centro', 'co.jd.seortega@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);

        INSERT INTO empleado(
                    idempleado, nombre, id_departamento, id_puesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (7,'Lorena',4,3,'Gonzalez' , 'Ayala',
                    'MLAR011201AS3', 'AV Centenario','Centro', 'co.eb.lgonzalez@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);

          /*Empleados  Inventarios*/

        INSERT INTO empleado(
                    idempleado, nombre, id_departamento, id_puesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (8,'Humberto',3,1,'Pineda' , 'Sanchez',
                    'MLAR011201AS3', 'AV Centenario','Centro', 'in.jo.hsanchez@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);

        INSERT INTO empleado(
                    idempleado, nombre, id_departamento, id_puesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (9,'Jose Alonso',3,2,'Barajas' , 'Ortiz',
                    'MLAR011201AS3', 'AV Centenario','Centro', 'in.jd.jaortiz@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);

        INSERT INTO empleado(
                    idempleado, nombre, id_departamento, id_puesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (10,'Hugo Arturo',3,3,'Arreola' , 'Rubio',
                    'MLAR011201AS3', 'AV Centenario','Centro', 'in.eb.harubio@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);

         
          /*Empleados Direccion*/

        INSERT INTO empleado(
                    idempleado, nombre, id_departamento, id_puesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (11,'Maria del Carmen',5,4,'Ayala' , 'Guadarrama',
                    'MLAR011201AS3', 'AV Centenario','Centro', 'in.di.mcguadarrama@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);

        INSERT INTO empleado(
                    idempleado, nombre, id_departamento, id_puesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (12,'Marco Antonio',5,5,'De la O' , 'Velazquez',
                    'MLAR011201AS3', 'AV Centenario','Centro', 'in.sd.mavelazquez@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);


          /*Empleados  Activo Fijo*/

        INSERT INTO empleado(
                    idempleado, nombre, id_departamento, id_puesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (13,'Jose Alberto',6,1,'Ramirez' , 'Morales',
                    'MLAR011201AS3', 'AV Centenario','Centro', 'ac.jd.jamorales@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);


        INSERT INTO empleado(
                    idempleado, nombre, id_departamento, id_puesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (14,'Daniel',6,3,'Robles' , 'Soto',
                    'MLAR011201AS3', 'AV Centenario','Centro', 'ac.eb.dsoto@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);

          /*Empleados Recursos Humanos */

        INSERT INTO empleado(
                    idempleado, nombre, id_departamento, id_puesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (15,'Jorge Victor',7,1,'Muñoz' , 'Padilla',
                    'MLAR011201AS3', 'AV Centenario','Centro', 're.jo.jvmunoz@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);

        INSERT INTO empleado(
                    idempleado, nombre, id_departamento, id_puesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (16,'Christian Ivan',7,2,'Castañeda' , 'Gonzalez',
                    'MLAR011201AS3', 'AV Centenario','Centro', 're.jd.cigonzalez@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);

        INSERT INTO empleado(
                    idempleado, nombre, id_departamento, id_puesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (17,'Nely Faustina',7,3,'Roman' , 'Ortega',
                    'MLAR011201AS3', 'AV Centenario','Centro', 're.eb.nfortega@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);


           /*Empleados Operaciones */

        INSERT INTO empleado(
                    idempleado, nombre, id_departamento, id_puesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (18,'Edgar',8,1,'Cirilo' , 'Gonzalez',
                    'MLAR011201AS3', 'AV Centenario','Centro', 'op.jo.egonzalez@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);

        INSERT INTO empleado(
                    idempleado, nombre, id_departamento, id_puesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (19,'Delfino',8,2,'Ruiz' , 'Flores',
                    'MLAR011201AS3', 'AV Centenario','Centro', 'op.jd.druiz@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);

        INSERT INTO empleado(
                    idempleado, nombre, id_departamento, id_puesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (20,'Raul',8,3,'Barrera' , 'Guadarrama',
                    'MLAR011201AS3', 'AV Centenario','Centro', 'op.eb.rbarrera@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);


         /*Empleados Logistica */

        INSERT INTO empleado(
                    idempleado, nombre, id_departamento, id_puesto, 
                    apaterno, amaterno, rfc, calle, colonia, email, codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (21,'Emmanuel',9,1,'Campos' , 'Romero',
                    'MLAR011201AS3', 'AV Centenario','Centro', 'lo.jo.ecromeroj@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);

        INSERT INTO empleado(
                    idempleado, nombre, id_departamento, id_puesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (22,'Emmanuel',9,2,'Campos' , 'Gonzalez',
                    'MLAR011201AS3', 'AV Centenario','Centro', 'lo.jd.ecgonzalez@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);

        INSERT INTO empleado(
                    idempleado, nombre, id_departamento, id_puesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (23,'Emmanuel',9,3,'Campos' , 'lopez',
                    'MLAR011201AS3', 'AV Centenario','Centro', 'lo.eb.eclopez@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);

        INSERT INTO empleado(
                    idempleado, nombre, id_departamento, id_puesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (24,'Jesus Giovany',1,2,'Alvarez' , 'Aguirre',
                    'MLAR011201AS3', 'AV Centenario','Centro', 've.jd.jgalvarez@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);
                    

        /*Credenciales*/
        /*Las contraseñas estan cifradas en SHA-1*/

        /* 1. Ventas*/
        /* 1. pass ve1234*/
        INSERT INTO credencial(
                    id, usuario, "contrasena", status, id_empleado)
            VALUES (1,'ve.jo.mrebollo@sap.com', 'sapito', true, 1);

        INSERT INTO credencial(
                    id, usuario, "contrasena", status, id_empleado)
            VALUES (24,'ve.jd.jgalvarez@sap.com', 'sapito', true, 24);

        INSERT INTO credencial(
                    id, usuario, "contrasena", status, id_empleado)
            VALUES (2,'ve.eb.ccontreras@sap.com', 'sapito', true, 2);

        /*2. Compras*/
        /*2. pass: co1234*/
        INSERT INTO credencial(
                    id, usuario, "contrasena", status, id_empleado)
            VALUES (3,'co.jo.mgarcua@sap.com', 'sapito', true,3);
            
        INSERT INTO credencial(
                    id, usuario, "contrasena", status, id_empleado)
            VALUES (4,'co.jd.jslopez@sap.com', 'sapito', true,4);

         INSERT INTO credencial(
                    id, usuario, "contrasena", status, id_empleado)
            VALUES (5,'co.eb.pecarrasco@sap.com', 'sapito', true,5);
            

         /* 3. Contabilidad*/  
         /* 3.pass: con1234*/  
        INSERT INTO credencial(
                    id, usuario, "contrasena", status, id_empleado)
            VALUES (6,'co.jd.seortega@sap.com', 'sapito', true,6);

        INSERT INTO credencial(
                    id, usuario, "contrasena", status, id_empleado)
            VALUES (7,'co.eb.lgonzalez@sap.com', 'sapito', true,7);

        /* 4. Inventarios*/
        /* 4.pass: in1234*/
        INSERT INTO credencial(
                    id, usuario, "contrasena", status, id_empleado)
            VALUES (8,'in.jo.hsanchez@sap.com', 'sapito', true,8);
            
        INSERT INTO credencial(
                    id, usuario, "contrasena", status, id_empleado)
            VALUES (9,'in.jd.jaortiz@sap.com', 'sapito', true, 9);

         INSERT INTO credencial(
                    id, usuario, "contrasena", status, id_empleado)
            VALUES (10,'in.eb.harubio@sap.com', 'sapito', true, 10);

        /* 5. Direccion*/
        /* 5. pass: di1234*/
        INSERT INTO credencial(
                    id, usuario, "contrasena", status, id_empleado)
            VALUES (11,'in.di.mcguadarrama@sap.com', 'sapito', true, 11);
            
        INSERT INTO credencial(
                    id, usuario, "contrasena", status, id_empleado)
            VALUES (12,'in.sd.mavelazquez@sap.com', 'sapito', true, 12);

         /*6. activo FIJO*/
          /*6. pass: ac1234*/

        INSERT INTO credencial(
                    id, usuario, "contrasena", status, id_empleado)
            VALUES (13,'ac.jo.semorales@sap.com', 'sapito', true,13);
            

        INSERT INTO credencial(
                    id, usuario, "contrasena", status, id_empleado)
            VALUES (14,'ac.eb.dsoto@sap.com', 'sapito', true, 14);


         /* 7.RECURSOS HUMANOS*/
         /* pass: re1234*/

        INSERT INTO credencial(
                    id, usuario, "contrasena", status, id_empleado)
            VALUES (15,'re.jo.jvmunoz@sap.com', 'sapito', true, 15);
            
        INSERT INTO credencial(
                    id, usuario, "contrasena", status, id_empleado)
            VALUES (16,'re.jd.cigonzalez@sap.com', 'sapito', true, 16);

        INSERT INTO credencial(
                    id, usuario, "contrasena", status, id_empleado)
            VALUES (17,'re.eb.nfortega@sap.com', 'sapito', true, 17);

         /* 8.OPERACIONES*/
          /*pass: op1234*/

        INSERT INTO credencial(
                    id, usuario, "contrasena", status, id_empleado)
            VALUES (18,'op.jo.egonzalez@sap.com', 'sapito', true, 18);
            
        INSERT INTO credencial(
                    id, usuario, "contrasena", status, id_empleado)
            VALUES (19,'op.jd.druiz@sap.com', 'sapito', true, 19);

        INSERT INTO credencial(
                    id, usuario, "contrasena", status, id_empleado)
            VALUES (20,'op.eb.rbarrera@sap.com', 'sapito', true, 20);



         /*9.LOGISTICA*/
         /*9. pass: lo1234*/

        INSERT INTO credencial(
                    id, usuario, "contrasena", status, id_empleado)
            VALUES (21,'lo.jo.ecromeroj@sap.com', 'sapito', true, 21);
            
        INSERT INTO credencial(
                    id, usuario, "contrasena", status, id_empleado)
            VALUES (22,'lo.jd.ecgonzalez@sap.com', 'sapito', true, 22);

        INSERT INTO credencial(
                    id, usuario, "contrasena", status, id_empleado)
            VALUES (23,'lo.eb.eclopez@sap.com', 'sapito', true, 23);

/* COMPRAS */

INSERT INTO PRODUCTO VALUES(01, 'Equipo de Computo', 'Equipo de computo portatil', 'HP', 'Laptop HP');
INSERT INTO PRODUCTO VALUES(02, 'Mobiliario', 'Escritorio', 'Akura', 'Escritorio Fortiness');
INSERT INTO PRODUCTO VALUES(03, 'Equipo de Computo', 'Servidor Dell', 'DELL', 'Servidor Dell');

INSERT INTO PROVEEDOR VALUES(01, 'Hernandez', 'Rebollo', 'Emiliano Zapara', 'Seminario', 52180, 'g@g.com', 'Dell', 'Mexico', '2050', '', 'Toluca', 'Juan', '25', '', 'Mexico', 'ABCDEFGHIJKLM', TRUE, '722 321 58 47');
INSERT INTO PROVEEDOR VALUES(02, 'Rebollo', 'Muñoz', 'Av. Bicentenario', 'Backup', 50130, 'dblr@hotmail.com', 'Mobitech', 'Yucatan', '52', '', 'Merida', 'Jesus', '30', '50', 'Mexico', '1234567891234', TRUE, '722 528 98 52');

INSERT INTO PRODUCTOPROVEEDOR VALUES(01, 550, 'TRUE', 'Caja', 1, 1);
INSERT INTO PRODUCTOPROVEEDOR VALUES(02, 123, 'TRUE', 'CAJA', 2, 2);
INSERT INTO PRODUCTOPROVEEDOR VALUES(03, 123, 'TRUE', 'CAJA', 3, 1);

/* INVENTARIOS */

INSERT INTO INVENTARIO VALUES(1, 50, 'Motor', 'ABC1', '2015-05-11', '2015-05-10', 5, 5, 'Motor 2.0', 100, TRUE, 'Producto terminado', 'Almacen 2');
INSERT INTO INVENTARIO VALUES(2, 50, 'Chasis', 'ABC2', '2015-05-03', '2015-05-02', 5, 5, 'Chasis largo', 900, TRUE, 'Producto terminado', 'Almacen 3');

/* ACTIVO FIJO */

INSERT INTO TIPOACTIVOFIJO VALUES(1, 'Equipo de Computo');
INSERT INTO TIPOACTIVOFIJO VALUES(2, 'Mobiliario');

INSERT INTO ACTIVOFIJO VALUES(01, 5, null, 'SinAsignar', 'Linea recta', 1, 1);
INSERT INTO ACTIVOFIJO VALUES(02, 5, null, 'SinAsignar', 'Linea recta', 3, 1);
INSERT INTO ACTIVOFIJO VALUES(03, 5, null, 'SinAsignar', 'Linea recta', 2, 2);

/* CONTABILIDAD */

INSERT INTO TIPOMONEDA VALUES(1, 'DOLARES', 14.5);
INSERT INTO TIPOMONEDA VALUES(2, 'EUROS', 19.5);
INSERT INTO TIPOMONEDA VALUES(3, 'YEN', 0.125310912);
