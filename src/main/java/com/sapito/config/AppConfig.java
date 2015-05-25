/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sapito.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

/**
 *
 * @author giovanni
 */
@EnableWebMvc
@Configuration
//@ComponentScan({"com.sapito.*"})
@Import({ SecurityConfig.class })
public class AppConfig
{
    
}
