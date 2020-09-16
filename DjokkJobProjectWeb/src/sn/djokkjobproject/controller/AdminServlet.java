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
import sn.djokkjobproject.dao.IUser;
import sn.djokkjobproject.entities.Demandeur;
import sn.djokkjobproject.entities.Entreprise;
import sn.djokkjobproject.entities.User;



/**
 * Servlet implementation class AdminServlet
 */
@WebServlet("/Admin")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
	private IUser userdao;
	@EJB
	private IDemandeur demandeurdao;
	@EJB
	private IEntreprises entreprisedao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		if(request.getSession().getAttribute("user_session") != null) 
		{
			request.setAttribute("page", request.getParameter("page"));
			//request.setAttribute("user", request.getSession().getAttribute("user_session"));
			request.setAttribute("demandeur", request.getSession().getAttribute("user_session"));
			request.setAttribute("entreprise", request.getSession().getAttribute("user_session"));
		request.getRequestDispatcher("accueil.jsp").forward(request, response);	
		} 
		else 
		{
			response.sendRedirect("Login");
		}
		//request.getRequestDispatcher("accueil.jsp").forward(request, response);	

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		//RECUPERATION DES DONNEES DU FORMULAIRE DE CONNEXION
        String email = request.getParameter("email").toString();
        String password = request.getParameter("password").toString();
        
        //TRAITEMENT
        User user = userdao.getLogin(email,password);
        Demandeur demandeur = new Demandeur();
        Entreprise entreprise = new Entreprise();
        entreprise =entreprisedao.getLogin(email,password);
        demandeur = demandeurdao.getLogin(email,password);
       if(demandeur != null )
	        {
	    	   /*GESTION DE DEMARRAGE DES SESSIONS*/
	    	 request.getSession().setAttribute("user_session",demandeur);
	            /*SI USER EXISTE CONNEXION ACCORDER ET REDIRECTION VERS LA PAGE D'ACCUEIL A PARTIR DU SERVLET*/
	           response.sendRedirect("Accueil");
	        }
       else if(entreprise != null )
	       {
	   	   /*GESTION DE DEMARRAGE DES SESSIONS*/
	   		request.getSession().setAttribute("user_session",entreprise);
	           /*SI USER EXISTE CONNEXION ACCORDER ET REDIRECTION VERS LA PAGE D'ACCUEIL A PARTIR DU SERVLET*/
	          response.sendRedirect("Accueil");
	       }
	        else
	       {
	            //SINON REDIRECTION VERS LA PAGE LOGIN DU SERVLET
	         response.sendRedirect("Login");
	        }
	}
		

}
