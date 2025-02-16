<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <form action="home.jsp" method="post">
        Enter Number 1: <input type="number" name="num1" required> <br>
        Enter Number 2: <input type="number" name="num2" required> <br>

        <label>Select Operation:</label> <br>
        <input type="radio" name="operation" value="add" required> Addition <br>
        <input type="radio" name="operation" value="sub"> Subtraction <br>
        <input type="radio" name="operation" value="mul"> Multiplication <br><br>

        <input type="submit" value="Calculate">
    </form>
</body>
</html>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

    String num1Param = request.getParameter("num1");
    String num2Param = request.getParameter("num2");
    String operation = request.getParameter("operation");

    if (num1Param != null && num2Param != null && operation != null) {

        int num1 = Integer.parseInt(num1Param);
        int num2 = Integer.parseInt(num2Param);
        int result = 0;

        if (operation.equals("add")) {
            result = num1 + num2;
        } else if (operation.equals("sub")) {
            result = num1 - num2;
        } else if (operation.equals("mul")) {
            result = num1 * num2;
        }
        out.print("Answer is: " + result);
    } else {
        out.print("Invalid input. Please enter valid numbers.");
    }
%>
</body>
</html>
