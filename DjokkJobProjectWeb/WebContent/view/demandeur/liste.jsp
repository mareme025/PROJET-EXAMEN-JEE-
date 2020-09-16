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
                    <h2 class="section-heading text-uppercase">Formulaire des demandeurs</h2>
                </div>   
   		        	 <form  name="sentMessage" novalidate="novalidate" method="post" action="Demandeur">
                    <div class="row align-items-stretch mb-5">
                        <div class="col-md-6">
                            <div class="form-group">
                            	 <c:if test="${demandeur!=null }">
                            	 	 <input class="form-control" type="hidden" name="id" class="form-control" value='${demandeur.id }'>
									</c:if> 
                                <input class="form-control" id="nom" name="nom" type="text" placeholder="NOM DEMANDEUR"   
                                	value='<c:if test="${demandeur!=null }">${demandeur.nom }</c:if>'/>
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group">
                                <input class="form-control" id="prenom" name="prenom" type="text" placeholder="PRENOM DEMANDEUR" 
                                	 value='<c:if test="${demandeur!=null }">${demandeur.prenom }</c:if>' />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group ">
                                <input class="form-control" id="email" name="email" type="text" placeholder="EMAIL"
                               	 value='<c:if test="${demandeur!=null }">${demandeur.email }</c:if>' />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group ">
                                <input class="form-control" id="adresse" name="adresse" type="text" placeholder="ADRESSE"
                                	value='<c:if test="${demandeur!=null }">${demandeur.adresse }</c:if>' />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group ">
                                <input class="form-control" id="telephone" name="telephone" type="text" placeholder="TELEPHONE "
                                	value='<c:if test="${demandeur!=null }">${demandeur.telephone }</c:if>' />
                                <p class="help-block text-danger"></p>
                            </div>
                             <div class="form-group ">
                                <input class="form-control" id="password" name="password" type="password" placeholder="PASSWORD" 
                                	value='<c:if test="${demandeur!=null }">${demandeur.password }</c:if>' />
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                    </div>
                    <div class="text-center">
                        <c:if test="${demandeur!=null }">
                        <button class="btn btn-primary btn-xl text-uppercase" id="sendMessageButton" type="submit">Modifier</button>
                        </c:if>
                    </div>
                    <div class="text-center">
                         <c:if test="${demandeur==null }">
                        <button class="btn btn-primary btn-xl text-uppercase" id="sendMessageButton" type="submit">Envoyer</button>
                        </c:if>
                    </div>
                </form>
   		 
                     <div class="col-lg-12 col-md-12">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Liste des demandeurs</h4>
                </div>
                <div class="card-body table-responsive">
                  <table class="table table-hover">
                    <thead class="text-warning">
                      <th>Nom</th>
                      <th>Prenom</th>
                      <th>Adresse</th>
                      <th>Email</th>
                      <th>Telephone</th>
                      <th>Action</th>
                      <th>Action</th>
                    </thead>
                    <tbody>
                      <tr>
                         <c:forEach items="${demandeurs }" var ="d">
                       		<tr>
                       		
                       		    <td>${d.nom }</td>
                       		    <td>${d.prenom }</td>
                       		   	<td>${d.adresse }</td>
                       		   	<td>${d.email }</td>
                       		    <td>${d.telephone }</td>
                       		    <td><button class="btn btn-info btn-xl text-uppercase" id="sendMessageButton" ><a href="Demandeur?action=edit&idD=${d.id }">Editer</a></button></td>
                       		    <td><button class="btn btn-danger btn-xl text-uppercase" id="sendMessageButton" ><a href="Demandeur?action=delete&idD=${d.id }" onclick="if(!confirm('Are you sure')) return false;">Supprimer</a></button></td>
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