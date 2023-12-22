package lk.verdana.ecom.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.Context;
import jakarta.ws.rs.core.MediaType;
import org.glassfish.jersey.server.mvc.Template;
import org.glassfish.jersey.server.mvc.Viewable;

@Path("/")
public class HomeController {
    @Context
    HttpServletRequest request;
    @GET
    public Viewable index(){
//        return new Viewable("/layout/base");
        return new Viewable("/frontend/index");
//        suffix ekak widiyta jsp kiyana eka add wenawa
        //prefix ekak widiyat webinf/views kiyana eka add we
    }

    @GET
    @Path("/restaurant/{categoryId}")
    @Produces(MediaType.TEXT_HTML)
    @Template(name = "/frontend/checkout")
    public Viewable singleProduct(@PathParam("categoryId") String categoryId) {
        System.out.println("okk");

        request.setAttribute("categoryId", categoryId);

        return new Viewable("/frontend/restaurant");

    }

}
