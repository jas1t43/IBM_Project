

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class password
 */
public class password extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public password() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession s=request.getSession();
		String uid=(String)s.getAttribute("uid");
		String old=request.getParameter("old");
		String nw=request.getParameter("new");
		
		try{
		Class.forName("com.mysql.jdbc.Driver");
	 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbl","root","root");
	 PreparedStatement ps=con.prepareStatement("select password from myuser WHERE Uid=? and password=?");
	 ps.setString(1,uid);
	 ps.setString(2, old);
	 ResultSet rs=ps.executeQuery();
	 if(rs.next())
	 {
		 PreparedStatement ps1=con.prepareStatement("update myuser set Password=? where uid=? and Password=?");
		 ps1.setString(1, nw);
		 ps1.setString(2, uid);
		 ps1.setString(3, old);
		 ps1.executeUpdate();
		 request.setAttribute("suc","<font color='blue'>Your Password is SUCCESSFULLY Update</font>");
			request.getRequestDispatcher("Password.jsp").forward(request, response);
	    
	 }
	 else
	 {
		 request.setAttribute("suc","<font color='red'>Old Password is Incorrect</font>");
			request.getRequestDispatcher("Password.jsp").forward(request, response);
	    
	 }
	 
	 
	 
	 	
	 
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
