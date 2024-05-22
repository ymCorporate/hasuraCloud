alter table "public"."availability"
  add constraint "availability_user_id_fkey"
  foreign key (user_id)
  references "public"."kalenview_owners"
  (uuid) on update restrict on delete restrict;
alter table "public"."availability" alter column "user_id" drop not null;
alter table "public"."availability" add column "user_id" uuid;
