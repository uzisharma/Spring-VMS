package com.jsp.mvc.vms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.mvc.vms.entity.Vehicle;
import com.jsp.mvc.vms.service.VehicleService;

@Controller
public class VehicleController {
	
	@Autowired
	private	VehicleService service;
	
	@RequestMapping(value = "/add-vehicle", method = RequestMethod.POST)
	public ModelAndView addVehicle(Vehicle vehicle) {		
		return service.addVehicle(vehicle);		
	}
	
	@RequestMapping(value="/displayAllVehicle", method = RequestMethod.GET)
	public ModelAndView displayAllVehicle() {
		return service.displayAllVehicle();
	}
	
	@RequestMapping(value = "/find-by-id", method = RequestMethod.GET)
	public ModelAndView findVehicleById(int id) {
		
		return service.findVehicleById(id);
	}
	@RequestMapping(value = "/update-vehicle", method = RequestMethod.POST)
	public ModelAndView updateVehicle(Vehicle vehicle) {
		return service.updateVehicle(vehicle);
	}
	
	
	
	@RequestMapping(value="/deleteVehicle", method = RequestMethod.GET)
	public ModelAndView deleteVehicle(int id) {
		return service.deleteVehicle(id);
	}
}
