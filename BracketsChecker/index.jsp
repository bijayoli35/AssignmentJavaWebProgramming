<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Bracket Checker</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<div class="container">
		<h1>Bracket Checker</h1>
		<form>
			<label for="input-brackets">Enter brackets:</label>
			<input type="text" id="input-brackets" name="input-brackets">
			<input type="submit" value="Check">
		</form>
		<div id="output-message"></div>
	</div>
	<script src="script.js"></script>
</body>
</html>
