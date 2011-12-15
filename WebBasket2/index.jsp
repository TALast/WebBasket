<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Web Basket</title>
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

        <form method="get" action="result.jsp">
        <table class="sample">
            <tr>
                <td>Item</td>
                <td>Cost</td>
                <td>Quantity</td>
            </tr>
            <tr>
                <jsp:useBean id="item1" class="webbasket.MarketItemCollection" scope="session">
                    <jsp:setProperty name="item1" property="name" value="Coffee" />
                    <jsp:setProperty name="item1" property="price" value="${initParam.Coffee}" />
                </jsp:useBean>
                <td>${item1.name}</td>
                <td>${item1.price}<input type="hidden" name="cost1" value="${item1.price}"/></td>
                <td><input type="text" name="q1" value="${item1.quantity}"/></td>
            </tr>
            <tr>
                <jsp:useBean id="item2" class="webbasket.MarketItemCollection" scope="session">
                    <jsp:setProperty name="item2" property="name" value="Sugar" />
                    <jsp:setProperty name="item2" property="price" value="${initParam.Sugar}" />
                </jsp:useBean>
                <td>${item2.name}</td>
                <td>${item2.price}<input type="hidden" name="cost2" value="${item2.price}"/></td>
                <td><input type="text" name="q2" value="${item2.quantity}"/></td>
            </tr>
            <tr>
                <jsp:useBean id="item3" class="webbasket.MarketItemCollection" scope="session">
                    <jsp:setProperty name="item3" property="name" value="Milk" />
                    <jsp:setProperty name="item3" property="price" value="${initParam.Milk}" />
                </jsp:useBean>
                <td>${item3.name}</td>
                <td>${item3.price}<input type="hidden" name="cost3" value="${item3.price}"/></td>
                <td><input type="text" name="q3" value="${item3.quantity}"/></td>
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
