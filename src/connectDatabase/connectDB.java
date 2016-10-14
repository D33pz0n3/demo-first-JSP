package connectDatabase;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class connectDB {
	
	protected String classname;

	protected String url;

	protected String database;

	protected String user;

	protected String password;
	
	private Connection conn=null;
	
	public connectDB(){
		getInfo();
		
	}
	
	public Connection openConnect(){
		

		try{
			Class.forName(classname);

			conn = DriverManager.getConnection(url+database,user,password);
			
		}catch (SQLException | ClassNotFoundException  e ) {
			System.out.print(e.getMessage());
		}
		
		return conn;
	}
	
	public boolean closeConnect(){
		try{
			conn.close();
			
			return true;
			
		}catch(Exception e){
			System.out.print(e.getMessage());
			
			return false;
		}
		
	}
	
	private void getInfo() {
		try{
			Properties properties = new Properties();

			InputStream  input = getClass().getClassLoader().getResourceAsStream("DBinfo.properties");

			if(input==null){
				System.out.println("Cannot find config");
				return;
			}

			properties.load(input);

			classname=properties.getProperty("classname");

			url = properties.getProperty("url");

			database = properties.getProperty("database");

			user = properties.getProperty("user");

			password= properties.getProperty("password");
		}catch(IOException e){
			
		}
		
	}

}
