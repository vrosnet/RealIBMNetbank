<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Trygbank - Overfør</title>
		<link rel="stylesheet" type="text/css" href="style.css">
		
		<%@ page import="com.mmh.pkg.Account" %>
		<%@ page import="com.mmh.pkg.GenerateTransactionInfo" %>
		<%@ page import="java.sql.ResultSet" %>
		<%@ page import="java.util.*" %>
	</head>
	<body>
		<header class="banner">
			<h1>Overf�r</h1>
		</header>
		
		<% ArrayList<Account> accounts = (ArrayList<Account>) request.getAttribute("accounts");%>

      
      <nav>
      <ul>
        <li><a href="frontPageCostumer.jsp">Forside</a></li>
        <li><a href="/transferMoney">Overf�rrsel</a></li>
        <li><a href="accountTransactions.jsp">Kontobev�gelser</a></li>        
        <li><a href="infoCostumer.jsp">Info</a></li>
      </ul>
    </nav>	
	
	<main>
		<article>
			<h2>Overf�r penge</h2>
				<section>
					<ul>
						<form class="form-signin" action="TransferMoney" method="post">
							Fra Konto:<br>
							<input type="text" name="account_from" value=""><br><br>
							Til Konto:<br>
							<input type="text" name="account_to" value=""><br><br>
							Bel�b:<br>
							<input type="text" name="amount" value=""><br><br>
							Tekst til kontoudtog:
							<input type="text" name="description" value=""><br><br>
							Transaktions ID:<br>
							<input type="text" name="transaction_id" value=""><br><br>
							<input type="submit" value="Overf�r">
						</form>
					</ul>
				</section>
		<article>
	</main>
	
	</body>
</html>