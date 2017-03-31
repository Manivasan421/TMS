package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class LoadNameBean {

	ArrayList<String> list;
	
	public ArrayList<String> GetNames(String month)
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sample", "root", "root");
			PreparedStatement stmt=con.prepareStatement("SELECT name FROM employee WHERE month='"+month+"';");
			ResultSet rs=stmt.executeQuery();
			while(rs.next())
			{
				list.add(rs.getString("name"));
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		return list;
		
	}
}
