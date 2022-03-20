<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Course List</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css"/>
  </head>
  <body>
  <center>
    <h1>Course List</h1>
   
    <br/><br/>
    <div>
      <table border="1">
        <tr>
          <th>Course Id</th>
          <th>Course Name</th>
        </tr>
        <c:forEach  items="${course}" var ="course">
        <tr>
          <td>${course.courseid}</td>
          <td>${course.coursename}</td>
        </tr>
        </c:forEach>
      </table>
    </div>
    <div>
    	<%
         Integer hitsCount = (Integer)application.getAttribute("hitCounter");
         if( hitsCount ==null || hitsCount == 0 ) {
            
            hitsCount = 1;
         } else {
           
            hitsCount += 1;
         }
         application.setAttribute("hitCounter", hitsCount);
      %>
      <center>
         <p>Total number of visits: <%= hitsCount%></p>
      </center>
      </div>
  </center>
  </body>
  <style>
  body {background-color: #a7e2e6;}
  		h1   {color: #111717;}
  </style>
 
</html>