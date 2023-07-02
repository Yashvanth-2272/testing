package com.hcl.cs;

import javax.xml.bind.JAXBException;
import javax.xml.bind.PropertyException;
import javax.xml.bind.ValidationEventHandler;
import javax.xml.bind.Validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;

import com.hcl.cs.Model.User;
import com.hcl.cs.Service.UserService;
@Component
public class UserValidator implements Validator{

	    @Autowired
	    private UserService userService;

		@Override
		public ValidationEventHandler getEventHandler() throws JAXBException {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public Object getProperty(String name) throws PropertyException {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public void setEventHandler(ValidationEventHandler handler) throws JAXBException {
			// TODO Auto-generated method stub
			
		}

		@Override
		public void setProperty(String arg0, Object arg1) throws PropertyException {
			// TODO Auto-generated method stub
			
		}

		@Override
		public boolean validate(Object subrootObj) throws JAXBException {
			// TODO Auto-generated method stub
			return false;
		}

		@Override
		public boolean validateRoot(Object rootObj) throws JAXBException {
			// TODO Auto-generated method stub
			return false;
		}

	    
	}



