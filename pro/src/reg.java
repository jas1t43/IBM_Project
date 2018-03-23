

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class reg
 */
public class reg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public reg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String u=request.getParameter("usernamesignup");
		String p=request.getParameter("passwordsignup");
		String em=request.getParameter("emailsignup");
		String pcon=request.getParameter("passwordsignup_confirm");
		String ph=request.getParameter("phone");
		if(p.equals(pcon)){
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbl","root","root");
		PreparedStatement ps=con.prepareStatement("insert into myuser (`username`, `email`, `password`, `phone`)values(?,?,?,?)");
		ps.setString(1, u);
		ps.setString(2, em);
		ps.setString(3, p);
		ps.setString(4, ph);
		int i=ps.executeUpdate();
		if(i>0)
		{
			request.setAttribute("msg", "<font color='Blue'>You Are SUCCESSFULLY Register</font>");
			request.getRequestDispatcher("index.jsp").forward(request, response);
			
		}
		
		}
		catch(Exception e){
			e.printStackTrace();
			request.setAttribute("msg", "<font color='red'>Please fill correct Entries</font>");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		}
		else
		{
			request.setAttribute("msg", "<font color='red'>Password and confirm password does not match </font>");
			request.getRequestDispatcher("login.jsp").forward(request, response);}
	}

}
