

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class buy
 */
public class buy extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public buy() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String pd=request.getParameter("pid");
		response.setContentType("text/html");
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbl","root","root");
			PreparedStatement ps=con.prepareStatement("SELECT * FROM myproducts where Pid=?");
			ps.setString(1, pd);
			PrintWriter out=response.getWriter();
			out.print("  "+pd);
			ResultSet rs=ps.executeQuery();
			rs.next();
		//	
			//out.print(rs.getString("Category"));
			if(rs.getString("Category").equals("Laptops and Notebooks")||rs.getString("Category").equals("Desktops"))
			{
				PreparedStatement s=con.prepareStatement("SELECT * FROM lap , myproducts where lap.Pid=myproducts.Pid and myproducts.Pid=?");
				s.setString(1, pd);
				ResultSet rss=s.executeQuery();
				request.setAttribute("item", rss);
				request.getRequestDispatcher("buyl.jsp").forward(request, response);
				//PrintWriter out=response.getWriter();
				out.print("Laptop and desktop <br>");
			}
			if(rs.getString("Category").equals("Tablets")||rs.getString("Category").equals("Mobiles"))
			{
				PreparedStatement s=con.prepareStatement("SELECT * FROM mob_tab , myproducts where mob_tab.pid=myproducts.Pid and myproducts.Pid=?");
				s.setString(1, pd);
				ResultSet rss=s.executeQuery();
				request.setAttribute("item", rss);
				request.getRequestDispatcher("buym.jsp").forward(request, response);
			//	PrintWriter out=response.getWriter();
				out.print("tablets and mobiles <br>");
			}
			if(rs.getString("Category").equals("Cameras"))
			{
				PreparedStatement s=con.prepareStatement("SELECT * FROM camera , myproducts where camera.pid=myproducts.Pid and myproducts.Pid=?");
				s.setString(1, pd);
				ResultSet rss=s.executeQuery();
				request.setAttribute("item", rss);
				request.getRequestDispatcher("buyc.jsp").forward(request, response);
				//PrintWriter out=response.getWriter();
				out.print("cameras <br>");
			}
			if(rs.getString("Category").equals("Computer Accessories"))
			{
				PreparedStatement s=con.prepareStatement("SELECT * FROM com_access , myproducts where com_access.pid=myproducts.Pid and myproducts.Pid=?");
				s.setString(1, pd);
				ResultSet rss=s.executeQuery();
				request.setAttribute("item", rss);
				request.getRequestDispatcher("buya.jsp").forward(request, response);
				//PrintWriter out=response.getWriter();
				out.print("Computer Accessories <br>");
			}
			if(rs.getString("Category").equals("Mobile Accessories"))
			{
				PreparedStatement s=con.prepareStatement("SELECT * FROM com_access , myproducts where com_access.pid=myproducts.Pid and myproducts.Pid=?");
				s.setString(1, pd);
				ResultSet rss=s.executeQuery();
				request.setAttribute("item", rss);
				request.getRequestDispatcher("buya.jsp").forward(request, response);
				//PrintWriter out=response.getWriter();
				out.print("Mobile Accessories <br>");
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
