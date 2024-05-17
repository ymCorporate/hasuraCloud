alter table "public"."availability" alter column "end_time" drop not null;
alter table "public"."availability" add column "end_time" time;
