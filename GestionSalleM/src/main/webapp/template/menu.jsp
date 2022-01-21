<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<nav class="sidebar sidebar-offcanvas" id="sidebar" style="background: linear-gradient(to bottom, #0d5d66,  #000104);">
        <div class="text-center sidebar-brand-wrapper d-flex align-items-center">
         <!--  <a class="sidebar-brand brand-logo" href="index.html"><h1 style="color: black;font-style: oblique;font-size: 30px;letter-spacing: 14px;margin-left: -19px;">ELOUAJI</h1></a>
           -->
          <a class="sidebar-brand brand-logo-mini pl-4 pt-3" href="index.html"><img src="assets/images/logo-mini.svg" alt="logo"></a>
        </div>
        <ul class="nav">
        	            
                <li class="nav-item nav-profile">
            <a href="#" class="nav-link">
             <div class="nav-profile-image" style="width: 70px;margin : auto;margin-left: 57px;width: 100%;/* float: left; */">
                 <img class=" rounded-circle" src="assets/images/faces/face1.jpg" style="
    height: 70px;
    width: 70px;
    margin: auto;
">
                <span class="login-status online"></span>
                <!--change to offline or busy as needed-->
              </div>
              
              
            </a>
          </li>
          <li class="nav-item nav-profile">
            <a href="#" class="nav-link">
             
              <div class="nav-profile-text d-flex flex-column pr-3" style="font-size: 22px;color: #ffffff;margin-left: -5px;/* width: 100%; *//* float: right; */">
                <span class="font-weight-medium mb-2">ELOUAJI Soukaina</span>
        
           </div>
              
            </a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="index.jsp">
              <i class=" menu-icon mdi mdi-home bg-icon-light"></i>
              <span class="menu-title" style="font-size: 20px;color: #ffffff;">Tableau de bord</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Gmachine.jsp">
              <i class="mdi mdi-desktop-mac menu-icon"></i>
              <span class="menu-title" style="font-size: 18px;color: #ffffff;">Gestion des machines</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Gsalle.jsp">
              <i class="mdi mdi-database-plus menu-icon"></i>
              <span class="menu-title" style="font-size: 19px;color: #ffffff;">Gestion des salles</span>
            </a>
          </li>
         <li class="nav-item ">
            <a class="nav-link collapsed" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
               <i class="mdi mdi-magnify  menu-icon"></i>
               <span class="menu-title" style="font-size: 19px;color: #ffffff;">Recherche</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic" style="">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" style="font-size: 18px;color: #ffffff;" href="RechercheSalle.jsp">Par salle</a></li>
                <li class="nav-item"> <a class="nav-link" style="font-size: 18px;color: #ffffff;" href="RechercheDate.jsp">Par dates</a></li>
              </ul>
            </div>
          </li>
        </ul>
    </nav>