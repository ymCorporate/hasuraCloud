CREATE OR REPLACE FUNCTION delete_availability_slots(day_of_week text, start_time_of_slot text)
RETURNS SETOF availability AS $$
BEGIN
  DELETE FROM availability WHERE day = day_of_week AND start_time = start_time_of_slot RETURNING *;
END;
$$ LANGUAGE plpgsql;
