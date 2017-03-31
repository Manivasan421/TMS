package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CreateEmployeeDao {
	
	
	public boolean Create(String a, String b, String c, String d, String e2)
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/application", "root", "root");
			PreparedStatement stmt=con.prepareStatement("INSERT INTO details(month,ename,email,dept,mobilenumber) values(?,?,?,?,?)");
			stmt.setString(1, a);
			stmt.setString(2, b);
			stmt.setString(3, c);
			stmt.setString(4, d);
			stmt.setString(5, e2);
			int i=stmt.executeUpdate();
			if(i>0)
				return true;
			
		}
		catch(Exception e)
		{
			System.out.print(e);
		}
		return false;
		
	}


	public boolean Update(String a, String b, String c, String d, String e) {
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/application", "root", "root");
			PreparedStatement stmt=con.prepareStatement("UPDATE details set month=?,email=?,dept=?,mobilenumber=? WHERE ename=?");
			stmt.setString(1, a);
			stmt.setString(2, c);
			stmt.setString(3, d);
			stmt.setString(4, e);
			stmt.setString(5, b);
			int i=stmt.executeUpdate();
			if(i>0)
				return true;
			
		}
		catch(Exception e1)
		{
			System.out.print(e1);
		}
		return false;
	}
	
	
	
	public boolean Delete(String b) {
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/application", "root", "root");
			PreparedStatement stmt=con.prepareStatement("DELETE FROM details WHERE ename=?");
			stmt.setString(1, b);
			int i=stmt.executeUpdate();
			if(i>0)
				return true;
			
		}
		catch(Exception e)
		{
			System.out.print(e);
		}
		return false;
	}

	
}
