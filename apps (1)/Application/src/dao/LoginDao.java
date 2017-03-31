package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.Loginbean;

public class LoginDao {

	public boolean CheckLogin(String email2, String password2)
	{
		
		
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/application", "root", "root");
			PreparedStatement stmt=con.prepareStatement("SELECT password FROM employee WHERE email='"+email2+"';");
			ResultSet rs=stmt.executeQuery();
			
			while(rs.next())
			{
				if(rs.getString("password").equals(password2))
					return true;
			}
			
		}
		catch(Exception e)
		{
			System.out.print(e);
		}
		return false;
	}
}
