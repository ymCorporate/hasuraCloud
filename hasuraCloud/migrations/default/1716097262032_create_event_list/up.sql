CREATE TABLE kalenview_create_events (
  event_name text PRIMARY KEY,
  duration integer NOT NULL,
  location_type text NOT NULL,
  location_detail text,
  created_at timestamp with time zone DEFAULT now() NOT NULL
);
