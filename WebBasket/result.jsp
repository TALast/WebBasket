<%-- 
    Document   : index
    Created on : Dec 12, 2011, 1:37:22 PM
    Author     : Tolis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.Cookie"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style type="text/css">
        table.sample {
                border-width: 2px;
                border-spacing: 0px;
                border-style: solid;
                border-color: black;
                border-collapse: collapse;
                background-color: white;
        }
        table.sample td {
                border-width: 1px;
                padding: 3px;
                border-style: solid;
                border-color: black;
                background-color: white;
        }
        </style>
        
    </head>
    <body>
        <%!
            public Cookie getACookie(Cookie[] cookies, String cookieName) {
                for(int i=0; i<cookies.length; i++) {
                    Cookie cookie = cookies[i];
                    if (cookieName.equals(cookie.getName()))
                        return(cookie);
                    }
                return(new Cookie(cookieName, "0"));
            }
        %>
        <table class="sample">
            <tr>
                <td>Item</td>
                <td>Cost</td>
                <td>Quantity</td>
                <td>Total</td>
            </tr>
            <tr>
                <td>Coffee</td>
                <td><% double temp = Double.parseDouble(request.getParameter("cost1"));%><%=temp%></td>
                <td><%=request.getParameter("q1")%></td>
                <%double i = Integer.parseInt(request.getParameter("q1")) * temp;
                  Cookie a = getACookie(request.getCookies(), "Coffee");
                  a.setValue(request.getParameter("q1"));
                  response.addCookie(a);
                %>
                <td><%=i%></td>
            </tr>
            <tr>
                <td>Sugar</td>
                <td><%temp = Double.parseDouble(request.getParameter("cost2"));%><%=temp%></td>
                <td><%=request.getParameter("q2")%></td>
                <%double j = Integer.parseInt(request.getParameter("q2")) * temp;
                  a = getACookie(request.getCookies(), "Sugar");
                  a.setValue(request.getParameter("q2"));
                  response.addCookie(a);
                %>
                <td><%=j%></td>
            </tr>
            <tr>
                <td>Milk</td>
                <td><%temp = Double.parseDouble(request.getParameter("cost3"));%><%=temp%></td>
                <td><%=request.getParameter("q3")%></td>
                <%double k = Integer.parseInt(request.getParameter("q3")) * temp;
                  a = getACookie(request.getCookies(), "Milk");
                  a.setValue(request.getParameter("q3"));
                  response.addCookie(a);
                %>
                <td><%=k%></td>
            </tr>
            <tr>
                <td>Total</td>
                <td></td>
                <td></td>
                <% i = i + j + k; %>
                <td><%=i%></td>
            </tr>
        </table>
        <a href="index.jsp">Change Shopping cart</a>
    </body>
</html>
