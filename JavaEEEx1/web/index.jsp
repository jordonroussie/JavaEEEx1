<%-- 
    Document   : index
    Created on : 9-Jan-2020, 8:47:21 AM
    Author     : Jordon
--%>

<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.nbcc.wmad.Person"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 style="background-color:blue;">Hello World!</h1>

        <p>
            the date is
            <%= new Date()%> 
        </p>
        <ul>
            <%
                String countingList = "";
                for (int i = 1; i <= 10; i++) {
                    countingList += "<li>" + Integer.toString(i) + "</li>";

                }
            %>
            <%= countingList%>
        </ul>
        <%!
            // the delimiter denotes i am returning a value
            private int addNumber(int value1, int value2) {
                return value1 + value2;
            }
        %>
        <p>The sum of 3 + 4 is <%= addNumber(3, 4)%></p>
        <p>The sum of 3 + 4 is <%= addNumber(3, 4)%></p>
        <%
            Person person = new Person();
            person.setFirstName("Jordon");
            person.setLastName("Roussie");
        %>
        <%= person.getFullName()%>
        <%
          List<Person> persons = new ArrayList();
          Person p = new Person();
          
          p = new Person();
          p.setFirstName("Jordon");
          p.setLastName("Roussie");
          p.setId(persons.size() + 1);
          persons.add(p);
          
          p = new Person();
          p.setFirstName("John");
          p.setLastName("Wick");
          p.setId(persons.size() + 1);
          persons.add(p);
        %>
        <select>
            <% for (Person pers : persons) { %>
                <option value="<%= pers.getId()%>">
                    <%= pers.getFullName() %>
                </option>
            <%}%>
        </select>
    </body>
</html>
