package com.jsp.mvc.vms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.mvc.vms.entity.Vehicle;
import com.jsp.mvc.vms.repository.VehicleRepository;

@Service
public class VehicleService {

	@Autowired
	private VehicleRepository repository;

	public ModelAndView addVehicle(Vehicle vehicle) {
		
		//resolve request
		repository.saveVehicle(vehicle);

		
		//generate the response
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index.jsp");
		return mav;
	}

	public ModelAndView displayAllVehicle() {
		// resolve request
		List<Vehicle> vehicleList=	repository.fetchAllVehicle();
				
		//generate the response
		ModelAndView mav = new ModelAndView();
		mav.setViewName("allVehicleList.jsp");
		mav.addObject("vehicleList",vehicleList);
		return mav;
	}

	public ModelAndView deleteVehicle(int id) {
		// resolve request
		repository.deleteVehicle(id);		
		
		//generate the response
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:displayAllVehicle");
		return mav;
	}

	public ModelAndView findVehicleById(int id) {
		//resolve the request
		Vehicle vehicle = repository.findVehicleById(id);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("updateVehicle.jsp");
		mav.addObject("vehicle", vehicle);
		return mav;
	}

	public ModelAndView updateVehicle(Vehicle vehicle) {
		//resolve the request
		repository.updateVehicle(vehicle);
		
		//generate the response
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect: displayAllVehicle");
		return mav;
	}

}
