<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<body>
	<h2>Student registration form</h2>
	<form:form action="processForm" modelAttribute="student">
	First name : <form:input path="firstName" />
		<br>
		<br>
	Last name : <form:input path="lastName" />
		<br>
		<br>
		
	Country : 
	<form:select path="country">
			<form:options items="${student.countryOptions}" />
		</form:select>
		<br>
	<br> Favorite language : Java
	<form:radiobutton path="favoriteLanguage" value="Java" />
	C#
	<form:radiobutton path="favoriteLanguage" value="C#" />
	PHP
	<form:radiobutton path="favoriteLanguage" value="PHP" />
	Ruby
	<form:radiobutton path="favoriteLanguage" value="Ruby" />
		<input type="submit" value="submit" />
		
		<br> <br>
		Operating systems : 
		Linux<form:checkbox path="operatingSystems" value="Linux"/>
		Windows<form:checkbox path="operatingSystems" value="Windows"/>
		Mac OS<form:checkbox path="operatingSystems" value="Mac OS"/>
	</form:form>
	
</body>
</html>