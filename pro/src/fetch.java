

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class fetch
 */
@WebServlet("/fetch")
public class fetch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public fetch() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{			
			Connection con = null;
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbl","root","root");
			Statement stmt=con.createStatement();
			String strSql="select photo from myproducts where pid="+request.getParameter("id")+"";
		
		ResultSet	rs=stmt.executeQuery(strSql);
			if(rs.next()) {
			byte[] bytearray = new byte[1048576];
			int size=0;
		InputStream	sImage = rs.getBinaryStream(1);
			response.reset();
			response.setContentType("image/jpeg");
			while((size=sImage.read(bytearray))!= -1 ){
			response.getOutputStream().write(bytearray,0,size);
	}}}
			catch (Exception e) {
				e.printStackTrace();
			}	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
