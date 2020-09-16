<jsp:include page="header.jsp"></jsp:include>
           <!-- Masthead-->
        <header class="masthead">
            <div class="container">
                <div class="masthead-subheading">Le meilleur site pour un avenir rassurant!</div>
                <div class="masthead-heading text-lowercase">Le site DJOKKJOB qui signifie trouver un emploi est conçu dans le but d'aider les jeunes à s'integrer et a trouver un emploi dans nos differentes entreprises partenaire !</div>
            </div>
        </header>
        <!-- Portfolio Grid-->
        <section class="page-section bg-light" id="portfolio">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Nos Services</h2>
                    <h3 class="section-subheading text-muted">Les services offertes par DJOKK DJOBB .</h3>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal1">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="template/assets/img/portfolio/jee1.png" alt="" />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Demandeur</div>
                              <!-- <div class="portfolio-caption-subheading text-muted">Illustration</div> -->  
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal2">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="template/assets/img/portfolio/jee2.png" alt="" />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Entreprise</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal3">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="template/assets/img/portfolio/jee4.png" alt="" />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">POSTULEZ ICI </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

       
        <!-- Portfolio Modals-->
        <!-- Modal 1-->
        <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal"><img src="template/assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project Details Go Here-->
                                    <h2 class="text-uppercase">Demandeur</h2>
                                    <p class="item-intro text-muted">Dans cette rubrique vous pourrez voir la liste des demandeurs.</p>
                                      <a class="btn btn-primary"  type="button" href="Demandeur?page=demandeur">
                                        Liste des demandeurs
                                    </a>
                                    <img class="img-fluid d-block mx-auto" src="template/assets/img/portfolio/jee1 -full.png" alt="" />
                                    
                                  
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal 2-->
        <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal"><img src="template/assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project Details Go Here-->
                                    <h2 class="text-uppercase">Entreprise</h2>
                                    <p class="item-intro text-muted">Dans cette rubrique vous pourrez voir la liste des entreprises.</p>
                                    <a class="btn btn-primary"  type="button" href="Entreprises?page=entreprise">
                                        Listes des entreprises
                                    </a>
                                    <img class="img-fluid d-block mx-auto" src="template/assets/img/portfolio/jee2 -full.png" alt="" />
                                    
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal 3-->
        <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal"><img src="template/assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project Details Go Here-->
                                    <h2 class="text-uppercase">CV</h2>
                                    <p class="item-intro text-muted">Vous aurez la possibilité de voir les offres et deposez votre CV .</p>
                                    <a class="btn btn-primary"  type="button" href="OffreEmploi?page=offreemploi">
                                        Postez votre CV
                                    </a>
                                    <br>
                                    
                                    <img class="img-fluid d-block mx-auto" src="template/assets/img/portfolio/jee4 -full.png" alt="" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     
 <jsp:include page="footer.jsp"></jsp:include>
 