<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Plateforme DJOKK DJOBB</title>
        <link rel="icon" type="image/x-icon" href="template/assets/img/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="template/css/styles.css" rel="stylesheet" />
    </head>
         <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="http://localhost:8080/DjokkJobProjectWeb/">DJOKK DJOBB</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars ml-1"></i>
                </button>
                 <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase ml-auto">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="http://localhost:8080/DjokkJobProjectWeb/Accueil">Vos Services</a></li>
                         <li class="nav-item dropdown">
                <a class="nav-link" href="javascript:;" id="navbarDropdownProfile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="material-icons">Utilisateur</i>
                  <p class="d-lg-none d-md-block">
                    Account
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownProfile">
                  <a class="dropdown-item" href="#">${user.prenom } ${user.nom } </a>
                  <a class="dropdown-item" href="#">Profile</a>
                  <a class="dropdown-item" href="#">Settings</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="Logout">Log out</a>
                </div>
              </li>
                    </ul>
                </div>
        </nav> 
  <section class="page-section" id="contact">
            <div class="container">
             <div class="text-center">
                    <h2 class="section-heading text-uppercase">Formulaire des offres d'emploi</h2>
                </div>
                 <form  name="sentMessage" novalidate="novalidate" method="post" action="OffreEmploi">
                    <div class="row align-items-stretch mb-5">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input class="form-control" id="description" name="description" type="text" placeholder="DESCRIPTION DE L'OFFRE *" required="required" data-validation-required-message="Please enter your name." />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group">
                                <input class="form-control" id="nomOffre" name="nomOffre" type="text" placeholder="NOM DE L'OFFRE *" required="required" data-validation-required-message="Please enter your email address." />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group ">
                                <input class="form-control" id="typeOffre" name="typeOffre" type="text" placeholder="TYPE DE L'OFFRE *" required="required" data-validation-required-message="Please enter your phone number." />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group">
                                <select class="form-control" id="entreprise" name="entreprise"  placeholder="ENTREPRISE *" required="required" data-validation-required-message="Please enter your phone number." >
                                	<option value=""> Entreprise </option>
	                          		<c:forEach items="${entreprises }" var="e">
          							<option value="${e.id }">${e.nom}</option>
          							</c:forEach>
                                </select>
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group">
                                <select class="form-control" id="profilrecherche" name="profilrecherche"  placeholder="PROFIL RECHERCHE*" required="required" data-validation-required-message="Please enter your phone number." >
                                	<option value=""> Profil Recherché </option>
	                          		<c:forEach items="${profilrecherches }" var="pr">
          							<option value="${pr.id }">${pr.nomProfil}</option>
          							</c:forEach>
                                </select>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                    </div>
                     <div class="text-center">
                        <button class="btn btn-primary btn-xl text-uppercase" id="sendMessageButton" type="submit">Envoyer</button>
                    </div>
                </form>
                
                	 <div class="col-lg-12 col-md-12">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Liste des offres d'emploi</h4>
                </div>
                <div class="card-body table-responsive">
                  <table class="table table-hover">
                    <thead class="text-warning">
                      <th>Description</th>
                      <th>Nom </th>
                      <th>Type </th>
                      <th>Entreprise</th>
                      <th>Profil Recherché </th>
                      <th>Postulé </th>
                    </thead>
                    <tbody>
                      <tr>
                         <c:forEach items="${offreemplois }" var ="o">
                       		<tr>
                       		   	<td>${o.description }</td>
                       		   	<td>${o.nomOffre }</td>
                       		    <td>${o.typeOffre }</td>
                       		    <td>${o.entreprise.nom }</td>
                       		    <td>${o.profilrecherche.nomProfil }</td>
                       		    <td><button class="btn btn-success btn-xl text-uppercase" id="sendMessageButton" ><a href="http://localhost:8080/DjokkJobProjectWeb/CVEtudiant?page=cvetudiant">Postulation</a></button></td>
                       		</tr>
                       </c:forEach>
                      </tr>
                     
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
				
            </div>
        </section>
        <jsp:include page="../../footer.jsp"></jsp:include>  