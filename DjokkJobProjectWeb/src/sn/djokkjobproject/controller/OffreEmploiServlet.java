package sn.djokkjobproject.controller;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sn.djokkjobproject.dao.IEntreprises;
import sn.djokkjobproject.dao.IOffreEmploi;
import sn.djokkjobproject.dao.IProfilRecherche;
import sn.djokkjobproject.entities.OffreEmploi;

/**
 * Servlet implementation class OffreEmploiServlet
 */
@WebServlet("/OffreEmploi")
public class OffreEmploiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
	private IOffreEmploi offreemploidao;
	@EJB
	private IEntreprises entreprisedao;
	@EJB
	private IProfilRecherche profilrecherchedao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OffreEmploiServlet() {
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
			request.setAttribute("offreemplois", offreemploidao.getAll());
			request.setAttribute("entreprises", entreprisedao.getAll());
			request.setAttribute("profilrecherches", profilrecherchedao.getAll());
			request.getRequestDispatcher("view/offreemploi/liste.jsp").forward(request, response);	
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
		String description =request.getParameter("description");
		String nomOffre =request.getParameter("nomOffre");
		String typeOffre =request.getParameter("typeOffre");
		int entreprise_id = Integer.parseInt(request.getParameter("entreprise"));
		int profilrecherche_id = Integer.parseInt(request.getParameter("profilrecherche"));
		
		OffreEmploi offreemploi = new OffreEmploi();
		
		offreemploi.setDescription(description);
		offreemploi.setNomOffre(nomOffre);
		offreemploi.setTypeOffre(typeOffre);
		offreemploi.setEntreprise(entreprisedao.get(entreprise_id));
		offreemploi.setProfilrecherche(profilrecherchedao.get(profilrecherche_id));
		//offreemploi.setUser(request.getSession().getAttribute("user_session"));
		offreemploidao.add(offreemploi);
		doGet(request, response);
	}

}
