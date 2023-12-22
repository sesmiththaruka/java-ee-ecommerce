package lk.verdana.ecom.config;

import jakarta.inject.Singleton;

import lk.verdana.ecom.service.CategoryService;
import lk.verdana.ecom.service.ProductService;
import lk.verdana.ecom.service.UserService;
import org.glassfish.hk2.utilities.binding.AbstractBinder;

public class DependencyBinder extends AbstractBinder {

    @Override
    protected void configure() {
        bind(CategoryService.class).to(CategoryService.class).in(Singleton.class);
        bind(ProductService.class).to(ProductService.class).in(Singleton.class);
        bind(UserService.class).to(UserService.class).in(Singleton.class);

    }
}
