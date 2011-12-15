<%-- 
    Document   : index
    Created on : Dec 12, 2011, 1:37:22 PM
    Author     : Tolis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            double cost1, cost2, cost3;
            Cookie co1, co2, co3;
            public void jspInit() {
                
                ServletConfig sConfig = getServletConfig();
                cost1 = Double.parseDouble(sConfig.getInitParameter("Coffee"));
                cost2 = Double.parseDouble(sConfig.getInitParameter("Sugar"));
                cost3 = Double.parseDouble(sConfig.getInitParameter("Milk"));
                
                Cookie co1 = new Cookie("Coffee", "0");
                Cookie co2 = new Cookie("Sugar", "0");
                Cookie co3 = new Cookie("Milk", "0");
            }
            
            public String getCookieVal(Cookie[] cookies, String cookieName, String defaultValue) {
                if(cookies != null) {
                    for(int i=0; i<cookies.length; i++) {
                        Cookie cookie = cookies[i];
                        if (cookieName.equals(cookie.getName()))
                            return(cookie.getValue());
                    }
                }
                return(defaultValue);
            }
        %>

        <form method="get" action="result.jsp">
        <table class="sample">
            <tr>
                <td>Item</td>
                <td>Cost</td>
                <td>Quantity</td>
            </tr>
            <tr>
                <td>Coffee</td>
                <td><%=cost1%><input type="hidden" name="cost1" value="<%=cost1%>"/></td>
                <%String val = getCookieVal(request.getCookies(), "Coffee", "0");%>
                <td><input type="text" name="q1" value="<%=val%>"/></td>
            </tr>
            <tr>
                <td>Sugar</td>
                <td><%=cost2%><input type="hidden" name="cost2" value="<%=cost2%>"/></td>
                <%val = getCookieVal(request.getCookies(), "Sugar", "0");%>
                <td><input type="text" name="q2" value="<%=val%>"/></td>
            </tr>
            <tr>
                <td>Milk</td>
                <td><%=cost3%><input type="hidden" name="cost3" value="<%=cost3%>"/></td>
                <%val = getCookieVal(request.getCookies(), "Milk", "0");%>
                <td><input type="text" name="q3" value="<%=val%>"/></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td><input type="submit" value="Check out"/></td>
            </tr>
        </table>
        </form>
                
    </body>
</html>
