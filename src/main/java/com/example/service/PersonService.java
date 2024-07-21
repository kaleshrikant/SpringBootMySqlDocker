package com.example.service;

import com.example.entity.Persons;
import com.example.repository.PersonRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class PersonService {

    private final PersonRepository personRepository;

    public List<Persons> findAll() {
        return personRepository.findAll();
    }
}
