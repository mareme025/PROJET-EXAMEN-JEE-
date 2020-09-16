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
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">DJOKK JOB
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="http://localhost:8080/DjokkJobProjectWeb/">DJOKK DJOBB</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars ml-1"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase ml-auto">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="http://localhost:8080/DjokkJobProjectWeb/">Inscription</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="http://localhost:8080/DjokkJobProjectWeb/">Connexion</a></li>
                    </ul>
                </div>
            </div>
        </nav>     
    <section class="page-section" id="contact">
   		 <div class="container">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Demandeur d'emploi</h4>
                  <p class="card-category">Formulaire d'inscription du demandeur</p>
                </div>  
	                	  <form  name="sentMessage" novalidate="novalidate" method="post" action="InscriptionDemandeur">
                    <div class="row align-items-stretch mb-5">
                        <div class="col-md-6">
                            <div class="form-group">
                            	
                                <input class="form-control" id="nom" name="nom" type="text" placeholder="NOM " />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group">
                                <input class="form-control" id="prenom" name="prenom" type="text" placeholder="PRENOM"  />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group ">
                                <input class="form-control" id="adresse" name="adresse" type="text" placeholder="ADRESSE" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group ">
                                <input class="form-control" id="email" name="email" type="text" placeholder="EMAIL" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group ">
                                <input class="form-control" id="telephone" name="telephone" type="text" placeholder="TELEPHONE" />
                                <p class="help-block text-danger"></p>
                            </div>
                             <div class="form-group ">
                                <input class="form-control" id="password" name="password" type="password" placeholder="PASSWORD"  />
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                    </div>
                   
                    <div class="text-center">
                        <button class="btn btn-primary btn-xl text-uppercase" id="sendMessageButton" type="submit">Envoyer</button>
                    </div>
                </form>
			        </div>
        </section>
<jsp:include page="../../footer.jsp"></jsp:include>                       