package sn.djokkjobproject.controller;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sn.djokkjobproject.dao.IEntreprises;
import sn.djokkjobproject.entities.Entreprise;

/**
 * Servlet implementation class InscriptionEntrepriseServlet
 */
@WebServlet("/InscriptionEntreprise")
public class InscriptionEntrepriseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@EJB
	private IEntreprises entreprisesdao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InscriptionEntrepriseServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		request.getRequestDispatcher("view/inscription/addEntreprise.jsp").forward(request, response);	
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
		entreprisesdao.add(entreprise);
		if(entreprise != null )
        {
    	   /*GESTION DE DEMARRAGE DES SESSIONS*/
    	// request.getSession().setAttribute("user_session",user);
            /*SI USER EXISTE CONNEXION ACCORDER ET REDIRECTION VERS LA PAGE D'ACCUEIL A PARTIR DU SERVLET*/
           response.sendRedirect("Login");
        }
       
	}

}
