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
import sn.djokkjobproject.entities.Demandeur;
import sn.djokkjobproject.entities.Entreprise;

/**
 * Servlet implementation class EntreprisesServlet
 */
@WebServlet("/Entreprises")
public class EntreprisesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@EJB
	private IEntreprises entreprisesdao;
	@EJB
	private IProfilRecherche profilrecherchedao;
	@EJB
	private IOffreEmploi offreemploidao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EntreprisesServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getSession().getAttribute("user_session") != null) 
		{
			if(request.getParameter("action")!= null)
			{
				String action =request.getParameter("action").toString();
				int id =Integer.parseInt(request.getParameter("idE").toString());
						switch(action)
						{
							case "edit":
							Entreprise entre = entreprisesdao.get(id);
							request.setAttribute("entreprise",entre);
								break;
							
							case "delete":
								entreprisesdao.delete(id);
								break;
						}
			}
			request.setAttribute("page", request.getParameter("page"));
			request.setAttribute("user", request.getSession().getAttribute("user_session"));
			request.setAttribute("entreprises", entreprisesdao.getAll());
			request.setAttribute("profilrecherches", profilrecherchedao.getAll());
			request.setAttribute("offreemplois", profilrecherchedao.getAll());
			request.getRequestDispatcher("view/entreprise/liste.jsp").forward(request, response);	
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
		String nom =request.getParameter("nom");
		String NINEA =request.getParameter("NINEA");
		String emplacement =request.getParameter("emplacement");
		String email =request.getParameter("email");
		String password =request.getParameter("password");
		
		Entreprise entreprise = new Entreprise();
		
		entreprise.setNom(nom);
		entreprise.setNINEA(NINEA);
		entreprise.setEmplacement(emplacement);
		entreprise.setEmail(email);
		entreprise.setPassword(password);
		
		if(request.getParameter("id")!=null)
		{
			int id = Integer.parseInt(request.getParameter("id").toString());
			entreprise.setId(id);
			entreprisesdao.update(entreprise);
		}
		else
		{
			entreprisesdao.add(entreprise);
		}
		doGet(request, response);
	}

}
