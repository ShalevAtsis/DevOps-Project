<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
request.setCharacterEncoding("UTF-8");
String username = request.getParameter("username");
boolean hasName = username != null && !username.trim().isEmpty();
if (hasName) { username = username.trim(); }
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Champions League Teams</title>
  <style>
    body { font-family: Arial, sans-serif; margin: 20px; }
    .top { margin-bottom: 20px; padding: 12px; border: 1px solid #ddd; border-radius: 8px; }
    .grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(220px, 1fr)); gap: 16px; }
    .card { border: 1px solid #ddd; border-radius: 12px; padding: 14px; text-align: center; }
    .logo { width: 120px; height: 120px; object-fit: contain; margin: 10px 0; }
    .btn { display: inline-block; padding: 10px 12px; border-radius: 10px; text-decoration: none; border: 1px solid #333; color: #000; }
    .btn:hover { opacity: 0.85; }
    label { margin-right: 8px; }
    .greeting { margin-left: 10px; font-weight: bold; }
  </style>
</head>
<body>

<div class="top" id="topPanel">
  <form id="userForm" method="post">
    <label for="usernameInput" id="usernameLabel">Username:</label>
    <input id="usernameInput" name="username" type="text" placeholder="Type your username"
           value="<%= hasName ? username : "" %>" />
    <button id="submitButton" type="submit">Submit</button>
    <% if (hasName) { %>
      <span class="greeting" id="greetingText">Hello <%= username %></span>
    <% } %>
  </form>
</div>

<h2 id="pageHeader">Champions League Teams</h2>

<div class="grid" id="teamsGrid">

  <div class="card" id="team-barcelona">
    <h3 id="teamName-barcelona">Barcelona</h3>
    <img class="logo" id="teamLogo-barcelona" alt="FC Barcelona Logo"
         src="https://upload.wikimedia.org/wikipedia/en/4/47/FC_Barcelona_%28crest%29.svg">
    <div>
      <a class="btn" id="teamLink-barcelona" href="https://www.fcbarcelona.com/" target="_blank" rel="noopener">
        Official Site
      </a>
    </div>
  </div>

  <div class="card" id="team-realmadrid">
    <h3 id="teamName-realmadrid">Real Madrid</h3>
    <img class="logo" id="teamLogo-realmadrid" alt="Real Madrid Logo"
         src="https://upload.wikimedia.org/wikipedia/en/5/56/Real_Madrid_CF.svg">
    <div>
      <a class="btn" id="teamLink-realmadrid" href="https://www.realmadrid.com/" target="_blank" rel="noopener">
        Official Site
      </a>
    </div>
  </div>

  <div class="card" id="team-milan">
    <h3 id="teamName-milan">AC Milan</h3>
    <img class="logo" id="teamLogo-milan" alt="AC Milan Logo"
         src="https://upload.wikimedia.org/wikipedia/commons/d/d0/Logo_of_AC_Milan.svg">
    <div>
      <a class="btn" id="teamLink-milan" href="https://www.acmilan.com/" target="_blank" rel="noopener">
        Official Site
      </a>
    </div>
  </div>

  <div class="card" id="team-maccabi">
    <h3 id="teamName-maccabi">Maccabi RISHON Aviv</h3>
    <img class="logo" id="teamLogo-maccabi"
     src="Maccabi_Tel_Aviv_FC.png"
     alt="Maccabi Tel Aviv FC Logo">

    <div>
      <a class="btn" id="teamLink-maccabi" href="https://www.maccabi-tlv.co.il/" target="_blank" rel="noopener">
        Official Site
      </a>
    </div>
  </div>

</div>

</body>
</html>
