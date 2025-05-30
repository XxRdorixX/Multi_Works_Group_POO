<%--
  Autor: Rodrigo Escobar
  Fecha: 26/5/2025
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>Editar Cliente</title>
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

    label {
      display: block;
      margin-bottom: 15px;
      font-weight: bold;
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
      margin-top: 5px;
      transition: border-color 0.3s;
    }

    input:focus,
    select:focus {
      border-color: #007bff;
      outline: none;
    }

    .btn-primary {
      display: block;
      width: 100%;
      padding: 12px;
      font-size: 16px;
      font-weight: bold;
      background-color: #007bff;
      color: #fff;
      border: none;
      border-radius: 10px;
      cursor: pointer;
      margin-top: 20px;
      transition: background-color 0.3s;
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
      margin: 20px auto;
      border: 1px solid #f5c6cb;
      max-width: 600px;
    }
  </style>
</head>
<body>
<c:if test="${not empty error}">
  <div class="alert error">${error}</div>
</c:if>

<div class="container">
  <a href="${pageContext.request.contextPath}/clients/list" class="btn-back">← Volver a la lista</a>
  <h1>Editar Cliente</h1>

  <form action="${pageContext.request.contextPath}/clients/update" method="POST">
    <input type="hidden" name="id" value="${client.id}">

    <label>Nombre:
      <input type="text" name="name" value="${client.name}" required>
    </label>

    <label>Documento:
      <input type="text" name="document" value="${client.document}" required>
    </label>

    <label>Tipo:
      <select name="type">
        <option value="NATURAL" ${client.type == 'NATURAL' ? 'selected' : ''}>Natural</option>
        <option value="JURIDICA" ${client.type == 'JURIDICA' ? 'selected' : ''}>Jurídica</option>
      </select>
    </label>

    <label>Teléfono:
      <input type="tel" name="phone" value="${client.phone}" required>
    </label>

    <label>Email:
      <input type="email" name="email" value="${client.email}" required>
    </label>

    <label>Dirección:
      <input type="text" name="address" value="${client.address}" required>
    </label>

    <button type="submit" class="btn-primary">Actualizar</button>
  </form>
</div>
</body>
</html>
