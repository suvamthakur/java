<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <pre>
		<%
		    int rows = 5;
		
		    for (int i = 0; i < rows; i++) {
		        // Print leading spaces for alignment
		        for (int space = 0; space < (rows - i); space++) {
		            out.print(" "); // Use double spaces for proper centering
		        }
		
		        int num = 1; // First number is always 1
		        for (int j = 0; j <= i; j++) {
		            out.print(num + " "); // Extra spaces between numbers for alignment
		            num = num * (i - j) / (j + 1); // Compute next number
		        }
		        out.println(); // Move to the next row
		    }
		%>
    </pre>
</body>
</html>