CREATE OR REPLACE FUNCTION delete_availability_slot(day_of_week text, start_time_of_slot text)
RETURNS void AS $$
BEGIN
  DELETE FROM availability WHERE day = day_of_week AND start_time = start_time_of_slot;
END;
$$ LANGUAGE plpgsql;
