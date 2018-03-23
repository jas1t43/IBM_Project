

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.io.InputStream;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
/**
 * Servlet implementation class search
 */
@WebServlet("/fetch")
public class search extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public search() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String c=request.getParameter("category");
		String s=request.getParameter("search");
		if(s==""){
			try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbl","root","root");
				PreparedStatement ps=con.prepareStatement("select * from myproducts where Category=? or Brand=?");
				ps.setString(1, c);
				ps.setString(2, c);
				ResultSet rs=ps.executeQuery();
				request.setAttribute("searched", rs);
				request.getRequestDispatcher("index.jsp").forward(request, response);
				}
				catch(Exception e){
					e.printStackTrace();
				}}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String s=request.getParameter("instantsearch");
	/*	if(s.equals(""))
		{
			try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbl","root","root");
				PreparedStatement ps=con.prepareStatement("select * from myproducts where Category=?");
				ps.setString(1, c);
				ResultSet rs=ps.executeQuery();
				request.setAttribute("searched", rs);
				request.getRequestDispatcher("index.jsp").forward(request, response);
				}
				catch(Exception e){
					e.printStackTrace();
				}
		}
		else
		{*/
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbl","root","root");
		PreparedStatement ps=con.prepareStatement("select * from myproducts where PName=? or Model=? or Brand=?");
		ps.setString(1, s);
		ps.setString(2, s);
		ps.setString(3, s);
		
		ResultSet rs=ps.executeQuery();
		request.setAttribute("searched", rs);
		request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		catch(Exception e){
			e.printStackTrace();
		}}
		}
//}