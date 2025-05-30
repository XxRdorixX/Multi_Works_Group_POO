<%--
  Autor: Rodrigo Escobar
  Fecha: 26/5/2025
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>Editar Empleado</title>
  <style>
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background: linear-gradient(to right, #f8f9fa, #e9ecef);
      margin: 0;
      padding: 0;
    }

    .container {
      width: 90%;
      max-width: 600px;
      margin: 50px auto;
      background: #fff;
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
  </style>
</head>
<body>
<div class="container">
  <a href="${pageContext.request.contextPath}/employees/list" class="btn-back">← Volver a la lista</a>
  <h1>Editar Empleado</h1>

  <form action="${pageContext.request.contextPath}/employees/update" method="POST">
    <input type="hidden" name="id" value="${employee.id}">

    <label>Nombre:
      <input type="text" name="name" value="${employee.name}" required>
    </label>

    <label>Documento:
      <input type="text" name="document" value="${employee.document}" required>
    </label>

    <label>Tipo:
      <select name="type">
        <option value="NATURAL" ${employee.type == 'NATURAL' ? 'selected' : ''}>Natural</option>
        <option value="JURIDICA" ${employee.type == 'JURIDICA' ? 'selected' : ''}>Jurídica</option>
      </select>
    </label>

    <label>Contrato:
      <select name="contractType">
        <option value="PERMANENT" ${employee.contractType == 'PERMANENT' ? 'selected' : ''}>Permanente</option>
        <option value="HOURLY" ${employee.contractType == 'HOURLY' ? 'selected' : ''}>Por Horas</option>
      </select>
    </label>

    <label>Teléfono:
      <input type="tel" name="phone" value="${employee.phone}">
    </label>

    <label>Email:
      <input type="email" name="email" value="${employee.email}">
    </label>

    <label>Dirección:
      <input type="text" name="address" value="${employee.address}">
    </label>

    <button type="submit" class="btn-primary">Actualizar</button>
  </form>
</div>
</body>
</html>
