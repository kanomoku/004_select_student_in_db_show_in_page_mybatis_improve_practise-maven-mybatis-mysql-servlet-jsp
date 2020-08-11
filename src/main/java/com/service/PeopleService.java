package com.service;

import java.io.IOException;
import java.util.List;

import com.pojo.People;

public interface PeopleService {
	List<People> show() throws IOException;

}
