package comutador;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author JCISNEROS
 */

@WebServlet(name = "RegistroServlet", urlPatterns = {"/RegistroServlet"})
public class RegistroServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fecha = request.getParameter("fecha");
        String hora = request.getParameter("hora");
        String telefono = request.getParameter("telefono");
        String subdireccion = request.getParameter("subdireccion");
        String observaciones = request.getParameter("observaciones");
        String ext = request.getParameter("ext");

        try {
            // Conexión a la base de datos
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/conmutador", "root", "pr0f3d3T2024#");

            // Insertar datos
            String query = "INSERT INTO registros (fecha, hora, telefono, subdireccion, observaciones, createdAt, updatedAt, ext) VALUES (?, ?, ?, ?, ?, NOW(), NOW(), ?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, fecha);
            ps.setString(2, hora);
            ps.setString(3, telefono);
            ps.setString(4, subdireccion);
            ps.setString(5, observaciones);
            ps.setString(6, ext);

            ps.executeUpdate();
            con.close();
            response.sendRedirect("index.jsp?status=success");
        } catch (Exception e) {
            e.printStackTrace(); // Añadir esta línea para ayudar con la depuración
            response.sendRedirect("index.jsp?status=error");
        }
    }
   
}
