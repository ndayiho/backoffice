
<%@ page import="org.example.models.Catalogue" %>
<%@ page import="org.example.models.Work" %>
<%@ page import="org.example.models.Artist" %>
<%@ page import="java.util.Arrays" %>

<%--
  Created by IntelliJ IDEA.
  User: Gasana.NHonore
  Date: 05/07/2020
  Time: 13:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Administration-Oeuvres au catalogue</title>
</head>
<body>
<h1>Oeuvres au catalogue</h1>
<%
    if (Catalogue.listsOfWorks.isEmpty()) {
        Artist tomCruise = new Artist("Tom");
        Artist honore = new Artist("Honore");
        Artist louis = new Artist("Louis");

        Work mirror = new Work("Mirror");
        Work bad = new Work("Bad");
        Work laLegende = new Work("laLegende");

        mirror.setMainArtist(tomCruise);
        mirror.setSummary("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy");
        mirror.setGenre("Science fiction");
        mirror.setAnnee("2019");

        bad.setMainArtist(honore);
        bad.setSummary("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters");
        bad.setGenre("pop");
        bad.setAnnee("2018");

        laLegende.setMainArtist(louis);
        laLegende.setSummary("Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old");
        laLegende.setGenre("Comedie");
        laLegende.setAnnee("2020");
        Catalogue.listsOfWorks.addAll(Arrays.asList(mirror, bad, laLegende));

    }

    for (Work work:Catalogue.listsOfWorks) {%>
        <p><%=work.getTitle() %></p>
<%}%>
</body>
</html>