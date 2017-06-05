<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<html>
 <head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <title>Swedwise Employee List</title>
 </head>
 <body>
     <div align="center">
         <h1>Medarbetare</h1>
         <table border="1">
             <th>Id</th>
             <th>Name</th>
             <th>Company</th>
             <th>Job Title</th>
            
             <c:forEach var="employee" items="${employeeslist}" varStatus="status">
             <tr>
                 <td>${status.index + 1}</td>
                 <td>${employee.name}</td>
                 <td>${employee.company}</td>
                 <td>${employee.jobTitle}</td>                            
             </tr>
             </c:forEach>                
         </table>
     </div>
 </body>
</html>