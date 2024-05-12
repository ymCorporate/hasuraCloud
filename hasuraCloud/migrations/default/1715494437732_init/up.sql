SET check_function_bodies = false;
CREATE TABLE public.friend (
    id integer NOT NULL,
    name text NOT NULL
);
CREATE SEQUENCE public.friend_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.friend_id_seq OWNED BY public.friend.id;
CREATE TABLE public.pizza (
    id integer NOT NULL,
    title integer NOT NULL
);
CREATE SEQUENCE public.pizza_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.pizza_id_seq OWNED BY public.pizza.id;
CREATE TABLE public.pizza_order (
    id integer NOT NULL,
    pizza_id integer NOT NULL,
    friend_id integer NOT NULL
);
CREATE SEQUENCE public.pizza_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.pizza_order_id_seq OWNED BY public.pizza_order.id;
CREATE TABLE public.pizza_topping (
    id integer NOT NULL,
    title text NOT NULL,
    available boolean NOT NULL,
    emoji text NOT NULL
);
CREATE SEQUENCE public.pizza_topping_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.pizza_topping_id_seq OWNED BY public.pizza_topping.id;
CREATE TABLE public.pizza_topping_pizza (
    id integer NOT NULL,
    pizza_id integer NOT NULL,
    pizza_topping_id integer NOT NULL
);
CREATE SEQUENCE public.pizza_topping_pizza_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.pizza_topping_pizza_id_seq OWNED BY public.pizza_topping_pizza.id;
CREATE TABLE public.table1 (
    id integer NOT NULL
);
ALTER TABLE ONLY public.friend ALTER COLUMN id SET DEFAULT nextval('public.friend_id_seq'::regclass);
ALTER TABLE ONLY public.pizza ALTER COLUMN id SET DEFAULT nextval('public.pizza_id_seq'::regclass);
ALTER TABLE ONLY public.pizza_order ALTER COLUMN id SET DEFAULT nextval('public.pizza_order_id_seq'::regclass);
ALTER TABLE ONLY public.pizza_topping ALTER COLUMN id SET DEFAULT nextval('public.pizza_topping_id_seq'::regclass);
ALTER TABLE ONLY public.pizza_topping_pizza ALTER COLUMN id SET DEFAULT nextval('public.pizza_topping_pizza_id_seq'::regclass);
ALTER TABLE ONLY public.friend
    ADD CONSTRAINT friend_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.pizza_order
    ADD CONSTRAINT pizza_order_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.pizza
    ADD CONSTRAINT pizza_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.pizza_topping_pizza
    ADD CONSTRAINT pizza_topping_pizza_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.pizza_topping
    ADD CONSTRAINT pizza_topping_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.table1
    ADD CONSTRAINT table1_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.pizza_order
    ADD CONSTRAINT pizza_order_friend_id_fkey FOREIGN KEY (friend_id) REFERENCES public.friend(id);
ALTER TABLE ONLY public.pizza_order
    ADD CONSTRAINT pizza_order_pizza_id_fkey FOREIGN KEY (pizza_id) REFERENCES public.pizza(id);
ALTER TABLE ONLY public.pizza_topping_pizza
    ADD CONSTRAINT pizza_topping_pizza_pizza_id_fkey FOREIGN KEY (pizza_id) REFERENCES public.pizza(id);
ALTER TABLE ONLY public.pizza_topping_pizza
    ADD CONSTRAINT pizza_topping_pizza_pizza_topping_id_fkey FOREIGN KEY (pizza_topping_id) REFERENCES public.pizza_topping(id);
