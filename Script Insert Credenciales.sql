        /*Script Insert Empleados Domingo 17-05-20*/


        ALTER TABLE Departamento ALTER COLUMN MetasTopes_idMetasTopes DROP NOT NULL;

        /*  Roles */
        INSERT INTO rol(
                    idrol, nombre, descripcion, status)
            VALUES (1, 'JEFE_OPERATIVO_ROL' , 'JEFE OPERATIVO', 1);

        INSERT INTO rol(
                    idrol, nombre, descripcion, status)
            VALUES (2, 'JEFE_DEPARTAMENTO_ROL', 'JEFE DEPARTAMENTO', 1);


        INSERT INTO rol(
                    idrol, nombre, descripcion, status)
            VALUES (3, 'EMPLEADO_BASE_ROL', 'EMPLEADO BASE', 1);

        INSERT INTO rol(
                    idrol, nombre, descripcion, status)
            VALUES (4, 'DIRECTOR_ROL', 'DIRECTOR', 1);

        INSERT INTO rol(
                    idrol, nombre, descripcion, status)
            VALUES (5, 'SUB_DIRECTOR_ROL', 'SUB DIRECTOR', 1);


        /*  Puestos */
        INSERT INTO puesto(
                    idpuesto, nombre,horaentrada,horafin, descripcion, status, sueldobase, presupuesto,idrol)
            VALUES (1, 'JEFE_OPERATIVO',TIMESTAMP '2011-05-16 15:36:38',TIMESTAMP '2011-05-16 15:36:38','Encargado del trato directo con el personal',1, 5200, 0,1);

        INSERT INTO puesto(
                    idpuesto, nombre,horaentrada,horafin, descripcion, status, sueldobase, presupuesto,idrol)
            VALUES (2, 'JEFE_DEPARTAMENTO',TIMESTAMP '2011-05-16 15:36:38',TIMESTAMP '2011-05-16 15:36:38','Encargado de la parte administrativa del departamento',1, 7350, 0,2);

        INSERT INTO puesto(
                    idpuesto, nombre,horaentrada,horafin, descripcion, status, sueldobase, presupuesto,idrol)
            VALUES (3, 'EMPLEADO_BASE',TIMESTAMP '2011-05-16 15:36:38',TIMESTAMP '2011-05-16 15:36:38','Encargado del trato directo con el personal',1, 5200, 0,3);

        INSERT INTO puesto(
                    idpuesto, nombre,horaentrada,horafin, descripcion, status, sueldobase, presupuesto,idrol)
            VALUES (4, 'DIRECTOR',TIMESTAMP '2011-05-16 15:36:38',TIMESTAMP '2011-05-16 15:36:38','..',1, 20200, 0,4);


        INSERT INTO puesto(
                    idpuesto, nombre,horaentrada,horafin, descripcion, status, sueldobase, presupuesto,idrol)
            VALUES (5, 'SUB_DIRECTOR',TIMESTAMP '2011-05-16 15:36:38',TIMESTAMP '2011-05-16 15:36:38','..',1, 15200,0, 5);




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
                    iddepartamento, presupuesto, empresa_idempresa, cuentabancaria_idcuentabancaria, nombre_departamento)
            VALUES (1,2321,1,1,'Ventas');
            
        INSERT INTO departamento(
                    iddepartamento, presupuesto, empresa_idempresa, cuentabancaria_idcuentabancaria, nombre_departamento)
            VALUES (2,2321,1,1,'Compras');

        INSERT INTO departamento(
                    iddepartamento, presupuesto, empresa_idempresa, cuentabancaria_idcuentabancaria, nombre_departamento)
            VALUES (3,2321,1,1,'Inventarios');

        INSERT INTO departamento(
                    iddepartamento, presupuesto, empresa_idempresa, cuentabancaria_idcuentabancaria, nombre_departamento)
            VALUES (4,2321,1,1,'Contabilidad/Finanzas');
            
        INSERT INTO departamento(
                    iddepartamento, presupuesto, empresa_idempresa, cuentabancaria_idcuentabancaria, nombre_departamento)
            VALUES (5,2321,1,1,'Dirección');

        INSERT INTO departamento(
                    iddepartamento, presupuesto, empresa_idempresa, cuentabancaria_idcuentabancaria, nombre_departamento)
            VALUES (6,2321,1,1,'Activo/Fijo');

        INSERT INTO departamento(   
                    iddepartamento, presupuesto, empresa_idempresa, cuentabancaria_idcuentabancaria, nombre_departamento)
            VALUES (7,2321,1,1,'Recursos/Humanos');

        INSERT INTO departamento(
                    iddepartamento, presupuesto, empresa_idempresa, cuentabancaria_idcuentabancaria, nombre_departamento)
            VALUES (8,2321,1,1,'Operaciones');

        INSERT INTO departamento(
                    iddepartamento, presupuesto, empresa_idempresa, cuentabancaria_idcuentabancaria, nombre_departamento)
            VALUES (9,2321,1,1,'Logistica');



        /*Empleados */


        /*Empleados ventas */
        INSERT INTO empleado(
                    idempleado, nomre, departamento_iddepartamento, puesto_idpuesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (1,'Maria de la luz',1,1,'Albarran' , 'Rebollo',
                    'MLAR011201AS3', 'AV Centenario','Centro', 've.jo.mrebollo@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);



        INSERT INTO empleado(
                    idempleado, nomre, departamento_iddepartamento, puesto_idpuesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (2,'Carlos',1,3,'Contreras' , 'Navarrete',
                    'MLAR011201AS3', 'AV Centenario','Centro', 've.eb.ccontreras@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);

         /*Empleados  Compras*/

        INSERT INTO empleado(
                    idempleado, nomre, departamento_iddepartamento, puesto_idpuesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (3,'Monserrat',2,1,'Aristeo' , 'Garcia',
                    'MLAR011201AS3', 'AV Centenario','Centro', 'co.jo.mgarcua@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);

        INSERT INTO empleado(
                    idempleado, nomre, departamento_iddepartamento, puesto_idpuesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (4,'Salvador Josue',2,2,'Tejocote' , 'Lopez',
                    'MLAR011201AS3', 'AV Centenario','Centro', 'co.jd.jslopez@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);

        INSERT INTO empleado(
                    idempleado, nomre, departamento_iddepartamento, puesto_idpuesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (5,'Pablo Erick',2,3,'Gonzalez' , 'Carrasco',
                    'MLAR011201AS3', 'AV Centenario','Centro', 'co.eb.pecarrasco@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);

         /*Empleados Contabilidad*/

        INSERT INTO empleado(
                    idempleado, nomre, departamento_iddepartamento, puesto_idpuesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (6,'Sergio Enrique ',4,2,'Hernandez' , 'Ortega',
                    'MLAR011201AS3', 'AV Centenario','Centro', 'co.jd.seortega@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);

        INSERT INTO empleado(
                    idempleado, nomre, departamento_iddepartamento, puesto_idpuesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (7,'Lorena',4,3,'Gonzalez' , 'Ayala',
                    'MLAR011201AS3', 'AV Centenario','Centro', 'co.eb.lgonzalez@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);

          /*Empleados  Inventarios*/

        INSERT INTO empleado(
                    idempleado, nomre, departamento_iddepartamento, puesto_idpuesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (8,'Humberto',3,1,'Pineda' , 'Sanchez',
                    'MLAR011201AS3', 'AV Centenario','Centro', 'in.jo.hsanchez@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);

        INSERT INTO empleado(
                    idempleado, nomre, departamento_iddepartamento, puesto_idpuesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (9,'Jose Alonso',3,2,'Barajas' , 'Ortiz',
                    'MLAR011201AS3', 'AV Centenario','Centro', 'in.jd.jaortiz@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);

        INSERT INTO empleado(
                    idempleado, nomre, departamento_iddepartamento, puesto_idpuesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (10,'Hugo Arturo',3,3,'Arreola' , 'Rubio',
                    'MLAR011201AS3', 'AV Centenario','Centro', 'in.eb.harubio@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);

         
          /*Empleados Direccion*/

        INSERT INTO empleado(
                    idempleado, nomre, departamento_iddepartamento, puesto_idpuesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (11,'Maria del Carmen',5,4,'Ayala' , 'Guadarrama',
                    'MLAR011201AS3', 'AV Centenario','Centro', 'in.di.mcguadarrama@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);

        INSERT INTO empleado(
                    idempleado, nomre, departamento_iddepartamento, puesto_idpuesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (12,'Marco Antonio',5,5,'De la O' , 'Velazquez',
                    'MLAR011201AS3', 'AV Centenario','Centro', 'in.sd.mavelazquez@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);


          /*Empleados  Activo Fijo*/

        INSERT INTO empleado(
                    idempleado, nomre, departamento_iddepartamento, puesto_idpuesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (13,'Jose Alberto',6,1,'Ramirez' , 'Morales',
                    'MLAR011201AS3', 'AV Centenario','Centro', 'ac.jd.jamorales@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);


        INSERT INTO empleado(
                    idempleado, nomre, departamento_iddepartamento, puesto_idpuesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (14,'Daniel',6,3,'Robles' , 'Soto',
                    'MLAR011201AS3', 'AV Centenario','Centro', 'ac.eb.dsoto@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);

          /*Empleados Recursos Humanos */

        INSERT INTO empleado(
                    idempleado, nomre, departamento_iddepartamento, puesto_idpuesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (15,'Jorge Victor',7,1,'Muñoz' , 'Padilla',
                    'MLAR011201AS3', 'AV Centenario','Centro', 're.jo.jvmunoz@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);

        INSERT INTO empleado(
                    idempleado, nomre, departamento_iddepartamento, puesto_idpuesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (16,'Christian Ivan',7,2,'Castañeda' , 'Gonzalez',
                    'MLAR011201AS3', 'AV Centenario','Centro', 're.jd.cigonzalez@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);

        INSERT INTO empleado(
                    idempleado, nomre, departamento_iddepartamento, puesto_idpuesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (17,'Nely Faustina',7,3,'Roman' , 'Ortega',
                    'MLAR011201AS3', 'AV Centenario','Centro', 're.eb.nfortega@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);


           /*Empleados Operaciones */

        INSERT INTO empleado(
                    idempleado, nomre, departamento_iddepartamento, puesto_idpuesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (18,'Edgar',8,1,'Cirilo' , 'Gonzalez',
                    'MLAR011201AS3', 'AV Centenario','Centro', 'op.jo.egonzalez@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);

        INSERT INTO empleado(
                    idempleado, nomre, departamento_iddepartamento, puesto_idpuesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (19,'Delfino',8,2,'Ruiz' , 'Flores',
                    'MLAR011201AS3', 'AV Centenario','Centro', 'op.jd.druiz@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);

        INSERT INTO empleado(
                    idempleado, nomre, departamento_iddepartamento, puesto_idpuesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (20,'Raul',8,3,'Barrera' , 'Guadarrama',
                    'MLAR011201AS3', 'AV Centenario','Centro', 'op.eb.rbarrera@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);


         /*Empleados Logistica */

        INSERT INTO empleado(
                    idempleado, nomre, departamento_iddepartamento, puesto_idpuesto, 
                    apaterno, amaterno, rfc, calle, colonia, email, codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (21,'Emmanuel',9,1,'Campos' , 'Romero',
                    'MLAR011201AS3', 'AV Centenario','Centro', 'lo.jo.ecromeroj@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);

        INSERT INTO empleado(
                    idempleado, nomre, departamento_iddepartamento, puesto_idpuesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (22,'Emmanuel',9,2,'Campos' , 'Gonzalez',
                    'MLAR011201AS3', 'AV Centenario','Centro', 'lo.jd.ecgonzalez@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);

        INSERT INTO empleado(
                    idempleado, nomre, departamento_iddepartamento, puesto_idpuesto, 
                    apaterno, amaterno, rfc, calle, colonia, email,codigo_postal,
                    estado,estado_civil,fecha_nacimiento,municipio,num_seguro,sexo,
                    telefono)
            VALUES (23,'Emmanuel',9,3,'Campos' , 'lopez',
                    'MLAR011201AS3', 'AV Centenario','Centro', 'lo.eb.eclopez@sap.com',50000,'Mexico','SOLTERO','01/01/15','TOLUCA',0054123123,'SEXO',7223214331);

        INSERT INTO empleado(
                    idempleado, nomre, departamento_iddepartamento, puesto_idpuesto, 
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
                    idcredencial, usuario, "contrasena", status, empleado_idempleado)
            VALUES (1,'ve.jo.mrebollo@sap.com', '7eea30c6c6edcdb8f26418423a091eb2adbd6d93', 1, 1);

        INSERT INTO credencial(
                    idcredencial, usuario, "contrasena", status, empleado_idempleado)
            VALUES (24,'ve.jd.jgalvarez@sap.com', '7eea30c6c6edcdb8f26418423a091eb2adbd6d93', 1, 24);

        INSERT INTO credencial(
                    idcredencial, usuario, "contrasena", status, empleado_idempleado)
            VALUES (2,'ve.eb.ccontreras@sap.com', '7eea30c6c6edcdb8f26418423a091eb2adbd6d93', 1, 2);

        /*2. Compras*/
        /*2. pass: co1234*/
        INSERT INTO credencial(
                    idcredencial, usuario, "contrasena", status, empleado_idempleado)
            VALUES (3,'co.jo.mgarcua@sap.com', '94650503fd0e4640ad531770e6e2d341c0be8aca', 1,3);
            
        INSERT INTO credencial(
                    idcredencial, usuario, "contrasena", status, empleado_idempleado)
            VALUES (4,'co.jd.jslopez@sap.com', '94650503fd0e4640ad531770e6e2d341c0be8aca', 1,4);

         INSERT INTO credencial(
                    idcredencial, usuario, "contrasena", status, empleado_idempleado)
            VALUES (5,'co.eb.pecarrasco@sap.com', '94650503fd0e4640ad531770e6e2d341c0be8aca', 1,5);
            

         /* 3. Contabilidad*/  
         /* 3.pass: con1234*/  
        INSERT INTO credencial(
                    idcredencial, usuario, "contrasena", status, empleado_idempleado)
            VALUES (6,'co.jd.seortega@sap.com', '0733824cc1549ce36139e8c790a9344d1e385cd2', 1,6);

        INSERT INTO credencial(
                    idcredencial, usuario, "contrasena", status, empleado_idempleado)
            VALUES (7,'co.eb.lgonzalez@sap.com', '0733824cc1549ce36139e8c790a9344d1e385cd2', 1,7);

        /* 4. Inventarios*/
        /* 4.pass: in1234*/
        INSERT INTO credencial(
                    idcredencial, usuario, "contrasena", status, empleado_idempleado)
            VALUES (8,'in.jo.hsanchez@sap.com', 'f966362b511b148a0269d4d43b94783840fb465b', 1,8);
            
        INSERT INTO credencial(
                    idcredencial, usuario, "contrasena", status, empleado_idempleado)
            VALUES (9,'in.jd.jaortiz@sap.com', 'f966362b511b148a0269d4d43b94783840fb465b', 1, 9);

         INSERT INTO credencial(
                    idcredencial, usuario, "contrasena", status, empleado_idempleado)
            VALUES (10,'in.eb.harubio@sap.com', 'f966362b511b148a0269d4d43b94783840fb465b', 1, 10);

        /* 5. Direccion*/
        /* 5. pass: di1234*/
        INSERT INTO credencial(
                    idcredencial, usuario, "contrasena", status, empleado_idempleado)
            VALUES (11,'in.di.mcguadarrama@sap.com', '66a7c588db7f33657164f5c8464956ff318c142f', 1, 11);
            
        INSERT INTO credencial(
                    idcredencial, usuario, "contrasena", status, empleado_idempleado)
            VALUES (12,'in.sd.mavelazquez@sap.com', '66a7c588db7f33657164f5c8464956ff318c142f', 1, 12);

         /*6. activo FIJO*/
          /*6. pass: ac1234*/

        INSERT INTO credencial(
                    idcredencial, usuario, "contrasena", status, empleado_idempleado)
            VALUES (13,'ac.jo.semorales@sap.com', '78d2ad946624b4990555056648683a041628df3f', 1,13);
            

        INSERT INTO credencial(
                    idcredencial, usuario, "contrasena", status, empleado_idempleado)
            VALUES (14,'ac.eb.dsoto@sap.com', '78d2ad946624b4990555056648683a041628df3f', 1, 14);


         /* 7.RECURSOS HUMANOS*/
         /* pass: re1234*/

        INSERT INTO credencial(
                    idcredencial, usuario, "contrasena", status, empleado_idempleado)
            VALUES (15,'re.jo.jvmunoz@sap.com', '6eb4cd4c634f731e52b656c5c3933f8aaa70d54c', 1, 15);
            
        INSERT INTO credencial(
                    idcredencial, usuario, "contrasena", status, empleado_idempleado)
            VALUES (16,'re.jd.cigonzalez@sap.com', '6eb4cd4c634f731e52b656c5c3933f8aaa70d54c', 1, 16);

        INSERT INTO credencial(
                    idcredencial, usuario, "contrasena", status, empleado_idempleado)
            VALUES (17,'re.eb.nfortega@sap.com', '6eb4cd4c634f731e52b656c5c3933f8aaa70d54c', 1, 17);

         /* 8.OPERACIONES*/
          /*pass: op1234*/

        INSERT INTO credencial(
                    idcredencial, usuario, "contrasena", status, empleado_idempleado)
            VALUES (18,'op.jo.egonzalez@sap.com', '938b231c0c21f1d3cccab596312c54cad7831422', 1, 18);
            
        INSERT INTO credencial(
                    idcredencial, usuario, "contrasena", status, empleado_idempleado)
            VALUES (19,'op.jd.druiz@sap.com', '938b231c0c21f1d3cccab596312c54cad7831422', 1, 19);

        INSERT INTO credencial(
                    idcredencial, usuario, "contrasena", status, empleado_idempleado)
            VALUES (20,'op.eb.rbarrera@sap.com', '938b231c0c21f1d3cccab596312c54cad7831422', 1, 20);



         /*9.LOGISTICA*/
         /*9. pass: lo1234*/

        INSERT INTO credencial(
                    idcredencial, usuario, "contrasena", status, empleado_idempleado)
            VALUES (21,'lo.jo.ecromeroj@sap.com', '2bed20dfe4a62a4642ad8fb7eff8208e0822428e', 1, 21);
            
        INSERT INTO credencial(
                    idcredencial, usuario, "contrasena", status, empleado_idempleado)
            VALUES (22,'lo.jd.ecgonzalez@sap.com', '2bed20dfe4a62a4642ad8fb7eff8208e0822428e', 1, 22);

        INSERT INTO credencial(
                    idcredencial, usuario, "contrasena", status, empleado_idempleado)
            VALUES (23,'lo.eb.eclopez@sap.com', '2bed20dfe4a62a4642ad8fb7eff8208e0822428e', 1, 23);




