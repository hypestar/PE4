package dk.stacktrace.pe4;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dk.stacktrace.pe4.car_business.Controller;

/**
 * Servlet implementation class Login
 */
@WebServlet("/CreateCar")
public class CreateCar extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Controller control;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateCar() {
        super();
        control = new Controller();
    }

    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String modelNumber = request.getParameter("modelnumber");
		String make = request.getParameter("make");
		String model = request.getParameter("model");
		String type = request.getParameter("type");
		String modelManufacture = request.getParameter("modelmanufacturer");
		int price = Integer.parseInt(request.getParameter("price"));
		int scale = Integer.parseInt(request.getParameter("scale"));
		String color = request.getParameter("type");
		int weight = Integer.parseInt(request.getParameter("weight"));
		String countryManufacture = request.getParameter("countrymanufacturer");
		String countryProduction = request.getParameter("countryproduction");
		int productionYear = Integer.parseInt(request.getParameter("productionyear"));
		
		
		control.createCar(modelNumber, make, model, type, modelManufacture, price, scale, color, weight, countryManufacture, countryProduction, productionYear);
		System.out.println("create car");	
	    response.sendRedirect(response.encodeRedirectURL("private/main.jsp"));
		 
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
