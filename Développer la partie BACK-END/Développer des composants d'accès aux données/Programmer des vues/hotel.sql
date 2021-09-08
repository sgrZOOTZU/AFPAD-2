CREATE VIEW v_hotel_station
AS
SELECT hot_id, hot_sta_id, hot_nom, hot_categorie, hot_adresse, hot_ville, sta_id, sta_nom, sta_altitude
FROM hotel
JOIN station
ON sta_id = hot_sta_id