package sn.djokkjobproject.controller;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sn.djokkjobproject.dao.ICVEtudiant;
import sn.djokkjobproject.dao.IEntreprises;
import sn.djokkjobproject.dao.IOffreEmploi;
import sn.djokkjobproject.entities.CVEtudiant;
import sn.djokkjobproject.entities.OffreEmploi;

/**
 * Servlet implementation class CVEtudiantServlet
 */
@WebServlet("/CVEtudiant")
public class CVEtudiantServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@EJB
	private ICVEtudiant cvetudiantdao;
	@EJB
	private IEntreprises entreprisedao;
	@EJB
	private IOffreEmploi offreemploidao;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CVEtudiantServlet() {
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
				int id =Integer.parseInt(request.getParameter("idCV").toString());
						switch(action)
						{
							case "edit":
							CVEtudiant cvEtudiant = cvetudiantdao.get(id);
							request.setAttribute("cv",cvEtudiant);
								break;
							
							case "delete":
								cvetudiantdao.delete(id);
								break;
						}
			}
			request.setAttribute("page", request.getParameter("page"));
			request.setAttribute("user", request.getSession().getAttribute("user_session"));
			//LISTE DES UTILISATEURS A AFFICHER DANS LA LISTE DES PRODUITS
			request.setAttribute("cvetudiants", cvetudiantdao.getAll());
			request.setAttribute("offreemplois", offreemploidao.getAll());
			request.setAttribute("entreprises", entreprisedao.getAll());
			request.getRequestDispatcher("view/cv/liste.jsp").forward(request, response);	
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
		String prenom =request.getParameter("prenom");
		String email =request.getParameter("email");
		String adresse =request.getParameter("adresse");
		String telephone =request.getParameter("telephone");
		String experiencePro =request.getParameter("experiencePro");
		String niveauEtude =request.getParameter("niveauEtude");
		String specialite =request.getParameter("specialite");
		int entreprise_id = Integer.parseInt(request.getParameter("entreprise"));
		int offreemploi_id = Integer.parseInt(request.getParameter("offreemploi"));
		
		CVEtudiant cvetudiant = new CVEtudiant();
		
		cvetudiant.setNom(nom);
		cvetudiant.setPrenom(prenom);
		cvetudiant.setEmail(email);
		cvetudiant.setAdresse(adresse);
		cvetudiant.setTelephone(telephone);
		cvetudiant.setExperiencePro(experiencePro);
		cvetudiant.setNiveauEtude(niveauEtude);
		cvetudiant.setspecialite(specialite);
		cvetudiant.setEntreprise(entreprisedao.get(entreprise_id));
		cvetudiant.setOffreemploi(offreemploidao.get(offreemploi_id));
		
		if(request.getParameter("id")!=null)
		{
			int id = Integer.parseInt(request.getParameter("id").toString());
			cvetudiant.setId(id);
			cvetudiantdao.update(cvetudiant);
		}
		else
		{
			cvetudiantdao.add(cvetudiant);
		}
		
		
		doGet(request, response);
	}

}
