USE smart_city;

DROP TABLE IF EXISTS traffic_nyc_final_api;

CREATE TABLE traffic_nyc_final_api (

Id INT AUTO_INCREMENT PRIMARY KEY,

area VARCHAR(50),

Latitude FLOAT,
Longitude FLOAT,

date DATE,
time TIME,

hour INT,
day_name VARCHAR(20),
month INT,

-- INCIDENTS
accident_count INT,
injured INT,
killed INT,
factor VARCHAR(200),

-- TRAFFIC
avg_speed FLOAT,
travel_time FLOAT,
congestion_level VARCHAR(20),

-- INFRASTRUCTURE
incident_reports INT,
signal_issue INT,
road_issue INT,
cctv_count INT,

peak_hour VARCHAR(10),
severity VARCHAR(20)
);
DROP VIEW  traffic_last_1_hour;

CREATE VIEW traffic_last_1_hour AS
SELECT *
FROM traffic_nyc_final_api
WHERE TIMESTAMP(date, time) >= NOW() - INTERVAL 1 HOUR;
select * from traffic_nyc_final_api;



CREATE VIEW traffic_live AS
SELECT *
FROM traffic_nyc_final_api
ORDER BY date DESC, time DESC
LIMIT 200;
SELECT COUNT(*) FROM traffic_live;
SELECT * FROM traffic_live;
DROP VIEW IF EXISTS traffic_live;
CREATE VIEW traffic_live AS
SELECT *
FROM traffic_nyc_final_api
ORDER BY date DESC, time DESC;
SELECT COUNT(*) FROM traffic_live;
select * from traffic_live;