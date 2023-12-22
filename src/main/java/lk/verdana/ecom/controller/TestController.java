package lk.verdana.ecom.controller;

import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import lk.verdana.ecom.dto.NumberDTO;
import org.apache.commons.lang3.Range;
import org.glassfish.jersey.server.mvc.Viewable;

@Path("/test")
public class TestController {
    @GET
    public Viewable gotoTest(){
        return new Viewable("/frontend/test");
    }

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response number(NumberDTO numberDTO){
        int number = numberDTO.getNumber();

        int number1 = numberDTO.getNumber1();
        int number2 = numberDTO.getNumber2();
//        Range<Integer> range = Range.between(number1, number2);
//        System.out.println(range);

        System.out.println(number1);
        System.out.println(number2);
//        for(int i =number1 ; number1<=number2; i++){
//            System.out.println(i);
//        }
        String value;
        if (number %2== 1){
            value ="odd";
        }else {
            value = "even";

        }
         return Response.status(Response.Status.CREATED).entity(value).build();
    }
}
