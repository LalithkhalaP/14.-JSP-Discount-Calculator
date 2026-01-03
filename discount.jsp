<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Discount Calculator</title>
</head>
<body>
    <h2>Final Price Calculator</h2>

    <form method="post" action="discount.jsp">
        Enter Price: <input type="text" name="price"><br><br>
        Enter Discount (%): <input type="text" name="discount"><br><br>
        <input type="submit" value="Calculate">
    </form>

    <%
        String p = request.getParameter("price");
        String d = request.getParameter("discount");

        if (p != null && d != null && !p.isEmpty() && !d.isEmpty()) {
            try {
                double price = Double.parseDouble(p);
                double discount = Double.parseDouble(d);

                double finalPrice = price - (price * discount / 100);

                out.println("Final Payable Amount: " + finalPrice + "<br>");
            } catch (NumberFormatException e) {
                out.println("Please enter valid numeric values for price and discount.");
            }
        }
    %>
</body>
</html>
