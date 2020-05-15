  <%--
  Created by IntelliJ IDEA.
  User: hvr
  Date: 5/12/20
  Time: 12:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta name="google-signin-scope" content="profile email">
  <meta name="google-signin-client_id" content="407580017200-0hu9t079pn3476scpk39n3gs9m29q59f.apps.googleusercontent.com">
  <script src="https://apis.google.com/js/platform.js" async defer></script>
</head>
<body>
<div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark"></div>
<script>
  function onSignIn(googleUser) {
    // Useful data for your client-side scripts:
    var profile = googleUser.getBasicProfile();
    console.log("ID: " + profile.getId()); // Don't send this directly to your server!
    console.log('Full Name: ' + profile.getName());
    console.log('Given Name: ' + profile.getGivenName());
    console.log('Family Name: ' + profile.getFamilyName());
    console.log("Image URL: " + profile.getImageUrl());
    console.log("Email: " + profile.getEmail());

    // The ID token you need to pass to your backend:
    var id_token = googleUser.getAuthResponse().id_token;
    console.log("ID Token: " + id_token);

    var xhr = new XMLHttpRequest();
    xhr.open("POST", "http://localhost:8080/dockertest/MainServlet", true);
    xhr.setRequestHeader('Content-Type', 'text/plain');
    xhr.send(id_token);

  }
</script>
</body>

</html>
