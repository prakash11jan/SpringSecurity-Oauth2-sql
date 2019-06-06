package com.lennox.web.controller;

import static org.apache.commons.lang3.RandomStringUtils.randomAlphabetic;
import static org.apache.commons.lang3.RandomStringUtils.randomNumeric;

import org.springframework.http.HttpStatus;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.lennox.web.dto.Card;

@Controller
public class MobileAPIController {

    public MobileAPIController() {
        super();
    }

    // API - read
    @PreAuthorize("#oauth2.hasScope('checkout') and #oauth2.hasScope('read')")
    @RequestMapping(method = RequestMethod.GET, value = "/cards/{id}")
    @ResponseBody
    public Card getCard(@PathVariable final long id) {
        return new Card(Long.parseLong(randomNumeric(2)), randomAlphabetic(4));
    }

    // API - write
    @PreAuthorize("#oauth2.hasScope('checkout') and #oauth2.hasScope('write')")
    @RequestMapping(method = RequestMethod.POST, value = "/cards/add")
    @ResponseStatus(HttpStatus.CREATED)
    @ResponseBody
    public Card createCard(@RequestBody final Card card) {
        card.setId(Long.parseLong(randomNumeric(2)));
        return card;
    }
    
    @PreAuthorize("#oauth2.hasScope('checkout') and #oauth2.hasScope('write') and hasRole('ROLE_ADMIN')")
    @RequestMapping(method = RequestMethod.POST, value = "/cards/delete/{id}")
    @ResponseStatus(HttpStatus.CREATED)
    @ResponseBody
    public Card deleteCard(@PathVariable final long id) {
    	return new Card(Long.parseLong(randomNumeric(2)), randomAlphabetic(4));
    }

}
