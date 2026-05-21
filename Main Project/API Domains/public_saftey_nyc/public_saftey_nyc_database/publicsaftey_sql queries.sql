use smart_city;
drop table public_safety_nyc;
CREATE DATABASE IF NOT EXISTS smart_city;
USE smart_city;



CREATE TABLE public_safety_nyc (
    Id INT AUTO_INCREMENT PRIMARY KEY,

    Complaint_id BIGINT,
    Complaint_date DATE,
    Complaint_time TIME,

    Crime_type VARCHAR(100),
    Crime_category VARCHAR(100),

    Description VARCHAR(255),

    borough VARCHAR(50),
    incident_address VARCHAR(255),
    city VARCHAR(100),
    zipcode VARCHAR(20),
    latitude DOUBLE,
    longitude DOUBLE,

    assigned_department VARCHAR(100),

    response_time_minutes INT,

    case_priority VARCHAR(20),

    arrest_made BOOLEAN,
    number_of_arrests INT,

    status VARCHAR(50),
    closed_date DATE,
    closed_time TIME,

    year INT,
    month INT,
    day INT,
    hour INT,
    weekday_name VARCHAR(20),
    weekend_flag BOOLEAN
);
select *from public_safety_nyc;

