alter table "public"."availability" alter column "start_time" drop not null;
alter table "public"."availability" add column "start_time" time;
