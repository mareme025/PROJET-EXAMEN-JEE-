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
                    <h2 class="section-heading text-uppercase">Formulaire des CV</h2>
                </div>
                <form  name="sentMessage" novalidate="novalidate" method="post" action="CVEtudiant">
                    <div class="row align-items-stretch mb-5">
                        <div class="col-md-6">
                            <div class="form-group">
                            	 <c:if test="${cv!=null }">
                            	 	 <input class="form-control" type="hidden" name="id" class="form-control" value='${cv.id }'>
									</c:if> 
                                <input class="form-control" id="nom" name="nom" type="text" placeholder="NOM *"   
                                	value='<c:if test="${cv!=null }">${cv.nom }</c:if>'/>
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group">
                                <input class="form-control" id="prenom" name="prenom" type="text" placeholder="PRENOM*" 
                                	 value='<c:if test="${cv!=null }">${cv.prenom }</c:if>' />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group ">
                                <input class="form-control" id="adresse" name="adresse" type="text" placeholder="ADRESSE*"
                               	 value='<c:if test="${cv!=null }">${cv.adresse }</c:if>' />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group ">
                                <input class="form-control" id="email" name="email" type="text" placeholder="EMAIL*"
                                	value='<c:if test="${cv!=null }">${cv.email }</c:if>' />
                                <p class="help-block text-danger"></p>
                            </div>
                             <div class="form-group ">
                                <input class="form-control" id="telephone" name="telephone" type="text" placeholder="TELEPHONE" 
                                	value='<c:if test="${cv!=null }">${cv.telephone }</c:if>' />
                                <p class="help-block text-danger"></p>
                            </div>
                             <div class="form-group ">
                                <input class="form-control" id="experiencePro" name="experiencePro" type="text" placeholder="EXPERIENCE PROFESSIONNELE" 
                                value='<c:if test="${cv!=null }">${cv.experiencePro }</c:if>' />
                                <p class="help-block text-danger"></p>
                            </div>
                             <div class="form-group ">
                                <input class="form-control" id="niveauEtude" name="niveauEtude" type="text" placeholder="NIVEAU D'ETUDE"  
                                value='<c:if test="${cv!=null }">${cv.niveauEtude }</c:if>' />
                                <p class="help-block text-danger"></p>
                            </div>
                             <div class="form-group ">
                                <input class="form-control" id="specialite" name="specialite" type="text" placeholder="SPECIALITE"  value='<c:if test="${cv!=null }">${cv.specialite }</c:if>'/>
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group">
                                <select class="form-control" id="entreprise" name="entreprise"  placeholder="ENTREPRISE *"  value='
	                	<c:if test="${cv!=null }">${cv.entreprise }</c:if>' >
                                	<option value=""> Entreprise</option>
	                          		<c:forEach items="${entreprises }" var="e">
          							<option value="${e.id }">${e.nom }</option>
          							</c:forEach>
                                </select>
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group">
                                <select class="form-control" id="offreemploi" name="offreemploi"  placeholder="OFFRE D'EMPLOI*"  value='
	                	<c:if test="${cv!=null }">${cv.offreemploi }</c:if>' >
                                	<option value=""> Offre d'emploi</option>
	                          		<c:forEach items="${offreemplois }" var="o">
          							<option value="${o.id }">${o.nomOffre}</option>
          							</c:forEach>
                                </select>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                    </div>
                    <div class="text-center">
                        <c:if test="${cv!=null }">
                        <button class="btn btn-primary btn-xl text-uppercase" id="sendMessageButton" type="submit">Modifier</button>
                        </c:if>
                    </div>
                    <div class="text-center">
                         <c:if test="${cv==null }">
                        <button class="btn btn-primary btn-xl text-uppercase" id="sendMessageButton" type="submit">Envoyer</button>
                        </c:if>
                    </div>
                </form>
                
                   <div class="col-lg-12 col-md-12">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Liste des CV</h4>
                </div>
                <div class="card-body table-responsive">
                  <table class="table table-hover">
                    <thead class="text-warning">
                      <th>Nom</th>
                      <th>Prenom </th>
                      <th>Email </th>
                      <th>Adresse</th>
                      <th>Telephone</th>
                      <th>Experience Professionnelle</th>
                      <th>Niveau Etude</th>
                      <th>Specialite</th>
                      <th>Entreprise</th>
                      <th>Offre</th>
                      <th>Action</th>
                      <th>Action</th>
                    </thead>
                    <tbody>
                      <tr>
                         <c:forEach items="${cvetudiants }" var ="cv">
                       		<tr>
                       		   	<td>${cv.nom }</td>
                       		   	<td>${cv.prenom }</td>
                       		    <td>${cv.email }</td>
                       		    <td>${cv.adresse }</td>
                       		    <td>${cv.telephone }</td>
                       		    <td>${cv.experiencePro }</td>
                       		    <td>${cv.niveauEtude }</td>
                       		    <td>${cv.specialite }</td>
                       		    <td>${cv.entreprise.nom }</td>
                       		    <td>${cv.offreemploi.nomOffre }</td>
                       		    <td><button class="btn btn-info btn-xl text-uppercase" id="sendMessageButton" ><a href="CVEtudiant?action=edit&idCV=${cv.id }">Editer</a></button></td>
                       		    <td><button class="btn btn-danger btn-xl text-uppercase" id="sendMessageButton" ><a href="CVEtudiant?action=delete&idCV=${cv.id }" onclick="if(!confirm('Are you sure')) return false;">Supprimer</a></button></td>
                       		</tr>
                       </c:forEach>
                      </tr>
                     
                    </tbody>
                  </table>
                </div>
                <button><a></a></button>
              </div>
            </div>
            </div>
        </section>
        <jsp:include page="../../footer.jsp"></jsp:include>   
