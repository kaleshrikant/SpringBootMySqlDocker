package com.example.controller;

import com.example.entity.Persons;
import com.example.service.PersonService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@CrossOrigin("*")
@RequiredArgsConstructor
public class BasicController {

    private final PersonService personService;

    @GetMapping("/all")
    public List<Persons> getAll() {
        return personService.findAll();
    }

}
