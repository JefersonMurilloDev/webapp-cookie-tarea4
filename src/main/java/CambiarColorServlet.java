import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet(name = "CambiarColorServlet", value = "/cambiar-color")
public class CambiarColorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String colorSeleccionado = req.getParameter("color");

        if (colorSeleccionado != null && !colorSeleccionado.isBlank()){
            Cookie colorCookie = new Cookie("color", colorSeleccionado);

            colorCookie.setPath(req.getContextPath());
            colorCookie.setMaxAge(60 * 60 * 24 * 7);
            resp.addCookie(colorCookie);
            System.out.println("Cookie 'color' creada/actualizada con valor: " + colorSeleccionado);
        } else {
            System.out.println("No se recibió color válido. Intentando eliminar la cookie 'color'.");

            Cookie deteteCookie = new Cookie("color", "");
            deteteCookie.setPath(req.getContextPath());
            deteteCookie.setMaxAge(0);
            resp.addCookie(deteteCookie);
            System.out.println("Cookie de eliminación para 'color' enviada.");
        }

        resp.sendRedirect("index.jsp");
    }
}
