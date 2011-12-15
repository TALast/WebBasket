<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your shoppings</title>
        
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
        <jsp:useBean id="item1" class="webbasket.MarketItemCollection" scope="session"></jsp:useBean>
        <jsp:useBean id="item2" class="webbasket.MarketItemCollection" scope="session"></jsp:useBean>
        <jsp:useBean id="item3" class="webbasket.MarketItemCollection" scope="session"></jsp:useBean>
        <table class="sample">
            <tr>
                <td>Item</td>
                <td>Cost</td>
                <td>Quantity</td>
                <td>Total</td>
            </tr>
            <tr>
                <td>${sessionScope.item1.name}</td>
                <td>${sessionScope.item1.price}</td>
                <jsp:setProperty name="item1" property="quantity" param="q1" />
                <td>${sessionScope.item1.quantity}</td>
                <td>${sessionScope.item1.price * item1.quantity}</td>
            </tr>
            <tr>
                <td>${sessionScope.item2.name}</td>
                <td>${sessionScope.item2.price}</td>
                <jsp:setProperty name="item2" property="quantity" param="q2" />
                <td>${sessionScope.item2.quantity}</td>
                <td>${sessionScope.item2.price * sessionScope.item2.quantity}</td>
            </tr>
            <tr>
                <td>${sessionScope.item3.name}</td>
                <td>${sessionScope.item3.price}</td>
                <jsp:setProperty name="item3" property="quantity" param="q3" />
                <td>${sessionScope.item3.quantity}</td>
                <td>${sessionScope.item3.price * sessionScope.item3.quantity}</td>
            </tr>
            <tr>
                <td>Total</td>
                <td></td>
                <td></td>
                <td>${sessionScope.item1.price * sessionScope.item1.quantity + sessionScope.item2.price *sessionScope.item2.quantity + sessionScope.item3.price * sessionScope.item3.quantity}</td>
            </tr>
        </table>
        <a href="index.jsp">Change Shopping cart</a>
    </body>
</html>
