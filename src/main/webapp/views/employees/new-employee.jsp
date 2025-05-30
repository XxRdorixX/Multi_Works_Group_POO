<%--
  Autor: Rodrigo Escobar
  Fecha: 26/5/2025
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Nuevo Empleado</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #e0eafc, #cfdef3);
            margin: 0;
            padding: 0;
        }

        .container {
            width: 90%;
            max-width: 600px;
            margin: 50px auto;
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
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
        input[type="password"],
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
    </style>
</head>
<body>
<div class="container">
    <a href="${pageContext.request.contextPath}/employees/list" class="btn-back">← Volver a la lista</a>
    <h1>Registrar Nuevo Empleado</h1>

    <form action="${pageContext.request.contextPath}/employees/create" method="POST">
        <!-- Campos específicos de empleado -->
        <div class="form-group">
            <label>Nombre:</label>
            <input type="text" name="name" required>
        </div>

        <div class="form-group">
            <label>Documento:</label>
            <input type="text" name="document" required>
        </div>

        <div class="form-group">
            <label>Tipo de persona:</label>
            <select name="type">
                <option value="NATURAL">Natural</option>
                <option value="JURIDICA">Jurídica</option>
            </select>
        </div>

        <div class="form-group">
            <label>Tipo de contratación:</label>
            <select name="contractType">
                <option value="PERMANENTE">Permanente</option>
                <option value="POR_HORAS">Por Horas</option>
            </select>
        </div>

        <div class="form-group">
            <label>Teléfono:</label>
            <input type="tel" name="phone" required>
        </div>

        <div class="form-group">
            <label>Correo electrónico:</label>
            <input type="email" name="email" required>
        </div>

        <div class="form-group">
            <label>Dirección:</label>
            <input type="text" name="address" required>
        </div>

        <!-- Campos de autenticación -->
        <div class="form-group">
            <label>Usuario:</label>
            <input type="text" name="username" required>
        </div>

        <div class="form-group">
            <label>Contraseña:</label>
            <input type="password" name="password" required>
        </div>

        <button type="submit" class="btn btn-primary">Guardar</button>
    </form>
</div>
</body>
</html>
