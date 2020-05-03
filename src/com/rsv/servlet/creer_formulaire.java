package com.rsv.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rsv.beans.Formulaire;
import com.rsv.beans.Formulaire;

/**
 * Servlet implementation class creer_formulaire
 */
@WebServlet("/creer_formulaire")
public class creer_formulaire extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public creer_formulaire() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String nom=request.getParameter("nom");
String prenom=request.getParameter("prenom");
String Adresse=request.getParameter("Adresse");
String téléphone=request.getParameter("téléphone");
String email=request.getParameter("email");
		
String message;	
	
if(nom.trim().isEmpty() ||prenom.trim().isEmpty() ||Adresse.trim().isEmpty() ||téléphone.trim().isEmpty() ||email.trim().isEmpty() )
{
message="vous devez remlire tout les champs svp !";
request.setAttribute("meesage", message);
this.getServletContext().getRequestDispatcher("/formulaire.jsp").forward(request, response);
	} else { 
		message="inscription avec Succés";
		request.setAttribute("message", message);
		Formulaire formulaire =new Formulaire();
		
		
		formulaire.setNom(nom);
		formulaire.setPrenom(prenom);
		formulaire.setTéléphone(Adresse);
		formulaire.setTéléphone(téléphone);
		formulaire.setEmail(email);
		
		
		request.setAttribute("formulaire", formulaire);
		  this.getServletContext().getRequestDispatcher("/WEB-INF/infoform.jsp").forward(request, response);
	}
}
}