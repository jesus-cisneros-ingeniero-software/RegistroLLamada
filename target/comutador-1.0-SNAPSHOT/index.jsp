<%-- 
    Document   : index
    Created on : 17 oct 2024, 10:25:42
    Author     : JCISNEROS
--%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro de Llamada</title>
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    
    <!-- Ícono -->
    <link rel="icon" href="${pageContext.request.contextPath}/img/logo.ico" type="image/x-icon">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilo.css">
    
    <!-- Estilos personalizados -->
</head>
<body>
    <div class="container">
        <h1>Registrar Llamada</h1>
        <form action="RegistroServlet" method="post" class="form-group">
            <div class="mb-3">
                <label for="fecha" class="form-label">Fecha:</label>
                <input type="date" id="fecha" name="fecha" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="hora" class="form-label">Hora:</label>
                <input type="time" id="hora" name="hora" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="telefono" class="form-label">Teléfono:</label>
                <input type="text" id="telefono" name="telefono" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="subdireccion" class="form-label">Tipo de Llamada:</label>
                <select id="subdireccion" name="subdireccion" class="form-select">
                    <option value="ASESORIA">ASESORIA</option>
                    <option value="CALL CENTER">CALL CENTER</option>
                    <option value="DEFENSORIA">DEFENSORIA</option>
                    <option value="EXTENSIONES">EXTENSIONES</option>
                    <option value="FORANEOS">FORANEOS</option>
                    <option value="GRABACION">GRABACION</option>
                    <option value="INFORMES">INFORMES</option>
                    <option value="MEDICINA LEGAL">MEDICINA LEGAL</option>
                    <option value="N/C">NO CONTESTO</option>
                    <option value="PROBLEMA COMUNICACIÓN">PROBLEMA COMUNICACIÓN</option>
                    <option value="TRANSPARENCIA">TRANSPARENCIA</option>
                    <option value="EXTENSION">EXTENSION</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="ext" class="form-label">Extensión:</label>
                <input type="text" id="ext" name="ext" class="form-control">
            </div>
            <div class="mb-3">
                <label for="observaciones" class="form-label">Observaciones:</label>
                <textarea id="observaciones" name="observaciones" class="form-control"></textarea>
            </div>
            <button type="submit" class="btn">Registrar</button>
        </form>
        <br>
        <a href="consulta.jsp" class="btn btn-secondary">Consultar Registros</a>
    </div>

    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <p>Elaborado por Jesús Arturo Cisneros Cantero para PROFEDET ext 44562</p>
            <p>Supervisado por Damian Martinez ext 44560</p>
        </div>
    </footer>
</body>
</html>
