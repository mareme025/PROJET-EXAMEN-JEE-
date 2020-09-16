package sn.djokkjobproject.controller;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sn.djokkjobproject.dao.IUser;
import sn.djokkjobproject.entities.Demandeur;
import sn.djokkjobproject.entities.User;

/**
 * Servlet implementation class UtilisateurServlet
 */
@WebServlet("/Utilisateur")
public class UtilisateurServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@EJB
	private IUser userdao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UtilisateurServlet() {
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
		//request.setAttribute("users", userdao.getAll());
		//request.setAttribute("offreemplois", offreemploidao.getAll());
		request.getRequestDispatcher("view/utilisateur/liste.jsp").forward(request, response);	
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
		String email =request.getParameter("email");
		String nom =request.getParameter("nom");
		String password =request.getParameter("password");
		String prenom =request.getParameter("prenom");
		
		User user = new User();
		user.setEmail(email);
		user.setNom(nom);
		user.setPassword(password);
		user.setPrenom(prenom);
		userdao.add(user);
		doGet(request, response);
	}

}
