package com.lennox.oauth.config;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.support.SpringBootServletInitializer;

@SpringBootApplication
public class AuthorizationServerApplication extends SpringBootServletInitializer {

    public static void main(String[] args) {
        SpringApplication.run(AuthorizationServerApplication.class, args);
    }
    
//working endpoint for access token and refresh token
//http://localhost:8080/LennoxOauthServer/oauth/token?username=prakash1&password=123456&grant_type=password
    //give clientid and secret in basic authentication header
 
  //working endpoint for new access token using existing refresh token
//http://localhost:8080/LennoxOauthServer/oauth/token?grant_type=refresh_token&client_secret=secret&refresh_token=00ef3768-bb5d-4083-959e-69afd33b8a34
    
}