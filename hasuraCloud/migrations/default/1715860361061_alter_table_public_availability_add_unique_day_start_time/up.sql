alter table "public"."availability" add constraint "availability_day_start_time_key" unique ("day", "start_time");
