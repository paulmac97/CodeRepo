

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 * Servlet implementation class JList
 */
@WebServlet("/JList")
public class JList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JList() {
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
	    try
	    {
	    	Class.forName("com.mysql.jdbc.Driver");
			Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
			PreparedStatement ps1=c.prepareStatement("select * from jp order by date desc");
			ResultSet rs=ps1.executeQuery();	
			o.println("<br/><h1>Most Recent Jobs</h1><hr/><br/>");
			while(rs.next())
			o.println("<h2>"+rs.getString(1)+"</h2><div> <b>Location:</b>"+rs.getString(2)+" | <b>Experience/Fresher:</b>"+rs.getString(3)+"<br/><b>Required Experience:</b>"+rs.getString(4)+"| <b>Salary:</b>"+rs.getString(5)+"</div>");			
	    }
	    catch(Exception ex)
	    {
	    	System.out.println(ex);
	    }
	}

}
