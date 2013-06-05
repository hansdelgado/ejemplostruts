<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Contact Information!</h1>
        <s:form action="add" method="post">
            <s:textfield name="contact.firstName" label="First Name"/>
    <s:textfield name="contact.lastName" label="Last Name"/>
    <s:textfield name="contact.emailId" label="Email"/>
    <s:textfield name="contact.cellNo" label="Cell No."/>
    <s:textfield name="contact.website" label="Homepage"/>
    <s:textfield name="contact.birthDate" label="Birthdate"/>
    <s:submit value="Add Contact" align="center" />

        </s:form>
        <h2>Contacts</h2>
<table border="2">
<tr>
    <th>Name</th>
    <th>Email</th>
    <th>Cell No.</th>
    <th>Birthdate</th>
    <th>Homepage</th>
    <th>Delete</th>
</tr>

<tr>
        <td><s:property value="contact.firstName"/> <s:property value="contact.lastName"/> </td>
        <td><s:property value="contact.emailId"/></td>
        <td><s:property value="contact.cellNo"/></td>
        <td><s:property value="contact.birthDate"/></td>
        <td><a href="<s:property value="contact.website"/>">link</a></td>
       
    </tr>
    
</table>
    </body>
</html>