alter table "public"."availability"
  add constraint "availability_user_id_fkey"
  foreign key ("user_id")
  references "public"."kalenview"
  ("uuid") on update restrict on delete restrict;
