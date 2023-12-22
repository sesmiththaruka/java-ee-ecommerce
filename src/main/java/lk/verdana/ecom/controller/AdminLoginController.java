package lk.verdana.ecom.controller;

import jakarta.persistence.NoResultException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.Context;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import lk.verdana.ecom.dto.UserDTO;
import lk.verdana.ecom.entity.User;
import lk.verdana.ecom.entity.UserType;
import lk.verdana.ecom.util.HibernateUtil;
import org.glassfish.jersey.server.mvc.Viewable;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

@Path("/admin")
public class AdminLoginController {

    @Context
    HttpServletRequest request;

    @GET
    public Viewable login() {
        return new Viewable("/backend/login");
    }



    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response loginProcess(UserDTO userDTO){
        String email = userDTO.getEmail();
        String password = userDTO.getPassword();
        UserType userType = UserType.ADMIN;

        if(email.isEmpty()){
            return Response.status(Response.Status.BAD_REQUEST).entity("Please Enter Email").build();
        } else if (password.isEmpty() ) {
            return Response.status(Response.Status.BAD_REQUEST).entity("Please Enter password").build();
        }else {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            Session session = sessionFactory.openSession();

            Query<User> query = session.createQuery("select u from User u where u.email=:email and u.password=:password and u.userType=:userType", User.class);
            query.setParameter("email", email);
            query.setParameter("password", password);
            query.setParameter("userType", userType);


            try {
                User user = query.getSingleResult();
                if (user != null) {
//                    System.out.println(user.getEmail());
                    HttpSession httpSession = request.getSession();
                    httpSession.setAttribute("admin",user.getEmail());
                    httpSession.setAttribute("adminfirstname",user.getFirstName());
                    return Response.status(Response.Status.ACCEPTED).entity("login success").build();
                }else{

                    return Response.status(Response.Status.BAD_REQUEST).entity("Invalid login details").build();
                }
            }catch (NoResultException e){
                return Response.status(Response.Status.BAD_REQUEST).build();
            }

        }


    }


}
