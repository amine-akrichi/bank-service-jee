<%--
  Created by IntelliJ IDEA.
  User: Emin Akrichi
  Date: 1/2/2024
  Time: 10:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String amount = (String) request.getAttribute("Message");  %>
<%@ page import="service.BankWS" %>

<%
    BankWS bankWS = new BankWS();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Bank Service</title>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link
            href="https://fonts.googleapis.com/css2?family=Poppins&display=swap"
            rel="stylesheet"
    />

    <style>
        * {
            font-family: "Poppins", sans-serif;
        }

        body {
            margin: 0;
            padding: 0;
            width: 100vw;
            height: 100vh;
            text-decoration: none;
            color: white;
        }

        .wrapper {
            width: 100vw;
            height: 100vh;
            display: flex;
            background-color: #205295;
        }

        .side-section {
            background-color: #144272;
            width: 25%;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .side-section .logo {
            width: 25%;
            height: 10vh;
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: center;
            font-size: 2.5rem;
            font-weight: bold;
            position: absolute;
            top: 10px;
            left: 0;
        }

        .logo svg {
            height: 2.8rem;
            margin-right: 20px;
        }

        .side-section span {
            width: 100%;
            height: 10vh;
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: center;
            font-size: 1.5rem;
            font-weight: bold;
        }

        .side-section-info {
            color: white;
        }

        .side-section-info span:first-child {
            font-size: 2.5rem;
        }

        .main-section {
            width: 75%;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .card {
            width: 100%;
            height: 50%;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .card-header {
            width: 50%;
            height: 20%;
            display: flex;
            flex-direction: row;
            justify-content: center;
            align-items: center;
            background-color: #BF3131;
            font-size: 2rem;
        }

        .card-body{
            width: 50%;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            font-size: 1.5rem;
            background-color: white;
            color: black;
        }

        .card-body a{
            text-decoration: none;
            font-size: 1.2rem;
            justify-self: flex-end;
            align-self: flex-end;
            color: #BF3131;
            padding: 20px;
        }

        form{
            margin: 20px;
            display: flex;
            flex-direction: row;
            justify-content: center;
            align-items: center;
        }

        .submit-btn {
            width: 200px;
            height: 10vh;
            border: none;
            outline: none;
            background-color: #2c74b3;
            font-size: 1.8rem;
            cursor: pointer;
            font-weight: bold;
            color: white;
        }
    </style>
</head>
<body>
<div class="wrapper">
    <section class="side-section">
        <div class="logo">
            <svg
                    xmlns="http://www.w3.org/2000/svg"
                    fill="currentColor"
                    class="bi bi-bank"
                    viewBox="0 0 16 16"
            >
                <path
                        d="m8 0 6.61 3h.89a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5H15v7a.5.5 0 0 1 .485.38l.5 2a.498.498 0 0 1-.485.62H.5a.498.498 0 0 1-.485-.62l.5-2A.501.501 0 0 1 1 13V6H.5a.5.5 0 0 1-.5-.5v-2A.5.5 0 0 1 .5 3h.89zM3.777 3h8.447L8 1zM2 6v7h1V6zm2 0v7h2.5V6zm3.5 0v7h1V6zm2 0v7H12V6zM13 6v7h1V6zm2-1V4H1v1zm-.39 9H1.39l-.25 1h13.72l-.25-1Z"></path>
            </svg>
            BANK SERVICE
        </div>
        <div class="side-section-info">
            <span>WELCOME BACK</span>
            <span>ACCOUNT BALANCE : <%=bankWS.getBankServicePort().getBalance()%></span>
        </div>
    </section>
    <section class="main-section">
        <div class="card">
            <div class="card-header">
                <h1>Error Message</h1>
            </div>
            <div class="card-body">
                <h3><%= amount %></h3>
                <a href="index.jsp">< Back to home page</a>
            </div>
        </div>
    </section>
</div>
</body>
</html>
