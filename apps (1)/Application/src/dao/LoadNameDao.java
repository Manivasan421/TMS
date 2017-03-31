package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class LoadNameDao
{
	public ArrayList<String> getNames(String month)
	{
		ArrayList<String> list=new ArrayList();
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/application", "root", "root");
			PreparedStatement stmt=con.prepareStatement("SELECT ename FROM details WHERE month='"+month+"';");
			ResultSet rs=stmt.executeQuery();
			
			while(rs.next())
			{
				list.add(rs.getString("ename"));
			}
			
		}
		catch(Exception e)
		{
			System.out.print(e);
		}
		return list;
	}
}

