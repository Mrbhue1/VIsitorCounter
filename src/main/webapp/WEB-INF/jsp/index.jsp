<!DOCTYPE HTML>
<html>
   <head>
      <meta charset="UTF-8" />
      <title>Welcome</title>
      <link rel="stylesheet" type="text/css"
                href="${pageContext.request.contextPath}/css/style.css"/>
   </head>
   <body>
        <h1>Welcome</h1>
      <h1>${message}</h1>
      
    
        
      <a href="${pageContext.request.contextPath}/courseList">Course List</a>
      <br>
      <a href="${pageContext.request.contextPath}/counter">Counter</a>  
      </br>
   </body>
   <style>
		body {background-color: powderblue;}
		h1   {color: blue;}
   </style>
  
</html>