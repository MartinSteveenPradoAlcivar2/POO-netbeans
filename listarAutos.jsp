<%@ page import="java.util.Map" %>
<%@ page import="model.Automovil" %>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard de Automóviles</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { background-color: #f8f9fa; }
        .card { border: none; box-shadow: 0 4px 8px rgba(0,0,0,0.1); margin-bottom: 30px; }
        .header-section { 
            background: linear-gradient(135deg, #0d6efd 0%, #003d99 100%); 
            color: white; 
            padding: 40px 0; 
            margin-bottom: 30px; 
            border-radius: 0 0 20px 20px;
        }
        .badge-info { font-size: 0.9em; }
        .table thead { background-color: #e9ecef; }
    </style>
</head>
<body>

<div class="header-section text-center">
    <div class="container">
        <h1 class="display-5 fw-bold">Gestión de Inventario Automotriz</h1>
        <p class="lead">Comparativa de estructuras Map en Java</p>
    </div>
</div>

<div class="container">
    <div class="row">
        
        <div class="col-md-12">
            <div class="card">
                <div class="card-header bg-danger text-white d-flex justify-content-between align-items-center">
                    <h5 class="mb-0">1. HashMap</h5>
                    <span class="badge bg-light text-dark">Orden aleatorio / Alta velocidad</span>
                </div>
                <div class="card-body">
                    <p class="text-muted small">Almacena pares clave-valor sin garantizar un orden específico[cite: 8].</p>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Modelo (Clave)</th>
                                <th>Fabricante</th>
                                <th>Color</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% Map<String, Automovil> hash = (Map<String, Automovil>)request.getAttribute("hashMap");
                               for (Automovil a : hash.values()) { %>
                                <tr>
                                    <td><strong><%= a.getModelo() %></strong></td>
                                    <td><%= a.getFabricante() %></td>
                                    <td><span class="badge rounded-pill bg-secondary"><%= a.getColor() %></span></td>
                                </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <div class="col-md-12">
            <div class="card">
                <div class="card-header bg-success text-white d-flex justify-content-between align-items-center">
                    <h5 class="mb-0">2. LinkedHashMap</h5>
                    <span class="badge bg-light text-dark">Mantiene orden de inserción</span>
                </div>
                <div class="card-body">
                    <p class="text-muted small">Respeta la secuencia exacta en la que se agregaron los objetos[cite: 9].</p>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Modelo (Clave)</th>
                                <th>Fabricante</th>
                                <th>Color</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% Map<String, Automovil> linked = (Map<String, Automovil>)request.getAttribute("linkedHashMap");
                               for (Automovil a : linked.values()) { %>
                                <tr>
                                    <td><strong><%= a.getModelo() %></strong></td>
                                    <td><%= a.getFabricante() %></td>
                                    <td><span class="badge rounded-pill bg-secondary text-white"><%= a.getColor() %></span></td>
                                </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <div class="col-md-12">
            <div class="card">
                <div class="card-header bg-info text-white d-flex justify-content-between align-items-center">
                    <h5 class="mb-0">3. TreeMap</h5>
                    <span class="badge bg-light text-dark">Orden alfabético (Clave)</span>
                </div>
                <div class="card-body">
                    <p class="text-muted small">Ordena automáticamente las claves de forma natural[cite: 10].</p>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Modelo (Clave)</th>
                                <th>Fabricante</th>
                                <th>Color</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% Map<String, Automovil> tree = (Map<String, Automovil>)request.getAttribute("treeMap");
                               for (Automovil a : tree.values()) { %>
                                <tr>
                                    <td><strong><%= a.getModelo() %></strong></td>
                                    <td><%= a.getFabricante() %></td>
                                    <td><span class="badge rounded-pill bg-secondary"><%= a.getColor() %></span></td>
                                </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div>
</div>

<footer class="text-center py-4 text-muted">
    <p>&copy; 2026 - Proyecto POO + JSP</p>
</footer>

</body>
</html>