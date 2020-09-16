package sn.djokkjobproject.controller;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sn.djokkjobproject.dao.IOffreEmploi;
import sn.djokkjobproject.dao.IProfilRecherche;
import sn.djokkjobproject.entities.ProfilRecherche;

/**
 * Servlet implementation class ProfilRechercheServlet
 */
@WebServlet("/ProfilRecherche")
public class ProfilRechercheServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
	private IProfilRecherche profilrecherchedao;
	private IOffreEmploi offreemploidao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfilRechercheServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getSession().getAttribute("user_session") != null) 
		{
			request.setAttribute("page", request.getParameter("page"));
			request.setAttribute("user", request.getSession().getAttribute("user_session"));
			//LISTE DES UTILISATEURS A AFFICHER DANS LA LISTE DES PRODUITS
			request.setAttribute("profilRecherches", profilrecherchedao.getAll());
			request.getRequestDispatcher("view/profilrecherche/liste.jsp").forward(request, response);	
		} 
		//request.getRequestDispatcher("view/offreemploi/liste.jsp").forward(request, response);	
		else 
		{
			response.sendRedirect("Login");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nomProfil =request.getParameter("nomProfil");
		
		ProfilRecherche profilrecherche = new ProfilRecherche();
		
		profilrecherche.setNomProfil(nomProfil);
		profilrecherchedao.add(profilrecherche);
		doGet(request, response);
	}

}
