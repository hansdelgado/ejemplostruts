<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>Hello World!</h1>
         <s:form action="add" method="post">
             <s:textfield name="contact.firstName" label="First Name"/>
             <s:textfield name="contact.lastName" label="Last Name"/>
             <s:textfield name="contact.emailId" label="Email"/>
             <s:textfield name="contact.cellNo" label="mobile no"/>
             <s:textfield name="contact.website" label="website"/>
             <s:textfield name="contact.birthDate" label="DOB"/>
  
             <s:submit  name="submit" align="center" value="submit"/>

        </s:form>
        <h2>Contacts</h2>
<table border="2">
<tr>
    <th>Name</th>
    <th>Email</th>
    <th>Cell No.</th>
    <th>Birthdate</th>
    <th>Homepage</th>
    
</tr>

<tr>
        <td><s:property value="contact.firstName"/> <s:property value="contact.lastName"/> </td>
        <td><s:property value="contact.emailId"/></td>
        <td><s:property value="contact.cellNo"/></td>
        <td><s:property value="contact.birthDate"/></td>
        <td><a href="<s:property value="contact.website"/>">link</a></td>
       
    </tr>
    
</table>
        <table border="2">
<tr>
    <th>Name</th>
    <th>Email</th>
    <th>Cell No.</th>
    <th>Birthdate</th>
    <th>Homepage</th>
   
</tr>
<s:iterator value="listcontact" var="contact">
    <tr>
        <td><s:property value="lastName"/>, <s:property value="firstName"/> </td>
        <td><s:property value="emailId"/></td>
        <td><s:property value="cellNo"/></td>
        <td><s:property value="birthDate"/></td>
        <td><a href="<s:property value="website"/>">link</a></td>
        
    </tr>
</s:iterator>
</table>
    </body>
</html>