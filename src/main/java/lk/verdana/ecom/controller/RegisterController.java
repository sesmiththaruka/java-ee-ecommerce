package lk.verdana.ecom.controller;

import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import lk.verdana.ecom.dto.UserDTO;
import lk.verdana.ecom.entity.User;
import lk.verdana.ecom.mail.VerificationMail;
import lk.verdana.ecom.provider.MailServiceProvider;
import lk.verdana.ecom.service.UserService;
import lk.verdana.ecom.util.Encryption;
import org.glassfish.jersey.server.mvc.Viewable;

import java.util.UUID;

@Path("/register")
public class RegisterController {
    @GET
    public Viewable login() {
        return new Viewable("/frontend/signup");
    }

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response register(UserDTO userDTO) {
        UserService userService = new UserService();
        User byEmail = userService.getUserByEmail(userDTO.getEmail());

        if (byEmail != null) {
            return Response.status(Response.Status.BAD_REQUEST).entity("email already exists").build();
        } else {
            System.out.println(userDTO.getFirstName());
            User user = new User();
            user.setFirstName(userDTO.getFirstName());
            user.setLastName(userDTO.getLastName());
            user.setEmail(userDTO.getEmail());
//            user.setPassword(userDTO.getPassword());

            user.setPassword(Encryption.encrypt(userDTO.getPassword()));
            String verificationCode = UUID.randomUUID().toString();
            user.setVerification_code(verificationCode);

            userService.save(user);

            VerificationMail mail = new VerificationMail(user.getEmail(), verificationCode);
            MailServiceProvider.getInstance().sendMail(mail);

//            return Response.status(Response.Status.CREATED).entity("Register success").build();
            return Response.ok().entity("Register success").build(); //js patten gnna ona status code eka message eka neme

        }
    }
}
