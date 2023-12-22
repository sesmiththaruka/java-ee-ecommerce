package lk.verdana.ecom.config;

import org.glassfish.jersey.server.ResourceConfig;
import org.glassfish.jersey.server.mvc.jsp.JspMvcFeature;

public class AppConfig extends ResourceConfig {
    public AppConfig(){
        packages("lk.verdana.ecom.controller");
        packages("lk.verdana.ecom.middleware");
        register(DependencyBinder.class);
        register(JspMvcFeature.class);
        property(JspMvcFeature.TEMPLATE_BASE_PATH,"/WEB-INF/views");
    }
}
