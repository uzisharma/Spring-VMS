package com.jsp.mvc.vms.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import com.jsp.mvc.vms.entity.Vehicle;

@Repository
public class VehicleRepository {
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("mysql-config");

	public void saveVehicle(Vehicle vehicle) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();

		em.persist(vehicle);
		et.commit();
		em.close();

	}

	public List<Vehicle> fetchAllVehicle() {
		EntityManager em = emf.createEntityManager();
		
		TypedQuery<Vehicle> query = em.createQuery("FROM Vehicle", Vehicle.class);
		
		List<Vehicle> vehicleList=	query.getResultList();
		return vehicleList;
		
	}

	public void deleteVehicle(int id) {
		// TODO Auto-generated method stub
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		Vehicle vehicle = em.find(Vehicle.class, id);
		
		System.out.println(vehicle);
		et.begin();
		em.remove(vehicle);		
		et.commit();
		em.close();
				
	}

	public Vehicle findVehicleById(int id) {
		EntityManager em = emf.createEntityManager();
		Vehicle vehicle = (Vehicle)	em.find(Vehicle.class, id);
		return vehicle;
	}

	public void updateVehicle(Vehicle vehicle) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		
		et.begin();
		em.merge(vehicle);
		et.commit();
		em.close();
	}

}
