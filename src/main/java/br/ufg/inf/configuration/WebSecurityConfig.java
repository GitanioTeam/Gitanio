package br.ufg.inf.configuration;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    /*@Bean
    public UserDetailsService userDetailsService(){
        return null;
    }*/

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        // Realmente deveria mudar todos os JS/CSS para uma pasta public...
        http.authorizeRequests().antMatchers("/api/**").authenticated().and().httpBasic().and().csrf().disable();
        http.authorizeRequests()
            //.antMatchers("/api/**").authenticated()
            .antMatchers("/css/**", "/js/**", "/imagens/**", "/fonts/**", "/recuperaConta").permitAll()
            .anyRequest().authenticated()
            .and()
            .formLogin().loginPage("/login").permitAll().defaultSuccessUrl("/")
            .and()
            .logout().permitAll()
            .and()
            .csrf().disable();
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth
            .inMemoryAuthentication()
            .withUser("user").password("password").roles("USER");
    }

}
