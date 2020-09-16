package sn.djokkjobproject.controller;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sn.djokkjobproject.dao.IDemandeur;
import sn.djokkjobproject.entities.Demandeur;

/**
 * Servlet implementation class InscriptionDemandeurServlet
 */
@WebServlet("/InscriptionDemandeur")
public class InscriptionDemandeurServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@EJB
	private IDemandeur demandeurdao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InscriptionDemandeurServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		request.getRequestDispatcher("view/inscription/addDemandeur.jsp").forward(request, response);	

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
		demandeurdao.add(demandeur);
		if(demandeur != null )
        {
    	   /*GESTION DE DEMARRAGE DES SESSIONS*/
    	// request.getSession().setAttribute("user_session",user);
            /*SI USER EXISTE CONNEXION ACCORDER ET REDIRECTION VERS LA PAGE D'ACCUEIL A PARTIR DU SERVLET*/
           response.sendRedirect("Login");
        }
	}

}
