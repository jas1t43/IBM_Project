

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.ArrayList;

import bean.iteminfo;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class order
 */
public class order extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public order() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		HttpSession s=request.getSession(false);
		ArrayList<iteminfo> items=(ArrayList<iteminfo>)s.getAttribute("items");
		
		String name=request.getParameter("name");
		String add=request.getParameter("address");
		String state=request.getParameter("State");
		String country=request.getParameter("country");
		int zip=Integer.parseInt(request.getParameter("postal"));
		int phone=Integer.parseInt(request.getParameter("number"));
		int quant=Integer.parseInt(request.getParameter("quantity"));
		String landmark=request.getParameter("landmark");
		int uid=Integer.parseInt((String)s.getAttribute("uid"));

		
				try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbl","root","root");
		
		

		for(iteminfo item:items){
		PreparedStatement ps=con.prepareStatement("INSERT INTO `myorder` (name, `Pid`, `Uid`, `Address`, `State`, `Country`, Postal_Code, `Phone_no`, `quantity`, `Landmark`) VALUES( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
		ps.setString(1, name);
		ps.setInt(2, item.getId());
		ps.setInt(3, uid);
		ps.setString(4, add);
		ps.setString(5, state);
		ps.setString(6, country);
		ps.setInt(7, zip);
		ps.setInt(8, phone);
		ps.setInt(9, quant);
		ps.setString(10, landmark);
		ps.executeUpdate();
		}
		
}
		
		catch(Exception e){
			e.printStackTrace();
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		
	}
	}	


