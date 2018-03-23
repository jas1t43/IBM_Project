

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
 * Servlet implementation class log
 */
public class log extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public log() {
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
		String u=request.getParameter("uname");
		String p=request.getParameter("pname");
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbl","root","root");
		PreparedStatement ps=con.prepareStatement("select * from myuser where username=? and password=?");
		ps.setString(1,u);
		ps.setString(2,p);
		
	    ResultSet rs=ps.executeQuery();
	    if(rs.next()){
		//if(i>0){
	    	 HttpSession s=request.getSession();
	 		s.setAttribute("usr",u);
	 		s.setAttribute("pass",p);
	 		s.setAttribute("uid", rs.getString(5));
			response.sendRedirect("index.jsp");
	   }
	    //}
		//response.getWriter().print("inserted");
	    else
	    {

			request.setAttribute("unlog","<font color='red'>Username/Password Incorrect</font>");
			request.getRequestDispatcher("index.jsp").forward(request, response);
	    }
	}
		
		catch(Exception e){
			e.printStackTrace();
		}


	}

}
