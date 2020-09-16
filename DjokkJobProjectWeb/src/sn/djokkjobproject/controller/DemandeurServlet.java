package sn.djokkjobproject.controller;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sn.djokkjobproject.dao.IDemandeur;
import sn.djokkjobproject.dao.IEntreprises;
import sn.djokkjobproject.dao.IOffreEmploi;
import sn.djokkjobproject.entities.CVEtudiant;
import sn.djokkjobproject.entities.Demandeur;
import sn.djokkjobproject.entities.User;

/**
 * Servlet implementation class DemandeurServlet
 */
@WebServlet("/Demandeur")
public class DemandeurServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
	private IDemandeur demandeurdao;
	@EJB
	private IOffreEmploi offreemploidao;
	@EJB
	private IEntreprises entreprisedao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DemandeurServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			if(request.getSession().getAttribute("user_session") != null ) 
			{
				if(request.getParameter("action")!= null)
				{
					String action =request.getParameter("action").toString();
					int id =Integer.parseInt(request.getParameter("idD").toString());
							switch(action)
							{
								case "edit":
								Demandeur d = demandeurdao.get(id);
								request.setAttribute("demandeur",d);
									break;
								
								case "delete":
									demandeurdao.delete(id);
									break;
							}
				}
			
			request.setAttribute("page", request.getParameter("page"));
			request.setAttribute("user", request.getSession().getAttribute("user_session"));
			request.setAttribute("demandeurs", demandeurdao.getAll());
			request.setAttribute("offreemplois", offreemploidao.getAll());
			//request.setAttribute("entreprises", entreprisedao.getAll());
			request.getRequestDispatcher("view/demandeur/liste.jsp").forward(request, response);	
		} 
		else 
		{
			response.sendRedirect("Login");
		}
}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String adresse =request.getParameter("adresse");
		String email =request.getParameter("email");
		String nom =request.getParameter("nom");
		String password =request.getParameter("password");
		String prenom =request.getParameter("prenom");
		String telephone =request.getParameter("telephone");
		
		Demandeur demandeur = new Demandeur();
		
		demandeur.setAdresse(adresse);
		demandeur.setEmail(email);
		demandeur.setNom(nom);
		demandeur.setPassword(password);
		demandeur.setPrenom(prenom);
		demandeur.setTelephone(telephone);
		
		if(request.getParameter("id")!=null)
		{
			int id = Integer.parseInt(request.getParameter("id").toString());
			demandeur.setId(id);
			demandeurdao.update(demandeur);
		}
		else
		{
			demandeurdao.add(demandeur);
		}
		//demandeurdao.add(demandeur);
		doGet(request, response);
	}

}
