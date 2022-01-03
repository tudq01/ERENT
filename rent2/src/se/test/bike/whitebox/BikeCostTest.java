package se.test.bike.whitebox;

import static org.junit.jupiter.api.Assertions.assertEquals;


import org.junit.jupiter.api.Test;

import se.project.model.bike.BikeFactory;
import se.project.model.bike.BikeType;


public class BikeCostTest {

	private int time;
	private BikeType bike;

	@Test
	void testBikeCost1() {
		time = 70;
		bike = BikeFactory.getBike("Bike");
		assertEquals(19000, bike.calTotalCost(time));
	}

	@Test
	void testBikeCost2() {
		time = 30;
		bike = BikeFactory.getBike("Bike");
		assertEquals(10000, bike.calTotalCost(time));
	}

	@Test
	void testEBikeCost1() {
		time = 70;
		bike = BikeFactory.getBike("ElectricBike");
		assertEquals(28500, bike.calTotalCost(time));
	}

	@Test
	void testEBikeCost2() {
		time = 30;
		bike = BikeFactory.getBike("ElectricBike");
		assertEquals(15000, bike.calTotalCost(time));
	}

	@Test
	void testTwinBikeCost1() {
		time = 70;
		bike = BikeFactory.getBike("TwinBike");
		assertEquals(28500, bike.calTotalCost(time));
	}

	@Test
	void testTwinBikeCost2() {
		time = 30;
		bike = BikeFactory.getBike("TwinBike");
		assertEquals(15000, bike.calTotalCost(time));
	}
}
