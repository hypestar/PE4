package dk.stacktrace.pe4.car_business;

import java.util.ArrayList;

import dk.stacktrace.pe4.db.DBAccess;

public class Controller {

	private DBAccess db;
	
	public Controller() {
		db = new DBAccess();
	}
	
	
	public Car getCarById(String carId)
	{
		return db.getCarById(carId);
	}
	
	public ArrayList<Car> getAllCars()
	{
		return db.getAllCars();
	}
	
	public void createCar(String modelNumber,
			              String make,
			              String model,
			              String type,
			              String modelManufacture,
			              int price,
			              int scale,
			              String color,
			              int weight,
			              String countryManufacture,
			              String countryProduction,
			              int productionYear)
	{
		db.createCar(modelNumber, make, model, type, modelManufacture, price, scale, color, weight, countryManufacture, countryProduction, productionYear);
	}
	
}
