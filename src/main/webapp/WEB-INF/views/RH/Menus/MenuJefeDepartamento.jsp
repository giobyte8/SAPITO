
<div id="wrapper">
  <!-- New navigation bars -->
  <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">

    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="recursoshumanos">SAPito</a>
    </div>

    <!-- Top Menu Items -->
    <ul class="nav navbar-right top-nav">
      <!-- Messages -->
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" onClick="return noFuncional();"><i class="fa fa-envelope"></i> <b class="caret"></b></a>

      </li>

      <!-- Alerts -->
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" onClick="return noFuncional();"><i class="fa fa-bell"></i> <b class="caret"></b></a>

      </li>

      <!-- User menu -->
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> ${nombre} <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li>
            <a href="#" onClick="return noFuncional();"><i class="fa fa-fw fa-user"></i> Perfil</a>
          </li>
          <li class="divider"></li>
          <li>
            <a href="login"><i class="fa fa-fw fa-power-off"></i> Cerrar sesión</a>
          </li>
        </ul>
      </li>
    </ul>

    <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav side-nav"  id="side-menu">
        <li>
          <a href="#"><i class="fa fa-fw fa-users"></i> Empleados &nbsp;&nbsp;<span class="fa fa-caret-down"></span></a>
          <ul class="nav nav-second-level">
            <li>
              <a href="/SAPITO/recursoshumanos/altaempleadoMenu">Nuevo</a>
            </li>
            <li>
              <a href="/SAPITO/recursoshumanos/adminempleados">Administrar</a>
            </li>
          </ul>
          <!-- /.nav-second-level -->
        </li>
        <!--              <li>
                        <a href="#"><i class="fa fa-fw fa-bell"></i> Capacitaciones<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                          <li>
                            <a href="altaCapacitacionAdmin">Alta</a>
                          </li>
                          <li>
                            <a href="adminCapacitacionAdmin">Administrar</a>
                          </li>
                        </ul>
                         /.nav-second-level 
                      </li>-->
        <li>
          <a href="#"><i class="fa fa-fw fa-taxi"></i> Vacaciones<span class="fa fa-caret-down"></span></a>
          <ul class="nav nav-second-level">
            <li>
              <a href="VacacionEmpleado.html">Alta</a>
            </li>
            <li>
              <a href="AdmVacacionEmpleado.html">Administrar</a>
            </li>

          </ul>
        </li>
        <li>
          <a href="#"><i class="fa fa-fw fa-arrow-circle-left"></i>Puestos &nbsp;&nbsp;<span class="fa fa-caret-down"></span></a>
          <ul class="nav nav-second-level">
            <li>
              <a href="/SAPITO/recursoshumanos/altapuestoadmin">Alta</a>
            </li>
            <li>
              <a href="/SAPITO/recursoshumanos/adminpuestoadmin">Administrar</a>
            </li>
          </ul>
          <!-- /.nav-second-level -->
        </li>
        <li>
          <a href="#"><i class="fa fa-fw fa-arrow-circle-left"></i>Prestaciones<span class="fa fa-caret-down"></span></a>
          <ul class="nav nav-second-level">
            <li>
              <a href="addPrestacionesAdministrador">Alta</a>
            </li>
            <li>
              <a href="adminPrestacionesAdmin">Administrar</a>
            </li>
            <li>
              <a href="downPrestacionesAdministrador">Baja</a>
            </li>
          </ul>
          <!-- /.nav-second-level -->
        </li>

      </ul>
      </li>
      </ul>
    </div>
    <!-- /.navbar-collapse -->
  </nav>
