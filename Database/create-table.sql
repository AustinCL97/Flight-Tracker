BEGIN TRANSACTION;


DROP TABLE IF EXISTS trip_flight;
DROP TABLE IF EXISTS flight;
DROP TABLE IF EXISTS trip;

CREATE TABLE trip(
	trip_id SERIAL PRIMARY KEY,
	trip_name VARCHAR(50)
	
);


CREATE TABLE flight(
	flight_id SERIAL PRIMARY KEY,
	flight_number VARCHAR(10) NOT NULL,
	destination VARCHAR(50) NOT NULL,
	airline VARCHAR(25) NOT NULL,
	departure_time VARCHAR(10),
	departure_date TIMESTAMP,
	expected_arrival_time VARCHAR(10),
	expected_arrival_date TIMESTAMP,
	estimated_arrival_time VARCHAR(10),
	estimated_arrival_date TIMESTAMP,
	status VARCHAR(25),
	airplane_type VARCHAR(25),
	cost MONEY
);

CREATE TABLE trip_flight(
	
	trip_id int REFERENCES trip(trip_id),
	flight_id int REFERENCES flight(flight_id),
	CONSTRAINT pk_trip_flight PRIMARY KEY (trip_id, flight_id)
	
);

COMMIT;