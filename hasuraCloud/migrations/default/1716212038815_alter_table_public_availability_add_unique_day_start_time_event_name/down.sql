alter table "public"."availability" drop constraint "availability_day_start_time_event_name_key";
alter table "public"."availability" add constraint "availability_day_start_time_key" unique ("day", "start_time");
