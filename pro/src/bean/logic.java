package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class logic {

	
	public static iteminfo getiteminfo(int pid){
		iteminfo item=new iteminfo();
		
		
		
		Connection con=Connect.getcon();
		System.out.println("con="+con);
		PreparedStatement ps=null;
		try {
			ps = con.prepareStatement("select * from myproducts where pid="+pid+"");
		
		ResultSet rs=ps.executeQuery();
		//System.out.println(rs.next());
		if (rs.next()) {
		item.setId(rs.getInt("pid"));
			item.setItemname(rs.getString("pname"));
			item.setModel(rs.getString("model"));
			item.setPrice(rs.getDouble("saleprice"));
			item.setBrand(rs.getString("brand"));
			item.setImage(rs.getBlob("photo"));
		}
		else{
			
		}
		} catch (SQLException e) {
System.out.println("4");
			e.printStackTrace();
		}
		
		
		return item;
	}
	
	
}
