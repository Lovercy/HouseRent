package com.rent.service.person;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rent.dao.PersonMapper;
import com.rent.model.Person;

@Service("personService")
public class PersonService implements IPersonService {
	@Autowired
	private PersonMapper personMapper;
	
	@Override
	public int addPerson(Person person){
		return personMapper.insert(person);
	}

	public PersonMapper getPersonMapper() {
		return personMapper;
	}

	public void setPersonMapper(PersonMapper personMapper) {
		this.personMapper = personMapper;
	}
}
