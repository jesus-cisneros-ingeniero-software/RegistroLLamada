<%@ page import="java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Consulta de Registros</title>
    <!-- Incluir Bootstrap desde CDN -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <!-- Incluir la hoja de estilos personalizada -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css">
    <!-- Incluir el ícono personalizado -->
    <link rel="icon" href="${pageContext.request.contextPath}/img/logo.ico" type="image/x-icon">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilo.css">
</head>
<body class="container">
    <h1 class="text-center my-4">Consulta de Registros</h1>
     <div class="text-center mt-4">
        <a href="index.jsp" class="btn btn-primary">Registrar Llamada</a>
    </div>
    <table class="table table-striped table-hover">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Fecha</th>
                <th>Hora</th>
                <th>Teléfono</th>
                <th>Subdirección</th>
                <th>Observaciones</th>
                <th>Ext</th>
            </tr>
        </thead>
        <tbody>
        <%
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/conmutador", "root", "pr0f3d3T2024#");

                String query = "SELECT * FROM registros ORDER BY 1 DESC";
                ps = con.prepareStatement(query);
                rs = ps.executeQuery();

                if (!rs.isBeforeFirst()) {
                    // No hay registros en la base de datos
                    out.println("<tr><td colspan='7' class='text-center'>No hay registros disponibles.</td></tr>");
                } else {
                    // Mostrar los registros en la tabla
                    while (rs.next()) {
                        int id = rs.getInt("id");
                        Date fecha = rs.getDate("fecha");
                        Time hora = rs.getTime("hora");
                        String telefono = rs.getString("telefono");
                        String subdireccion = rs.getString("subdireccion");
                        String observaciones = rs.getString("observaciones");
                        String ext = rs.getString("ext");

                        %>
                        <tr>
                            <td><%= id %></td>
                            <td><%= fecha %></td>
                            <td><%= hora %></td>
                            <td><%= telefono %></td>
                            <td><%= subdireccion %></td>
                            <td><%= observaciones %></td>
                            <td><%= ext %></td>
                        </tr>
                        <%
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
                out.println("<tr><td colspan='7' class='text-center'>Error al recuperar los registros.</td></tr>");
            } finally {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (con != null) con.close();
            }
        %>
        </tbody>
    </table>

   
</body>
</html>
