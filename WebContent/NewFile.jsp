<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.List, java.sql.*, files.* "  %>
    <% Class.forName("com.mysql.jdbc.Driver").newInstance(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bloggen</title>
</head>
<body>

<form>

</form>

<% 


List<blogPost> blogposts = blogPostStorage.getAllBlogPosts();
blogPost atlantis = blogposts.get(0);

List<blogPost> authors = blogPostStorage.getAllBlogPostAuthors();
blogPost getauthors = authors.get(0);

List<blogPost> categories = blogPostStorage.getAllBlogPostCategories();
blogPost getcategories = categories.get(0);

%>

<div style="font-size:30px;">
<%
out.print("Min blogg<br>");
out.print("==== ==== ==== ==== ====<br><br>");
%>
</div>



 
<div style="width:700px; height:100%; float:left;">
<%
for(Integer i = 0; i < blogposts.size(); i++) { %>

<div style=" width:400px; float:left;  border:1px solid black;">
<div style="font-size:20px;">
<%
out.print(blogposts.get(i).title + "<br>-------------");
%>
</div>

<div style="font-size:20px;">
<%
out.print("<br>" + blogposts.get(i).content + "<br><br>");
%>
</div>

<div style="font-size:20px;">
<%
out.print("Skrivet av: " + blogposts.get(i).author + "<br>");
%>
</div>

<div style="font-size:20px;">
<%
out.print("Kategori: " + blogposts.get(i).category + "<br><br>");
%>
</div>

<%
}
%>
</div>
</div> 


<div style="float:right; width:200px; height:20%; border:1px solid black;">
<%
out.print("Skribenter: <br>");
for(Integer i = 0; i < authors.size(); i++) {
	out.print(authors.get(i).author + "<br>");
}

%>
</div>

<div style="float:right; width:200px; height:20%; border:1px solid black; margin-top:10px;">
<%
out.print("Kategorier: <br>");
for(Integer i = 0; i < categories.size(); i++) {
	out.print(categories.get(i).category + "<br>");
}

%>
</div>

 
</body>
</html>