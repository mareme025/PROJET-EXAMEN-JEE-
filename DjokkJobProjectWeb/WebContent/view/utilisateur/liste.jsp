 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<jsp:include page="../../header.jsp"></jsp:include>    
     <div class="content">
        <div class="container-fluid">
          <div class="row">
          <div class="col-md-12">
             <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Demandeur d'emploi</h4>
                  <p class="card-category">Formulaire d'inscription du demandeur</p>
                </div>
	                <div class="card-body">   
	                	<form action="Utilisateur" method="post">
	                	  <div class="row">
		                      <div class="col-md-12">
		                        <div class="form-group">
		                          <label class="bmd-label-floating">Nom</label>
		                        
		                          <input type="text" name="nom" class="form-control" > 
		                        </div>
		                      </div>
                         </div>
	                       <div class="row">
		                      <div class="col-md-12">
		                        <div class="form-group">
		                          <label class="bmd-label-floating">Prenom</label>
		                          <input type="text" name="prenom" class="form-control" >
		                        </div>
		                      </div>
		                  </div>
		                    <div class="row">
		                      <div class="col-md-12">
		                        <div class="form-group">
		                          <label class="bmd-label-floating">Email</label>
		                          <input type="text" name="email" class="form-control" > 
		                        </div>
		                      </div>
		                     </div> 
		                        <div class="row">
		                      <div class="col-md-12">
		                        <div class="form-group">
		                          <label class="bmd-label-floating">Mot de Passe </label>
		                          <input type="password" name="password" class="form-control" >
		                        </div>
		                      </div>
		                  </div>
							
	                		<button type="submit" class="btn btn-success pull-right">Envoyer</button> 

	                	</form>           
			        </div>
              </div>
            </div>
                  
                   <!--   <div class="col-lg-6 col-md-12">
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
                      <th>Postuler </th>
                    </thead>
                    <tbody>
                      <tr>
                         <c:forEach items="${offreemplois }" var ="o">
                       		<tr>
                       		   	<td>${o.description }</td>
                       		   	<td>${o.nomOffre }</td>
                       		    <td>${o.typeOffre }</td>
                       		    <td>${o.entreprise.nomEse }</td>
                       		    <td>${o.profilrecherche.nomProfil }</td>
                       	        <td><a href="http://localhost:8080/DjokkJobProjectWeb/CVEtudiant?page=cvetudiant">Postulation</a></td>
                       		</tr>
                       </c:forEach>
                      </tr>
                     
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
                
            <div class="col-lg-6 col-md-12">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Liste des demandeurs</h4>
                </div>
                <div class="card-body table-responsive">
                  <table class="table table-hover">
                    <thead class="text-warning">
                      <th>Adresse</th>
                      <th>Email</th>
                      <th>Nom</th>
                      <th>Prenom</th>
                      <th>Telephone</th>
                      <th>Action</th>
                      <th>Action</th>
                    </thead>
                    <tbody>
                      <tr>
                        <c:forEach items="${demandeurs }" var ="d">
                       		<tr>
                       		   	<td>${d.adresse }</td>
                       		   	<td>${d.email }</td>
                       		    <td>${d.nom }</td>
                       		    <td>${d.prenom }</td>
                       		    <td>${d.telephone }</td>
                       		    <td><a href="Demadeur?action=edit&idD=${d.id }">Editer</a></td>
                       		   <td><a href="Demandeur?action=delete&idD=${d.id }" onclick="if(!confirm('Are you sure')) return false;">Supprimer</a></td>
                       		</tr>
                       </c:forEach>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>    -->
        </div>
      </div>
     </div> 
<jsp:include page="../../footer.jsp"></jsp:include>     
