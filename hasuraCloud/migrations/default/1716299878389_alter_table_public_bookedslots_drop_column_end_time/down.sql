alter table "public"."bookedslots" alter column "end_time" drop not null;
alter table "public"."bookedslots" add column "end_time" time;
