<%--
  Autor: Rodrigo Escobar
  Date: 26/5/2025
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Nuevo Cliente</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #fdfbfb, #ebedee);
            margin: 0;
            padding: 0;
        }

        .container {
            width: 90%;
            max-width: 600px;
            margin: 50px auto;
            background: #ffffff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 8px;
            color: #444;
        }

        input[type="text"],
        input[type="tel"],
        input[type="email"],
        select {
            width: 100%;
            padding: 10px 12px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 16px;
            box-sizing: border-box;
            transition: border-color 0.3s;
        }

        input:focus,
        select:focus {
            border-color: #007bff;
            outline: none;
        }

        .btn {
            display: inline-block;
            padding: 12px 25px;
            font-size: 16px;
            font-weight: bold;
            text-align: center;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            transition: background 0.3s ease-in-out;
        }

        .btn-primary {
            background-color: #007bff;
            color: #fff;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        .btn-back {
            display: inline-block;
            margin-bottom: 20px;
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        .btn-back:hover {
            color: #0056b3;
        }

        .alert.error {
            background-color: #f8d7da;
            color: #721c24;
            padding: 12px;
            border-radius: 8px;
            margin-bottom: 20px;
            border: 1px solid #f5c6cb;
        }
    </style>
</head>
<body>
<div class="container">
    <c:if test="${not empty error}">
        <div class="alert error">${error}</div>
    </c:if>

    <a href="${pageContext.request.contextPath}/clients/list" class="btn-back">← Volver a la lista</a>
    <h1>Registrar Nuevo Cliente</h1>

    <form action="${pageContext.request.contextPath}/clients/create" method="POST">
        <div class="form-group">
            <label>Nombre:</label>
            <input type="text" name="name" required>
        </div>

        <div class="form-group">
            <label>Documento:</label>
            <input type="text" name="document" required>
        </div>

        <div class="form-group">
            <label>Tipo:</label>
            <select name="type">
                <option value="NATURAL">Natural</option>
                <option value="JURIDICA">Jurídica</option>
            </select>
        </div>

        <div class="form-group">
            <label>Teléfono:</label>
            <input type="tel" name="phone" required>
        </div>

        <div class="form-group">
            <label>Email:</label>
            <input type="email" name="email" required>
        </div>

        <div class="form-group">
            <label>Dirección:</label>
            <input type="text" name="address" required>
        </div>

        <button type="submit" class="btn btn-primary">Guardar</button>
    </form>
</div>
</body>
</html>
