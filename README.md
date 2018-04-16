# Job Portal
---- Login.jsp -----
1.HR's can login to post job details
2.Users can login to view jobs posted 

---- Post.html -----
This is the front-end page (Form page) for posting the job details. This is exclusively open to HR's

---- PostS.java -----
Servlet that stores the Job details obtained from Post.html form page to a mysql database table

---- JList.java -----
Once the user log-in is successful, then the user is redirected to this Servlet file 
JList - A Servlet that lists posted jobs from the mysql db table to the user in a "Recently posted first" order
