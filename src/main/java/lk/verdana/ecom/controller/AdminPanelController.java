package lk.verdana.ecom.controller;

import jakarta.inject.Inject;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.Context;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import lk.verdana.ecom.dto.CategoryDTO;
import lk.verdana.ecom.dto.ProductDTO;
import lk.verdana.ecom.entity.Category;
import lk.verdana.ecom.entity.Product;
import lk.verdana.ecom.entity.User;
import lk.verdana.ecom.service.CategoryService;
import lk.verdana.ecom.service.ProductService;
import lk.verdana.ecom.util.HibernateUtil;
import org.glassfish.jersey.server.mvc.Template;
import org.glassfish.jersey.server.mvc.Viewable;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

@Path("/adminpanel")
public class AdminPanelController {
    @Inject
    private CategoryService categoryService;
    @Context
    HttpServletRequest request;

    @GET
    public Viewable loadPanel(){
        return new Viewable("/backend/index");
    }
    @GET
    @Path("/product")
    public Viewable loadProduct(){
        return new Viewable("/backend/products");
    }
    @GET
    @Path("/addproduct")
    public Viewable loadAddProduct(){
        return new Viewable("/backend/addproduct");
    }

    @GET
    @Path("/addcategory")
    public Viewable loadAddCategory(){
        return new Viewable("/backend/addcategory");
    }

    @POST
    @Path("/addproductprocess")
    public Response addProductProcess(ProductDTO productDTO){
        System.out.println("request come");
        String id = productDTO.getCategory();

        //
        Category cat = categoryService.getCategoryByCategoryId(id);

        //
        ProductService productService = new ProductService();
        Product product = new Product();
        product.setName(productDTO.getName());
        product.setCategory(cat);
        product.setPrice(productDTO.getPrice());
        product.setDescription(productDTO.getDescription());
        System.out.println(productDTO.getCategory());
        productService.save(product);

        return Response.ok().entity("Register success..").build();
    }

    @POST
    @Path("/deletselectproductprocess")
    public Response deleteslectProductProcess(ProductDTO productDTO){
        System.out.println("delete select product request come");
        int id = productDTO.getId();

        //


        //
        ProductService productService = new ProductService();
        Product product = new Product();
        product.setId(id);

        productService.delete(product);

        return Response.ok().entity("deleted").build();
    }

    @POST
    @Path("/deletproductprocess")
    public Response deleteProductProcess(CategoryDTO categoryDTO){
        System.out.println("delete product request come");
        int id = categoryDTO.getId();

        //


        //
        CategoryService categoryService1 = new CategoryService();
        Category category = new Category();
        category.setId(id);

        categoryService1.delete(category);

        return Response.ok().entity("deleted").build();
    }

    @GET
    @Path("/editproduct/{productId}")
    @Produces(MediaType.TEXT_HTML)
    @Template(name = "/backend/editproduct")
    public Viewable singleProduct(@PathParam("productId") String productId) {
        System.out.println("okk");

        request.setAttribute("productId", productId);

        return new Viewable("/backend/editproduct");

    }

    @POST
    @Path("/updateproductprocess")
    public Response updateProductProcess(ProductDTO productDTO){
        System.out.println("request update come");
        String id = productDTO.getCategory();

        //
        Category cat = categoryService.getCategoryByCategoryId(id);

        //
        ProductService productService = new ProductService();
        Product product = new Product();
        product.setId(productDTO.getId());
        product.setName(productDTO.getName());
        product.setCategory(cat);
        product.setPrice(productDTO.getPrice());
        product.setDescription(productDTO.getDescription());
        System.out.println(productDTO.getCategory());
        productService.update(product);
        return Response.status(Response.Status.ACCEPTED).entity("updated").build();

    }

    @POST
    @Path("/addcategoryprocess")
    public Response addCategoryProcess(CategoryDTO categoryDTO){
        System.out.println("request come");
        CategoryService categoryService1 = new CategoryService();
        Category category = new Category();
        category.setName(categoryDTO.getName());
        categoryService1.save(category);

        return Response.ok().entity("Register success..").build();
    }


}
