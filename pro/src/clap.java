

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.iteminfo;
import bean.logic;

/**
 * Servlet implementation class clap
 */
public class clap extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public clap() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String a=request.getParameter("pid");
		 int pid=Integer.parseInt(a);
			
			
		 HttpSession h=request.getSession(false);
		 int it= (Integer)h.getAttribute("item");
		 
		iteminfo item=null;
		try {
			item = logic.getiteminfo(pid);
		} catch (Exception e) {
			System.out.println("5");
			e.printStackTrace();
		}
		 
		 
		 
		 ArrayList<iteminfo> items=(ArrayList<iteminfo>)h.getAttribute("items");
		
		 item.setId(pid);
		 items.add(item);
	h.setAttribute("items", items);
		//iteminfo item=new iteminfo();
		//item.setId(it);
	 	it++;
	 	 h.setAttribute("item", it);
	  /*   if()
	    {
	    	y=y++;
	    }
	    else
	    {
	    	y=1;
	    }*/
	   
	   
	    request.getRequestDispatcher("buy").forward(request, response);;
	    
	    
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
