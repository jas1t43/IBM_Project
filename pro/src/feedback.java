

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class feedback
 */
public class feedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public feedback() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String url=request.getParameter("url");
		String msg=request.getParameter("message");
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbl","root","root");
		PreparedStatement ps=con.prepareStatement("insert into feedback values(?,?,?,?)");
		ps.setString(1, name);
		ps.setString(2, email);
		ps.setString(3, url);
		ps.setString(4, msg);
		int i=ps.executeUpdate();
		if(i>0)
		{
			request.setAttribute("msg", "<font color='Blue'>Thankyou for Your Feedback</font>");
			request.getRequestDispatcher("ContactUs.jsp").forward(request, response);
			
		}
		
		}
		catch(Exception e){
			e.printStackTrace();
			request.setAttribute("msg", "<font color='red'>Please fill required Entries</font>");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		}
}