

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PostS
 */
@WebServlet("/PostS")
public class PostS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostS() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    response.setContentType("text/html");
	    PrintWriter o=response.getWriter();
	    String Compn=request.getParameter("cone");
	    String jloc=request.getParameter("jtwo");
	    String efr=request.getParameter("efthree");
	    String rjob=request.getParameter("efour");
	    String sal=request.getParameter("sfive");
	    //java.util.Date date=new java.util.Date();
	    //java.sql.Date dt = new java.sql.Date(dtformat.parse(date1).getTime());
	    //Date date=java.util.Calendar.getInstance().getTime();  
	   try
	    {
	    	Class.forName("com.mysql.jdbc.Driver");
			Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
			PreparedStatement ps=c.prepareStatement("insert into jp values (?,?,?,?,?,?)");
			ps.setNString(1,Compn);
			ps.setNString(2,jloc);
			ps.setNString(3,efr);
			ps.setNString(4,rjob);
			ps.setNString(5,sal);
			Calendar calendar = Calendar.getInstance();
		    java.sql.Timestamp ourJavaTimestampObject = new java.sql.Timestamp(calendar.getTime().getTime());
		    ps.setTimestamp(6, ourJavaTimestampObject);
			//ps.setDate(6, new java.sql.Date(System.currentTimeMillis()),null);
			//ps.setDate(6, new java.sql.Date(System.currentTimeMillis()));
			System.out.println("ps.setString working");

			int i=ps.executeUpdate();
			System.out.println("exec upoworking");
			o.println("<p><div><div><br/><br/>Successfully Posted!<br/><br/> Thank you!!</div></div></p>");
			response.sendRedirect("Login.jsp");
	    }
	    catch(Exception e)
	    {
	    	System.out.println(e);
	    }
	}

}
