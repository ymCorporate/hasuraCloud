alter table "public"."bookedslots" alter column "start_time" drop not null;
alter table "public"."bookedslots" add column "start_time" time;
