package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class LoadIdDao
{
	public ArrayList<String> getId(String name)
	{
		ArrayList<String> list=new ArrayList();
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/application", "root", "root");
			PreparedStatement stmt=con.prepareStatement("SELECT * FROM details WHERE ename='"+name+"';");
			ResultSet rs=stmt.executeQuery();
			while(rs.next())
			{
				/*list.add(rs.getString("empid"));*/
				list.add(rs.getString("email"));
			/*	list.add(rs.getString("month"));*/
				list.add(rs.getString("dept"));
				list.add(rs.getString("mobilenumber"));
				
			}
		}
		catch(Exception e)
		{
			System.out.print(e);
		}
		return list;
	}
}

