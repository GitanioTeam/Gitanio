package br.ufg.inf;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestBuilders;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.RequestPostProcessor;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import javax.servlet.Filter;

import static org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestPostProcessors.httpBasic;
import static org.springframework.security.test.web.servlet.response.SecurityMockMvcResultMatchers.authenticated;
import static org.springframework.security.test.web.servlet.response.SecurityMockMvcResultMatchers.unauthenticated;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = GitanioApplication.class)
@WebAppConfiguration
public class SpringSecurityAuthenticationTests {

    @Autowired
    private WebApplicationContext context;

    @Autowired
    private Filter springSecurityFilterChain;

    private MockMvc mvc;

    @Before
    public void setup() {
        mvc = MockMvcBuilders
            .webAppContextSetup(context)
            .addFilters(springSecurityFilterChain)
            .build();
    }

    @Test
    public void apiSecurity() throws Exception {
        mvc
            .perform(get("/api").with(httpBasicAuthenticationValid()))
            .andExpect(authenticated());
    }

    @Test
    public void apiSecurityProdutos() throws Exception {
        mvc
            .perform(get("/api/produtos").with(httpBasicAuthenticationValid()))
            .andExpect(authenticated());
    }

    @Test
    public void apiSecurityProdutosInvalid() throws Exception {
        mvc
            .perform(get("/api/produtos").with(httpBasicAuthenticationInvalid()))
            .andExpect(unauthenticated());
    }

    @Test
    public void apiSecurityCategoria() throws Exception {
        mvc
            .perform(get("/api/categorias").with(httpBasicAuthenticationValid()))
            .andExpect(authenticated());
    }

    @Test
    public void apiSecurityCategoriaInvalid() throws Exception {
        mvc
            .perform(get("/api/categorias").with(httpBasicAuthenticationInvalid()))
            .andExpect(unauthenticated());
    }

    @Test
    public void validLoginCheck() throws Exception {
        mvc.perform(login().user("user").password("password"))
            .andExpect(authenticated())
            .andExpect(status().isFound())
            .andExpect(redirectedUrl("/"));
    }

    @Test
    public void invalidLoginCheck() throws Exception {
        mvc.perform(login().user("user2").password("password"))
            .andExpect(unauthenticated())
            .andExpect(redirectedUrl("/login?error"));
    }

    private SecurityMockMvcRequestBuilders.FormLoginRequestBuilder login(){
        return SecurityMockMvcRequestBuilders
            .formLogin("/login");
    }
    private RequestPostProcessor httpBasicAuthenticationValid(){
        return httpBasic("user", "password");
    }

    private RequestPostProcessor httpBasicAuthenticationInvalid(){
        return httpBasic("notUser", "password");
    }

}
