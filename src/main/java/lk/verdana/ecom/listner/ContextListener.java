package lk.verdana.ecom.listner;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;
import lk.verdana.ecom.provider.MailServiceProvider;
import lk.verdana.ecom.util.Env;

@WebListener
public class ContextListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext context = sce.getServletContext();
        context.setAttribute("BASE_URL", context.getContextPath() + "/");
        Env.getProperties().put("app_url","http://localhost:8080"+context.getContextPath());
        System.out.println("context initialized");
        MailServiceProvider.getInstance().start();
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        MailServiceProvider.getInstance().shutdown();
    }
}
