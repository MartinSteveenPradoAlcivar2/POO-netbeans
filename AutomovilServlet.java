package controller;

import service.AutomovilService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "AutomovilServlet", urlPatterns = {"/AutomovilServlet"})
public class AutomovilServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        AutomovilService service = new AutomovilService();
        
        // Enviamos los mapas a la vista JSP
        request.setAttribute("hashMap", service.getHashMap());
        request.setAttribute("linkedHashMap", service.getLinkedHashMap());
        request.setAttribute("treeMap", service.getTreeMap());
        
        // Redirigir a la página JSP
        request.getRequestDispatcher("listarAutos.jsp").forward(request, response);
    }
}