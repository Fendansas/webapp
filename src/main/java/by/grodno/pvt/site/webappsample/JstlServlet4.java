package by.grodno.pvt.site.webappsample;

import by.grodno.pvt.site.webappsample.service.User;
import by.grodno.pvt.site.webappsample.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import static by.grodno.pvt.site.webappsample.service.UserService.getService;

public class JstlServlet4 extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        String parameter = req.getParameter("number");

        // UserService.setUserService();


    }
//Integer.valueOf(parameter

    //  https://metanit.com/java/javaee/5.3.php Сайт

    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        Integer id = Integer.parseInt(req.getParameter("number"));
        String firstName = req.getParameter("firstName");
        String lastName = req.getParameter("lastName");

        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyy-MM-dd");
        boolean male = Boolean.valueOf(req.getParameter("male"));
       // UserService.getService().cangeUser(user);
        resp.sendRedirect("/webappsample/jstl1");
//        String parameter = req.getParameter("number");
//        String name = req.getParameter("name");
//        int price = Integer.parseInt(req.getParameter(""));
//        User = new User(id, firstName, );
//        ProductDB.update(product);
//        response.sendRedirect(request.getContextPath() + "/index");
    }


}
