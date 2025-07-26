--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: account_emailaddress; Type: TABLE; Schema: public; Owner: d5hw_user
--

CREATE TABLE public.account_emailaddress (
    id bigint NOT NULL,
    verified boolean,
    "primary" boolean,
    user_id bigint,
    email text
);


ALTER TABLE public.account_emailaddress OWNER TO d5hw_user;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE; Schema: public; Owner: d5hw_user
--

CREATE SEQUENCE public.account_emailaddress_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.account_emailaddress_id_seq OWNER TO d5hw_user;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: d5hw_user
--

ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;


--
-- Name: account_emailconfirmation; Type: TABLE; Schema: public; Owner: d5hw_user
--

CREATE TABLE public.account_emailconfirmation (
    id bigint NOT NULL,
    created timestamp with time zone,
    sent timestamp with time zone,
    key text,
    email_address_id bigint
);


ALTER TABLE public.account_emailconfirmation OWNER TO d5hw_user;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE; Schema: public; Owner: d5hw_user
--

CREATE SEQUENCE public.account_emailconfirmation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNER TO d5hw_user;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: d5hw_user
--

ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: d5hw_user
--

CREATE TABLE public.auth_group (
    id bigint NOT NULL,
    name text
);


ALTER TABLE public.auth_group OWNER TO d5hw_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: d5hw_user
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_group_id_seq OWNER TO d5hw_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: d5hw_user
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: d5hw_user
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id bigint,
    permission_id bigint
);


ALTER TABLE public.auth_group_permissions OWNER TO d5hw_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: d5hw_user
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_group_permissions_id_seq OWNER TO d5hw_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: d5hw_user
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: d5hw_user
--

CREATE TABLE public.auth_permission (
    id bigint NOT NULL,
    content_type_id bigint,
    codename text,
    name text
);


ALTER TABLE public.auth_permission OWNER TO d5hw_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: d5hw_user
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_permission_id_seq OWNER TO d5hw_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: d5hw_user
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: d5hw_user
--

CREATE TABLE public.auth_user (
    id bigint NOT NULL,
    password text,
    last_login timestamp with time zone,
    is_superuser boolean,
    username text,
    last_name text,
    email text,
    is_staff boolean,
    is_active boolean,
    date_joined timestamp with time zone,
    first_name text
);


ALTER TABLE public.auth_user OWNER TO d5hw_user;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: d5hw_user
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id bigint,
    group_id bigint
);


ALTER TABLE public.auth_user_groups OWNER TO d5hw_user;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: d5hw_user
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_user_groups_id_seq OWNER TO d5hw_user;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: d5hw_user
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: d5hw_user
--

CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_user_id_seq OWNER TO d5hw_user;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: d5hw_user
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: d5hw_user
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id bigint,
    permission_id bigint
);


ALTER TABLE public.auth_user_user_permissions OWNER TO d5hw_user;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: d5hw_user
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNER TO d5hw_user;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: d5hw_user
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: d5hw_user
--

CREATE TABLE public.django_admin_log (
    id bigint NOT NULL,
    object_id text,
    object_repr text,
    action_flag smallint,
    change_message text,
    content_type_id bigint,
    user_id bigint,
    action_time timestamp with time zone
);


ALTER TABLE public.django_admin_log OWNER TO d5hw_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: d5hw_user
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_admin_log_id_seq OWNER TO d5hw_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: d5hw_user
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: d5hw_user
--

CREATE TABLE public.django_content_type (
    id bigint NOT NULL,
    app_label text,
    model text
);


ALTER TABLE public.django_content_type OWNER TO d5hw_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: d5hw_user
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_content_type_id_seq OWNER TO d5hw_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: d5hw_user
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_flatpage; Type: TABLE; Schema: public; Owner: d5hw_user
--

CREATE TABLE public.django_flatpage (
    id bigint NOT NULL,
    url text,
    title text,
    content text,
    enable_comments boolean,
    template_name text,
    registration_required boolean
);


ALTER TABLE public.django_flatpage OWNER TO d5hw_user;

--
-- Name: django_flatpage_id_seq; Type: SEQUENCE; Schema: public; Owner: d5hw_user
--

CREATE SEQUENCE public.django_flatpage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_flatpage_id_seq OWNER TO d5hw_user;

--
-- Name: django_flatpage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: d5hw_user
--

ALTER SEQUENCE public.django_flatpage_id_seq OWNED BY public.django_flatpage.id;


--
-- Name: django_flatpage_sites; Type: TABLE; Schema: public; Owner: d5hw_user
--

CREATE TABLE public.django_flatpage_sites (
    id bigint NOT NULL,
    flatpage_id bigint,
    site_id bigint
);


ALTER TABLE public.django_flatpage_sites OWNER TO d5hw_user;

--
-- Name: django_flatpage_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: d5hw_user
--

CREATE SEQUENCE public.django_flatpage_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_flatpage_sites_id_seq OWNER TO d5hw_user;

--
-- Name: django_flatpage_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: d5hw_user
--

ALTER SEQUENCE public.django_flatpage_sites_id_seq OWNED BY public.django_flatpage_sites.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: d5hw_user
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app text,
    name text,
    applied timestamp with time zone
);


ALTER TABLE public.django_migrations OWNER TO d5hw_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: d5hw_user
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_migrations_id_seq OWNER TO d5hw_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: d5hw_user
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: d5hw_user
--

CREATE TABLE public.django_session (
    session_key text NOT NULL,
    session_data text,
    expire_date timestamp with time zone
);


ALTER TABLE public.django_session OWNER TO d5hw_user;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: d5hw_user
--

CREATE TABLE public.django_site (
    id bigint NOT NULL,
    name text,
    domain text
);


ALTER TABLE public.django_site OWNER TO d5hw_user;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: d5hw_user
--

CREATE SEQUENCE public.django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_site_id_seq OWNER TO d5hw_user;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: d5hw_user
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- Name: news_author; Type: TABLE; Schema: public; Owner: d5hw_user
--

CREATE TABLE public.news_author (
    id bigint NOT NULL,
    authoruser_id bigint,
    ratingauthor bigint
);


ALTER TABLE public.news_author OWNER TO d5hw_user;

--
-- Name: news_author_id_seq; Type: SEQUENCE; Schema: public; Owner: d5hw_user
--

CREATE SEQUENCE public.news_author_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.news_author_id_seq OWNER TO d5hw_user;

--
-- Name: news_author_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: d5hw_user
--

ALTER SEQUENCE public.news_author_id_seq OWNED BY public.news_author.id;


--
-- Name: news_category; Type: TABLE; Schema: public; Owner: d5hw_user
--

CREATE TABLE public.news_category (
    id bigint NOT NULL,
    name text
);


ALTER TABLE public.news_category OWNER TO d5hw_user;

--
-- Name: news_category_id_seq; Type: SEQUENCE; Schema: public; Owner: d5hw_user
--

CREATE SEQUENCE public.news_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.news_category_id_seq OWNER TO d5hw_user;

--
-- Name: news_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: d5hw_user
--

ALTER SEQUENCE public.news_category_id_seq OWNED BY public.news_category.id;


--
-- Name: news_comment; Type: TABLE; Schema: public; Owner: d5hw_user
--

CREATE TABLE public.news_comment (
    id bigint NOT NULL,
    commenttext text,
    time_in_comment timestamp with time zone,
    commentpost_id bigint,
    commentuser_id bigint,
    rating bigint
);


ALTER TABLE public.news_comment OWNER TO d5hw_user;

--
-- Name: news_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: d5hw_user
--

CREATE SEQUENCE public.news_comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.news_comment_id_seq OWNER TO d5hw_user;

--
-- Name: news_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: d5hw_user
--

ALTER SEQUENCE public.news_comment_id_seq OWNED BY public.news_comment.id;


--
-- Name: news_post; Type: TABLE; Schema: public; Owner: d5hw_user
--

CREATE TABLE public.news_post (
    id bigint NOT NULL,
    categorytype text,
    time_in_post timestamp with time zone,
    time_out timestamp with time zone,
    text text,
    postauthor_id bigint,
    title text,
    rating bigint
);


ALTER TABLE public.news_post OWNER TO d5hw_user;

--
-- Name: news_post_id_seq; Type: SEQUENCE; Schema: public; Owner: d5hw_user
--

CREATE SEQUENCE public.news_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.news_post_id_seq OWNER TO d5hw_user;

--
-- Name: news_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: d5hw_user
--

ALTER SEQUENCE public.news_post_id_seq OWNED BY public.news_post.id;


--
-- Name: news_postcategory; Type: TABLE; Schema: public; Owner: d5hw_user
--

CREATE TABLE public.news_postcategory (
    id bigint NOT NULL,
    categorythrough_id bigint,
    postthrough_id bigint
);


ALTER TABLE public.news_postcategory OWNER TO d5hw_user;

--
-- Name: news_postcategory_id_seq; Type: SEQUENCE; Schema: public; Owner: d5hw_user
--

CREATE SEQUENCE public.news_postcategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.news_postcategory_id_seq OWNER TO d5hw_user;

--
-- Name: news_postcategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: d5hw_user
--

ALTER SEQUENCE public.news_postcategory_id_seq OWNED BY public.news_postcategory.id;


--
-- Name: socialaccount_socialaccount; Type: TABLE; Schema: public; Owner: d5hw_user
--

CREATE TABLE public.socialaccount_socialaccount (
    id bigint NOT NULL,
    provider character varying(200),
    uid text,
    last_login timestamp with time zone,
    date_joined timestamp with time zone,
    extra_data jsonb,
    user_id bigint
);


ALTER TABLE public.socialaccount_socialaccount OWNER TO d5hw_user;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE; Schema: public; Owner: d5hw_user
--

CREATE SEQUENCE public.socialaccount_socialaccount_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNER TO d5hw_user;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: d5hw_user
--

ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNED BY public.socialaccount_socialaccount.id;


--
-- Name: socialaccount_socialapp; Type: TABLE; Schema: public; Owner: d5hw_user
--

CREATE TABLE public.socialaccount_socialapp (
    id bigint NOT NULL,
    provider text,
    name text,
    client_id text,
    key text,
    secret text,
    provider_id character varying(200) NOT NULL,
    settings jsonb NOT NULL
);


ALTER TABLE public.socialaccount_socialapp OWNER TO d5hw_user;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE; Schema: public; Owner: d5hw_user
--

CREATE SEQUENCE public.socialaccount_socialapp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNER TO d5hw_user;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: d5hw_user
--

ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNED BY public.socialaccount_socialapp.id;


--
-- Name: socialaccount_socialapp_sites; Type: TABLE; Schema: public; Owner: d5hw_user
--

CREATE TABLE public.socialaccount_socialapp_sites (
    id bigint NOT NULL,
    socialapp_id bigint,
    site_id bigint
);


ALTER TABLE public.socialaccount_socialapp_sites OWNER TO d5hw_user;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: d5hw_user
--

CREATE SEQUENCE public.socialaccount_socialapp_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.socialaccount_socialapp_sites_id_seq OWNER TO d5hw_user;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: d5hw_user
--

ALTER SEQUENCE public.socialaccount_socialapp_sites_id_seq OWNED BY public.socialaccount_socialapp_sites.id;


--
-- Name: socialaccount_socialtoken; Type: TABLE; Schema: public; Owner: d5hw_user
--

CREATE TABLE public.socialaccount_socialtoken (
    id bigint NOT NULL,
    token text,
    token_secret text,
    expires_at timestamp with time zone,
    account_id bigint,
    app_id bigint
);


ALTER TABLE public.socialaccount_socialtoken OWNER TO d5hw_user;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: d5hw_user
--

CREATE SEQUENCE public.socialaccount_socialtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNER TO d5hw_user;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: d5hw_user
--

ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNED BY public.socialaccount_socialtoken.id;


--
-- Name: account_emailaddress id; Type: DEFAULT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);


--
-- Name: account_emailconfirmation id; Type: DEFAULT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_flatpage id; Type: DEFAULT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.django_flatpage ALTER COLUMN id SET DEFAULT nextval('public.django_flatpage_id_seq'::regclass);


--
-- Name: django_flatpage_sites id; Type: DEFAULT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.django_flatpage_sites ALTER COLUMN id SET DEFAULT nextval('public.django_flatpage_sites_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- Name: news_author id; Type: DEFAULT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.news_author ALTER COLUMN id SET DEFAULT nextval('public.news_author_id_seq'::regclass);


--
-- Name: news_category id; Type: DEFAULT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.news_category ALTER COLUMN id SET DEFAULT nextval('public.news_category_id_seq'::regclass);


--
-- Name: news_comment id; Type: DEFAULT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.news_comment ALTER COLUMN id SET DEFAULT nextval('public.news_comment_id_seq'::regclass);


--
-- Name: news_post id; Type: DEFAULT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.news_post ALTER COLUMN id SET DEFAULT nextval('public.news_post_id_seq'::regclass);


--
-- Name: news_postcategory id; Type: DEFAULT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.news_postcategory ALTER COLUMN id SET DEFAULT nextval('public.news_postcategory_id_seq'::regclass);


--
-- Name: socialaccount_socialaccount id; Type: DEFAULT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialaccount_id_seq'::regclass);


--
-- Name: socialaccount_socialapp id; Type: DEFAULT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_id_seq'::regclass);


--
-- Name: socialaccount_socialapp_sites id; Type: DEFAULT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_sites_id_seq'::regclass);


--
-- Name: socialaccount_socialtoken id; Type: DEFAULT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialtoken_id_seq'::regclass);


--
-- Data for Name: account_emailaddress; Type: TABLE DATA; Schema: public; Owner: d5hw_user
--

COPY public.account_emailaddress (id, verified, "primary", user_id, email) FROM stdin;
\.


--
-- Data for Name: account_emailconfirmation; Type: TABLE DATA; Schema: public; Owner: d5hw_user
--

COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: d5hw_user
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: d5hw_user
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: d5hw_user
--

COPY public.auth_permission (id, content_type_id, codename, name) FROM stdin;
1	1	add_logentry	Can add log entry
2	1	change_logentry	Can change log entry
3	1	delete_logentry	Can delete log entry
4	1	view_logentry	Can view log entry
5	2	add_permission	Can add permission
6	2	change_permission	Can change permission
7	2	delete_permission	Can delete permission
8	2	view_permission	Can view permission
9	3	add_group	Can add group
10	3	change_group	Can change group
11	3	delete_group	Can delete group
12	3	view_group	Can view group
13	4	add_user	Can add user
14	4	change_user	Can change user
15	4	delete_user	Can delete user
16	4	view_user	Can view user
17	5	add_contenttype	Can add content type
18	5	change_contenttype	Can change content type
19	5	delete_contenttype	Can delete content type
20	5	view_contenttype	Can view content type
21	6	add_session	Can add session
22	6	change_session	Can change session
23	6	delete_session	Can delete session
24	6	view_session	Can view session
25	7	add_news	Can add news
26	7	change_news	Can change news
27	7	delete_news	Can delete news
28	7	view_news	Can view news
29	8	add_playerstat	Can add player stat
30	8	change_playerstat	Can change player stat
31	8	delete_playerstat	Can delete player stat
32	8	view_playerstat	Can view player stat
33	9	add_tournament	Can add tournament
34	9	change_tournament	Can change tournament
35	9	delete_tournament	Can delete tournament
36	9	view_tournament	Can view tournament
37	10	add_category	Can add category
38	10	change_category	Can change category
39	10	delete_category	Can delete category
40	10	view_category	Can view category
41	11	add_comment	Can add comment
42	11	change_comment	Can change comment
43	11	delete_comment	Can delete comment
44	11	view_comment	Can view comment
45	12	add_postcategory	Can add post category
46	12	change_postcategory	Can change post category
47	12	delete_postcategory	Can delete post category
48	12	view_postcategory	Can view post category
49	13	add_author	Can add author
50	13	change_author	Can change author
51	13	delete_author	Can delete author
52	13	view_author	Can view author
53	14	add_post	Can add post
54	14	change_post	Can change post
55	14	delete_post	Can delete post
56	14	view_post	Can view post
57	15	add_flatpage	Can add flat page
58	15	change_flatpage	Can change flat page
59	15	delete_flatpage	Can delete flat page
60	15	view_flatpage	Can view flat page
61	16	add_site	Can add site
62	16	change_site	Can change site
63	16	delete_site	Can delete site
64	16	view_site	Can view site
65	17	add_emailaddress	Can add email address
66	17	change_emailaddress	Can change email address
67	17	delete_emailaddress	Can delete email address
68	17	view_emailaddress	Can view email address
69	18	add_emailconfirmation	Can add email confirmation
70	18	change_emailconfirmation	Can change email confirmation
71	18	delete_emailconfirmation	Can delete email confirmation
72	18	view_emailconfirmation	Can view email confirmation
73	19	add_socialaccount	Can add social account
74	19	change_socialaccount	Can change social account
75	19	delete_socialaccount	Can delete social account
76	19	view_socialaccount	Can view social account
77	20	add_socialapp	Can add social application
78	20	change_socialapp	Can change social application
79	20	delete_socialapp	Can delete social application
80	20	view_socialapp	Can view social application
81	21	add_socialtoken	Can add social application token
82	21	change_socialtoken	Can change social application token
83	21	delete_socialtoken	Can delete social application token
84	21	view_socialtoken	Can view social application token
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: d5hw_user
--

COPY public.auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) FROM stdin;
1	!Hol8j7WHKJwjQ1JC67GBqDkvxQVZNtw8c9EiQhHs	\N	f	bulba			f	t	2023-01-16 17:33:44.575309+03	
2	!moDtzzkSq46cY56h7FvU6cJDP8j8qDCMZThz8xcg	\N	f	psyduck			f	t	2023-01-16 17:35:08.667167+03	
3	!jxfPLYhxBiPgWNYG7V2j6yM9B8Mf80BMTnw83OvB	\N	f	bulb			f	t	2023-01-16 18:13:57.295736+03	
4	!67NlpnSelGGfUEvnrkdLnI2niTw0ojrbjuncWvjp	\N	f	Dan			f	t	2023-01-17 07:28:49.169291+03	
5	!tonMi7gow2Fuhnh8AMdu3leQY6EAkv8I1ClmGFJK	\N	f	Bob			f	t	2023-01-17 07:29:23.644998+03	
6	!8avCQmEX322hLXGFYtxgEdECx99Dnisx6VKxvrjh	\N	f	Bulba			f	t	2023-01-17 07:31:29.605977+03	
7	!KVCuI1wRRknRzb3dNfj73pDkExiG538Qse3spFN4	\N	f	Psyduck			f	t	2023-01-17 07:32:00.0137+03	
8	pbkdf2_sha256$390000$fxYg5WswywnXUMbWShoj0q$Zpp1lSazakOspXU1TdgEkZsQ5ilOHJ369NNnblE0t2s=	2023-01-17 15:07:13.788857+03	t	artem			t	t	2023-01-17 15:06:48.976588+03	
9	pbkdf2_sha256$390000$PZu92WMZxfWasJs8ufpYP1$YZ6huigbVk+2mo9SAG7psslvRuPqNORSRMKL84BV8gY=	2023-02-25 14:45:30.058013+03	t	d3			t	t	2023-02-25 14:45:08.676551+03	
10	pbkdf2_sha256$390000$da1ShMKq3wQdkecLYDFBhL$4SHYyT//HDIOVGWTLMSglqVzSroJ9QE/bd0VhKCCWi0=	2023-03-10 06:27:11.094275+03	t	d32			t	t	2023-03-06 18:04:40.790541+03	
11	pbkdf2_sha256$390000$Cn9LoN6qFBz90uEFtERJw2$mLMUNF1HGpl+jBQTnlrRYWtggHsMT7pPmMiSTI15xLY=	2025-01-20 07:59:23.978889+03	t	artva			t	t	2025-01-12 12:44:45.853794+03	
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: d5hw_user
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: d5hw_user
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: d5hw_user
--

COPY public.django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) FROM stdin;
1	1	/news/ -- news	1	[{"added": {}}]	15	9	2023-02-25 14:57:39.324353+03
2	1	/news/ -- news	2	[{"changed": {"fields": ["Template name"]}}]	15	10	2023-03-06 18:05:19.27693+03
3	1	/news/ -- news	3		15	10	2023-03-09 18:28:41.340126+03
4	2	/about/ -- AB	1	[{"added": {}}]	15	10	2023-03-09 18:58:26.969742+03
5	1	1/64 finals:<style>\r\n    p {text-indent: 25px;}\r\n</style>\r\n<p 	2	[{"changed": {"fields": ["Time out", "Text"]}}]	14	10	2023-03-10 09:39:56.053581+03
6	1	1/64 finals:Российский теннисист Даниил Медведев (восьмая раке	2	[{"changed": {"fields": ["Text"]}}]	14	10	2023-03-10 09:42:22.420317+03
7	1	1/64 finals:<p style="text-align: left;">Российский теннисист 	2	[{"changed": {"fields": ["Time out", "Text"]}}]	14	10	2023-03-10 09:43:29.213049+03
8	1	1/64 finals:Российский теннисист Даниил Медведев (восьмая раке	2	[{"changed": {"fields": ["Text"]}}]	14	10	2023-03-10 09:45:55.09768+03
9	1	1/64 finals:Российский теннисист Даниил Медведев (восьмая раке	2	[{"changed": {"fields": ["Text"]}}]	14	10	2023-03-10 09:46:27.233375+03
10	1	1/64 finals:<h1>Российский теннисист Даниил Медведев (восьмая 	2	[{"changed": {"fields": ["Text"]}}]	14	10	2023-03-10 09:47:18.678778+03
11	1	1/64 finals:Российский теннисист Даниил Медведев (восьмая раке	2	[{"changed": {"fields": ["Text"]}}]	14	10	2023-03-10 09:49:09.190769+03
12	2	1 USD = 85 RUB:К сегодняшнему вечеру ЦБ РФ установил новые официа	2	[{"changed": {"fields": ["Time out", "Text"]}}]	14	10	2023-03-10 13:23:10.095355+03
13	4	10 cup:Djokovic  is champion again	2	[{"changed": {"fields": ["Time out"]}}]	14	10	2023-03-10 13:23:17.07108+03
14	2	1 USD = 85 RUB:К сегодняшнему вечеру ЦБ РФ установил новые официа	2	[]	14	10	2023-03-10 13:23:21.481479+03
15	3	Dubai in shoсk!:Durov did a hundred push-ups in one go	2	[{"changed": {"fields": ["Time out"]}}]	14	10	2023-03-10 13:23:26.958622+03
16	1	1/64 finals:Российский теннисист Даниил Медведев (восьмая раке	2	[]	14	10	2023-03-10 13:23:30.666744+03
17	2	1 USD = 85 RUB ?!:К сегодняшнему вечеру ЦБ РФ установил новые официа	2	[{"changed": {"fields": ["Title"]}}]	14	10	2023-03-10 13:27:16.566856+03
18	3	Dubai in shoсk!:Durov made a hundred push-ups in one go	2	[{"changed": {"fields": ["Text"]}}]	14	10	2023-03-11 13:19:16.13952+03
19	5	Медведев о том, что проиграл Самрею два сета:«Я играю лучше, когда у меня много практики. Так з	1	[{"added": {}}]	14	11	2025-01-18 21:55:47.000193+03
20	6	Новость No. 6:Текст Новости No. 6	1	[{"added": {}}]	14	11	2025-01-18 21:59:04.699407+03
21	7	Новость No. 7:Текст Новости No. 7	1	[{"added": {}}]	14	11	2025-01-18 21:59:38.837502+03
22	8	Новость No. 8:Текст Новости No. 8	1	[{"added": {}}]	14	11	2025-01-18 22:00:03.861251+03
23	9	Статья No. 9:Текст Статьи No. 9	1	[{"added": {}}]	14	11	2025-01-18 22:00:34.772598+03
24	10	Статья No. 10:Текст Статьи No. 10	1	[{"added": {}}]	14	11	2025-01-18 22:01:00.331451+03
25	11	Новость No. 11:Текст Новости No. 11	1	[{"added": {}}]	14	11	2025-01-18 22:01:25.492491+03
26	11	Новость No. 11:Текст Новости No. 11	2	[{"changed": {"fields": ["CategoryType"]}}]	14	11	2025-01-18 22:01:32.713245+03
27	12	Текст Новости No. 12:Текст Новости No. 12	1	[{"added": {}}]	14	11	2025-01-18 22:06:39.764399+03
28	13	Статья No. 13:Текст Статьи No. 13	1	[{"added": {}}]	14	11	2025-01-18 22:07:22.592974+03
29	14	Статья No. 14:Текст Статьи No. 14	1	[{"added": {}}]	14	11	2025-01-18 22:07:48.152216+03
30	14	Статья No. 14:Текст Статьи No. 14	2	[]	14	11	2025-01-18 22:07:52.924658+03
31	12	Новость No. 12:Текст Новости No. 12	2	[{"changed": {"fields": ["Title"]}}]	14	11	2025-01-18 22:08:08.831498+03
32	15	Новость No. 15:Текст Новости No. 15	1	[{"added": {}}]	14	11	2025-01-18 22:09:06.820151+03
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: d5hw_user
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	news	news
8	news	playerstat
9	news	tournament
10	news	category
11	news	comment
12	news	postcategory
13	news	author
14	news	post
15	flatpages	flatpage
16	sites	site
17	account	emailaddress
18	account	emailconfirmation
19	socialaccount	socialaccount
20	socialaccount	socialapp
21	socialaccount	socialtoken
\.


--
-- Data for Name: django_flatpage; Type: TABLE DATA; Schema: public; Owner: d5hw_user
--

COPY public.django_flatpage (id, url, title, content, enable_comments, template_name, registration_required) FROM stdin;
2	/about/	AB	<h1>Об этом сайте</h1>	f	flatpages/about.html	f
\.


--
-- Data for Name: django_flatpage_sites; Type: TABLE DATA; Schema: public; Owner: d5hw_user
--

COPY public.django_flatpage_sites (id, flatpage_id, site_id) FROM stdin;
2	2	1
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: d5hw_user
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2023-01-04 16:01:21.340069+03
2	auth	0001_initial	2023-01-04 16:01:21.365197+03
3	admin	0001_initial	2023-01-04 16:01:21.375836+03
4	admin	0002_logentry_remove_auto_add	2023-01-04 16:01:21.385418+03
5	admin	0003_logentry_add_action_flag_choices	2023-01-04 16:01:21.39107+03
6	contenttypes	0002_remove_content_type_name	2023-01-04 16:01:21.403571+03
7	auth	0002_alter_permission_name_max_length	2023-01-04 16:01:21.413767+03
8	auth	0003_alter_user_email_max_length	2023-01-04 16:01:21.42164+03
9	auth	0004_alter_user_username_opts	2023-01-04 16:01:21.428188+03
10	auth	0005_alter_user_last_login_null	2023-01-04 16:01:21.436252+03
11	auth	0006_require_contenttypes_0002	2023-01-04 16:01:21.440378+03
12	auth	0007_alter_validators_add_error_messages	2023-01-04 16:01:21.447402+03
13	auth	0008_alter_user_username_max_length	2023-01-04 16:01:21.456111+03
14	auth	0009_alter_user_last_name_max_length	2023-01-04 16:01:21.463874+03
15	auth	0010_alter_group_name_max_length	2023-01-04 16:01:21.473566+03
16	auth	0011_update_proxy_permissions	2023-01-04 16:01:21.480038+03
17	auth	0012_alter_user_first_name_max_length	2023-01-04 16:01:21.487784+03
18	sessions	0001_initial	2023-01-04 16:01:21.495968+03
21	news	0001_initial	2023-01-16 17:58:28.774948+03
22	news	0002_rename_tittle_post_title	2023-01-17 10:08:20.061302+03
23	news	0003_alter_author_ratingauthor_alter_comment_rating_and_more	2023-01-18 17:15:34.404574+03
24	sites	0001_initial	2023-02-25 14:42:59.441975+03
25	flatpages	0001_initial	2023-02-25 14:42:59.45092+03
26	sites	0002_alter_domain_unique	2023-02-25 14:42:59.460423+03
27	account	0001_initial	2025-03-21 09:06:01.163865+03
28	account	0002_email_max_length	2025-03-21 09:06:01.183497+03
29	account	0003_alter_emailaddress_create_unique_verified_email	2025-03-21 09:06:01.205907+03
30	account	0004_alter_emailaddress_drop_unique_email	2025-03-21 09:06:01.228031+03
31	account	0005_emailaddress_idx_upper_email	2025-03-21 09:06:01.246034+03
32	account	0006_emailaddress_lower	2025-03-21 09:06:01.268005+03
33	account	0007_emailaddress_idx_email	2025-03-21 09:06:01.295612+03
34	account	0008_emailaddress_unique_primary_email_fixup	2025-03-21 09:06:01.316611+03
35	account	0009_emailaddress_unique_primary_email	2025-03-21 09:06:01.334874+03
36	socialaccount	0001_initial	2025-03-21 09:06:01.39989+03
37	socialaccount	0002_token_max_lengths	2025-03-21 09:06:01.439201+03
38	socialaccount	0003_extra_data_default_dict	2025-03-21 09:06:01.458842+03
39	socialaccount	0004_app_provider_id_settings	2025-07-04 13:49:53.163542+03
40	socialaccount	0005_socialtoken_nullable_app	2025-07-04 13:49:53.182073+03
41	socialaccount	0006_alter_socialaccount_extra_data	2025-07-04 13:49:53.190467+03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: d5hw_user
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
q2sv9jxlialaxijtxdqlmbyksjjk6wti	.eJxVjMEOwiAQBf-FsyFQYFk8evcbCLAgVQNJaU_Gf9cmPej1zcx7MR-2tfpt5MXPxM4M2el3iyE9ctsB3UO7dZ56W5c58l3hBx382ik_L4f7d1DDqN-6JONctkWRFiSUhQSAkcAGkBNh0qZoqd1UNMZCRkVDwUYJWSAWUMjeH-fhN8k:1pHnYP:RWMtq_nn75P1OH0D4CKJEIUl2VG5ylWmUNPaLfm8WR8	2023-01-31 15:07:13.795856+03
jvqdvqw1zkuynsg5lm02ybx93q19o5q3	.eJxVjMsOgjAUBf-la9MUbp8u3fMN5D5aQQ0kFFbGfzdNWOj2zMx5qxGPfRqPmrdxFnVVSV1-N0J-5qUBeeByXzWvy77NpJuiT1r1sEp-3U7372DCOrU6kmV0rustQ0jWiAkYUi49g6UkJiWxgBKLw1hCYAKm4snH3HmAqD5f66c4HQ:1pVvnm:LgDZ5BrVKWFXnHKYJ2VLtV9CcnFK77pIgCZlPJ4RWFo	2023-03-11 14:45:30.062006+03
sehqg1ebjy2ku662ie0xubu5t84i4qsl	.eJxVjEEOwiAURO_C2hBQ4INL9z0D-fBBqgaS0q6Md5cmXWhmN-_NvJnHbS1-62nxM7Erk4KdfsuA8ZnqTuiB9d54bHVd5sB3hR-086lRet0O9--gYC9jLQCFdRDJAgEYZ7KhbFGSQSeTA52zzkErF5WzGmQYhqaRSz5rQMU-XwFiN-M:1pZFCl:2SIzZGXYGt7FtU8KsvXjkLL_z_w4lbERYM351DqbOu8	2023-03-20 18:04:59.852577+03
y91dh8rorfu2zp9wak90e3ybpydzg4fm	.eJxVjEEOwiAURO_C2hBQ4INL9z0D-fBBqgaS0q6Md5cmXWhmN-_NvJnHbS1-62nxM7Erk4KdfsuA8ZnqTuiB9d54bHVd5sB3hR-086lRet0O9--gYC9jLQCFdRDJAgEYZ7KhbFGSQSeTA52zzkErF5WzGmQYhqaRSz5rQMU-XwFiN-M:1paKdJ:a4FE_J2GvgGsHpEwjSvWTMaMUPSvLsn3uW0FIdS9Inc	2023-03-23 18:04:53.269737+03
llh7t360he2cpir93w04qxzbbru3c930	.eJxVjEEOwiAURO_C2hBQ4INL9z0D-fBBqgaS0q6Md5cmXWhmN-_NvJnHbS1-62nxM7Erk4KdfsuA8ZnqTuiB9d54bHVd5sB3hR-086lRet0O9--gYC9jLQCFdRDJAgEYZ7KhbFGSQSeTA52zzkErF5WzGmQYhqaRSz5rQMU-XwFiN-M:1paL09:TZ0iNixabs0WVKvazf1jdDZ3vw5N9G2ffLhGth7cWwA	2023-03-23 18:28:29.53093+03
k28bqxetnfjcn2tmb4wgawk3yph8dcoy	.eJxVjEEOwiAURO_C2hBQ4INL9z0D-fBBqgaS0q6Md5cmXWhmN-_NvJnHbS1-62nxM7Erk4KdfsuA8ZnqTuiB9d54bHVd5sB3hR-086lRet0O9--gYC9jLQCFdRDJAgEYZ7KhbFGSQSeTA52zzkErF5WzGmQYhqaRSz5rQMU-XwFiN-M:1paLFJ:UYEwVkqtYEh9GXwWEo5I2mCJVCMgKi5mv8z2JPCdp0I	2023-03-23 18:44:09.35509+03
6g873yrdm0k6ea66rbcb339p978nahby	.eJxVjEEOwiAURO_C2hBQ4INL9z0D-fBBqgaS0q6Md5cmXWhmN-_NvJnHbS1-62nxM7Erk4KdfsuA8ZnqTuiB9d54bHVd5sB3hR-086lRet0O9--gYC9jLQCFdRDJAgEYZ7KhbFGSQSeTA52zzkErF5WzGmQYhqaRSz5rQMU-XwFiN-M:1paWDf:ZhcGtddUZFMl93LB-vMuIgjQPlpayt6ah1nH2YGKfvM	2023-03-24 06:27:11.100277+03
yy1lvzd8rvgqyaowsnoqi9dje9dujvz8	.eJxVjMEOwiAQRP-FsyEslUI9eu83kF0WpGogKe3J-O9K0oOeJpn3Zl7C475lv7e4-oXFRQCI029JGB6xdMJ3LLcqQy3bupDsijxok3Pl-Lwe7t9Bxpb7Gkdrk4WkiB1QcIA8pCnqaSC2rDGd-ZvBADgaKUalcFAGKRkTtDXi_QEzEzkW:1tWxKv:jk0V6OBpSle8mLJ5OV6m4arA-Ex2x68q6j8lh4rOkfk	2025-01-26 12:45:01.164488+03
1ufiu005kcpfi69o9uc7c2eoc66gx274	.eJxVjMEOwiAQRP-FsyEslUI9eu83kF0WpGogKe3J-O9K0oOeJpn3Zl7C475lv7e4-oXFRQCI029JGB6xdMJ3LLcqQy3bupDsijxok3Pl-Lwe7t9Bxpb7Gkdrk4WkiB1QcIA8pCnqaSC2rDGd-ZvBADgaKUalcFAGKRkTtDXi_QEzEzkW:1tZmgt:ExHfh5u7vM9YjDUBGfyVE0bs07h5SCp35ufFFMTOiiU	2025-02-03 07:59:23.98604+03
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: d5hw_user
--

COPY public.django_site (id, name, domain) FROM stdin;
1	example.com	example.com
\.


--
-- Data for Name: news_author; Type: TABLE DATA; Schema: public; Owner: d5hw_user
--

COPY public.news_author (id, authoruser_id, ratingauthor) FROM stdin;
1	3	22
2	6	27
3	7	12
4	1	6
\.


--
-- Data for Name: news_category; Type: TABLE DATA; Schema: public; Owner: d5hw_user
--

COPY public.news_category (id, name) FROM stdin;
1	Sport
2	Investing
3	IT
4	Humor
5	Blog
\.


--
-- Data for Name: news_comment; Type: TABLE DATA; Schema: public; Owner: d5hw_user
--

COPY public.news_comment (id, commenttext, time_in_comment, commentpost_id, commentuser_id, rating) FROM stdin;
3	Когда будет 100?	2023-01-17 18:40:43.777165+03	2	1	2
4	Джоковича пройдет?	2023-01-17 18:41:55.104377+03	1	3	1
5	Уже 75	2023-02-14 14:24:19.528058+03	2	1	1
6	А что с биткоином?	2023-02-14 14:39:15.822611+03	2	7	0
7	Дуров, ай красавец	2023-02-14 14:50:27.250731+03	3	6	0
8	Хорошая новость	2023-02-14 14:51:40.02419+03	1	1	0
\.


--
-- Data for Name: news_post; Type: TABLE DATA; Schema: public; Owner: d5hw_user
--

COPY public.news_post (id, categorytype, time_in_post, time_out, text, postauthor_id, title, rating) FROM stdin;
1	art	2023-01-17 08:16:40.091632+03	2023-03-10 12:43:23+03	Российский теннисист Даниил МЕДВЕД (восьмая ракетка мира) встретится с представителем США Маркосом Гироном (56-й номер мирового рейтинга) в первом круге Открытого чемпионата Австралии. Встреча пройдёт на стадионе «Мельбурн Парк. Род Лэйвер Арена» на хардовом покрытии. Матч начнётся не ранее 13:00 мск.\r\n\r\n       Счёт личных встреч — 1-0 в пользу Медведева. Даниил выиграл единственный матч между ними во втором круге «Мастерса» в Цинциннати в 2020 году, когда на самом деле турнир проходил в Нью-Йорке (из-за коронавирусных ограничений). Счёт того поединка — 6:4. 6:4.\r\n\r\n       На предыдущем Открытом чемпионате Австралии Медведев дошёл до финала, где в пяти сетах уступил испанцу Рафаэлю Надалю.	1	1/64 finals	7
2	art	2023-01-17 08:44:35.828007+03	2023-03-10 13:23:01+03	После ослабления в первой половине января курс рубля начал укрепляться и опустился ниже ₽100 за доллар. «РБК Инвестиции» узнали у экспертов, продолжится ли восстановление нацвалюты и какие факторы будут на это влиять\r\n\r\nИсточник РБК:	2	Курс доллара в феврале 2025-го: получится ли у рубля удержать рубеж ₽100	9
3	news	2023-01-17 08:49:52.276329+03	2023-03-10 13:23:25+03	Durov made a hundred push-ups in one go	3	Dubai in shoсk!	4
4	news	2023-02-09 19:43:20.393351+03	2023-03-10 13:23:14+03	Djokovic  is champion again	4	10 cup	1
5	news	2025-01-18 21:55:46.999192+03	2025-01-19 00:55:31+03	«Я играю лучше, когда у меня много практики. Так зачем играть полтора часа, когда мне нужно минимум три, чтобы прочувствовать удары.\r\n\r\nЕсли серьезно, во втором и третьем сетах я просто не мог коснуться мяча. Он бил в полную силу – и все попадал. Я не знал, что делать.\r\n\r\nЯ был удивлен его уровнем. Если он будет так играть в каждом матче, жизнь у него будет хорошей – деньги, девушки, казино, все остальное. Если не будет так играть в каждом матче, то этого не будет. По крайней мере, теннис ему этого не даст. Я бы хотел, чтобы он так играл в каждом матче – но не против меня».	1	Медведев о том, что проиграл Самрею два сета	15
6	news	2025-01-18 21:59:04.698407+03	2025-01-18 21:58:08+03	Текст Новости No. 6	2	Новость No. 6	3
7	news	2025-01-18 21:59:38.836503+03	2025-01-18 21:59:28+03	Текст Новости No. 7	3	Новость No. 7	1
8	news	2025-01-18 22:00:03.860251+03	2025-01-18 21:59:58+03	Текст Новости No. 8	4	Новость No. 8	2
9	art	2025-01-18 22:00:34.771595+03	2025-01-18 22:00:24+03	Текст Статьи No. 9	4	Статья No. 9	2
10	art	2025-01-18 22:01:00.329945+03	2025-01-18 22:00:50+03	Текст Статьи No. 10	2	Статья No. 10	1
11	news	2025-01-18 22:01:25.491491+03	2025-01-18 22:01:20+03	Текст Новости No. 11	3	Новость No. 11	2
12	news	2025-01-18 22:06:39.762399+03	2025-01-18 22:06:09+03	Текст Новости No. 12	4	Новость No. 12	2
13	art	2025-01-18 22:07:22.591939+03	2025-01-18 22:06:52+03	Текст Статьи No. 13	4	Статья No. 13	2
14	art	2025-01-18 22:07:48.151216+03	2025-01-18 22:07:36+03	Текст Статьи No. 14	3	Статья No. 14	2
15	news	2025-01-18 22:09:06.819151+03	2025-01-18 22:08:53+03	Текст Новости No. 15	4	Новость No. 15	3
16	news	2025-01-25 13:32:33.899773+03	\N	Текст Новости No 16	2	Новость No 16	0
17	news	2025-01-25 13:33:09.632516+03	\N	Текст новости No 17	2	Новость No 17	0
\.


--
-- Data for Name: news_postcategory; Type: TABLE DATA; Schema: public; Owner: d5hw_user
--

COPY public.news_postcategory (id, categorythrough_id, postthrough_id) FROM stdin;
1	1	1
2	2	1
4	2	2
5	3	3
6	4	3
7	1	4
8	2	16
9	4	17
\.


--
-- Data for Name: socialaccount_socialaccount; Type: TABLE DATA; Schema: public; Owner: d5hw_user
--

COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialapp; Type: TABLE DATA; Schema: public; Owner: d5hw_user
--

COPY public.socialaccount_socialapp (id, provider, name, client_id, key, secret, provider_id, settings) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialapp_sites; Type: TABLE DATA; Schema: public; Owner: d5hw_user
--

COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialtoken; Type: TABLE DATA; Schema: public; Owner: d5hw_user
--

COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
\.


--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: d5hw_user
--

SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 1, true);


--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: d5hw_user
--

SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: d5hw_user
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: d5hw_user
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, true);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: d5hw_user
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 84, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: d5hw_user
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: d5hw_user
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 11, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: d5hw_user
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: d5hw_user
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 32, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: d5hw_user
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 21, true);


--
-- Name: django_flatpage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: d5hw_user
--

SELECT pg_catalog.setval('public.django_flatpage_id_seq', 2, true);


--
-- Name: django_flatpage_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: d5hw_user
--

SELECT pg_catalog.setval('public.django_flatpage_sites_id_seq', 2, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: d5hw_user
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 41, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: d5hw_user
--

SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);


--
-- Name: news_author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: d5hw_user
--

SELECT pg_catalog.setval('public.news_author_id_seq', 4, true);


--
-- Name: news_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: d5hw_user
--

SELECT pg_catalog.setval('public.news_category_id_seq', 5, true);


--
-- Name: news_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: d5hw_user
--

SELECT pg_catalog.setval('public.news_comment_id_seq', 8, true);


--
-- Name: news_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: d5hw_user
--

SELECT pg_catalog.setval('public.news_post_id_seq', 17, true);


--
-- Name: news_postcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: d5hw_user
--

SELECT pg_catalog.setval('public.news_postcategory_id_seq', 9, true);


--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: d5hw_user
--

SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 1, true);


--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: d5hw_user
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 1, true);


--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: d5hw_user
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 1, true);


--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: d5hw_user
--

SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 1, true);


--
-- Name: django_migrations idx_33048_django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT idx_33048_django_migrations_pkey PRIMARY KEY (id);


--
-- Name: auth_group_permissions idx_33055_auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT idx_33055_auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups idx_33060_auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT idx_33060_auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions idx_33065_auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT idx_33065_auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log idx_33070_django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT idx_33070_django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type idx_33077_django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT idx_33077_django_content_type_pkey PRIMARY KEY (id);


--
-- Name: auth_permission idx_33084_auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT idx_33084_auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_group idx_33091_auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT idx_33091_auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_user idx_33098_auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT idx_33098_auth_user_pkey PRIMARY KEY (id);


--
-- Name: django_session idx_33104_sqlite_autoindex_django_session_1; Type: CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT idx_33104_sqlite_autoindex_django_session_1 PRIMARY KEY (session_key);


--
-- Name: news_category idx_33110_news_category_pkey; Type: CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.news_category
    ADD CONSTRAINT idx_33110_news_category_pkey PRIMARY KEY (id);


--
-- Name: news_postcategory idx_33117_news_postcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.news_postcategory
    ADD CONSTRAINT idx_33117_news_postcategory_pkey PRIMARY KEY (id);


--
-- Name: news_author idx_33122_news_author_pkey; Type: CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.news_author
    ADD CONSTRAINT idx_33122_news_author_pkey PRIMARY KEY (id);


--
-- Name: news_comment idx_33127_news_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.news_comment
    ADD CONSTRAINT idx_33127_news_comment_pkey PRIMARY KEY (id);


--
-- Name: news_post idx_33134_news_post_pkey; Type: CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.news_post
    ADD CONSTRAINT idx_33134_news_post_pkey PRIMARY KEY (id);


--
-- Name: django_flatpage idx_33141_django_flatpage_pkey; Type: CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.django_flatpage
    ADD CONSTRAINT idx_33141_django_flatpage_pkey PRIMARY KEY (id);


--
-- Name: django_flatpage_sites idx_33148_django_flatpage_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.django_flatpage_sites
    ADD CONSTRAINT idx_33148_django_flatpage_sites_pkey PRIMARY KEY (id);


--
-- Name: django_site idx_33153_django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT idx_33153_django_site_pkey PRIMARY KEY (id);


--
-- Name: account_emailconfirmation idx_33160_account_emailconfirmation_pkey; Type: CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT idx_33160_account_emailconfirmation_pkey PRIMARY KEY (id);


--
-- Name: account_emailaddress idx_33167_account_emailaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT idx_33167_account_emailaddress_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount idx_33174_socialaccount_socialaccount_pkey; Type: CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT idx_33174_socialaccount_socialaccount_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialapp_sites idx_33181_socialaccount_socialapp_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT idx_33181_socialaccount_socialapp_sites_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialtoken idx_33186_socialaccount_socialtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT idx_33186_socialaccount_socialtoken_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialapp idx_33193_socialaccount_socialapp_pkey; Type: CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT idx_33193_socialaccount_socialapp_pkey PRIMARY KEY (id);


--
-- Name: idx_33055_auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE INDEX idx_33055_auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: idx_33055_auth_group_permissions_group_id_permission_id_0cd325b; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE UNIQUE INDEX idx_33055_auth_group_permissions_group_id_permission_id_0cd325b ON public.auth_group_permissions USING btree (group_id, permission_id);


--
-- Name: idx_33055_auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE INDEX idx_33055_auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: idx_33060_auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE INDEX idx_33060_auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: idx_33060_auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE INDEX idx_33060_auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: idx_33060_auth_user_groups_user_id_group_id_94350c0c_uniq; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE UNIQUE INDEX idx_33060_auth_user_groups_user_id_group_id_94350c0c_uniq ON public.auth_user_groups USING btree (user_id, group_id);


--
-- Name: idx_33065_auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE INDEX idx_33065_auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: idx_33065_auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE INDEX idx_33065_auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: idx_33065_auth_user_user_permissions_user_id_permission_id_14a6; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE UNIQUE INDEX idx_33065_auth_user_user_permissions_user_id_permission_id_14a6 ON public.auth_user_user_permissions USING btree (user_id, permission_id);


--
-- Name: idx_33070_django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE INDEX idx_33070_django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: idx_33070_django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE INDEX idx_33070_django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: idx_33077_django_content_type_app_label_model_76bd3d3b_uniq; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE UNIQUE INDEX idx_33077_django_content_type_app_label_model_76bd3d3b_uniq ON public.django_content_type USING btree (app_label, model);


--
-- Name: idx_33084_auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE INDEX idx_33084_auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: idx_33084_auth_permission_content_type_id_codename_01ab375a_uni; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE UNIQUE INDEX idx_33084_auth_permission_content_type_id_codename_01ab375a_uni ON public.auth_permission USING btree (content_type_id, codename);


--
-- Name: idx_33091_sqlite_autoindex_auth_group_1; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE UNIQUE INDEX idx_33091_sqlite_autoindex_auth_group_1 ON public.auth_group USING btree (name);


--
-- Name: idx_33098_sqlite_autoindex_auth_user_1; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE UNIQUE INDEX idx_33098_sqlite_autoindex_auth_user_1 ON public.auth_user USING btree (username);


--
-- Name: idx_33104_django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE INDEX idx_33104_django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: idx_33110_sqlite_autoindex_news_category_1; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE UNIQUE INDEX idx_33110_sqlite_autoindex_news_category_1 ON public.news_category USING btree (name);


--
-- Name: idx_33117_news_postcategory_categorythrough_id_dd6fe662; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE INDEX idx_33117_news_postcategory_categorythrough_id_dd6fe662 ON public.news_postcategory USING btree (categorythrough_id);


--
-- Name: idx_33117_news_postcategory_postthrough_id_f91924e9; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE INDEX idx_33117_news_postcategory_postthrough_id_f91924e9 ON public.news_postcategory USING btree (postthrough_id);


--
-- Name: idx_33122_sqlite_autoindex_news_author_1; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE UNIQUE INDEX idx_33122_sqlite_autoindex_news_author_1 ON public.news_author USING btree (authoruser_id);


--
-- Name: idx_33127_news_comment_commentpost_id_e5f542ee; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE INDEX idx_33127_news_comment_commentpost_id_e5f542ee ON public.news_comment USING btree (commentpost_id);


--
-- Name: idx_33127_news_comment_commentuser_id_2d5f39b8; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE INDEX idx_33127_news_comment_commentuser_id_2d5f39b8 ON public.news_comment USING btree (commentuser_id);


--
-- Name: idx_33134_news_post_postauthor_id_6a5dd7ff; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE INDEX idx_33134_news_post_postauthor_id_6a5dd7ff ON public.news_post USING btree (postauthor_id);


--
-- Name: idx_33141_django_flatpage_url_41612362; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE INDEX idx_33141_django_flatpage_url_41612362 ON public.django_flatpage USING btree (url);


--
-- Name: idx_33148_django_flatpage_sites_flatpage_id_078bbc8b; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE INDEX idx_33148_django_flatpage_sites_flatpage_id_078bbc8b ON public.django_flatpage_sites USING btree (flatpage_id);


--
-- Name: idx_33148_django_flatpage_sites_flatpage_id_site_id_0d29d9d1_un; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE UNIQUE INDEX idx_33148_django_flatpage_sites_flatpage_id_site_id_0d29d9d1_un ON public.django_flatpage_sites USING btree (flatpage_id, site_id);


--
-- Name: idx_33148_django_flatpage_sites_site_id_bfd8ea84; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE INDEX idx_33148_django_flatpage_sites_site_id_bfd8ea84 ON public.django_flatpage_sites USING btree (site_id);


--
-- Name: idx_33153_sqlite_autoindex_django_site_1; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE UNIQUE INDEX idx_33153_sqlite_autoindex_django_site_1 ON public.django_site USING btree (domain);


--
-- Name: idx_33160_account_emailconfirmation_email_address_id_5b7f8c58; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE INDEX idx_33160_account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);


--
-- Name: idx_33160_sqlite_autoindex_account_emailconfirmation_1; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE UNIQUE INDEX idx_33160_sqlite_autoindex_account_emailconfirmation_1 ON public.account_emailconfirmation USING btree (key);


--
-- Name: idx_33167_account_emailaddress_email_03be32b2; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE INDEX idx_33167_account_emailaddress_email_03be32b2 ON public.account_emailaddress USING btree (email);


--
-- Name: idx_33167_account_emailaddress_user_id_2c513194; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE INDEX idx_33167_account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);


--
-- Name: idx_33167_account_emailaddress_user_id_email_987c8728_uniq; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE UNIQUE INDEX idx_33167_account_emailaddress_user_id_email_987c8728_uniq ON public.account_emailaddress USING btree (user_id, email);


--
-- Name: idx_33167_unique_primary_email; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE UNIQUE INDEX idx_33167_unique_primary_email ON public.account_emailaddress USING btree (user_id, "primary");


--
-- Name: idx_33167_unique_verified_email; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE UNIQUE INDEX idx_33167_unique_verified_email ON public.account_emailaddress USING btree (email);


--
-- Name: idx_33174_socialaccount_socialaccount_provider_uid_fc810c6e_uni; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE UNIQUE INDEX idx_33174_socialaccount_socialaccount_provider_uid_fc810c6e_uni ON public.socialaccount_socialaccount USING btree (provider, uid);


--
-- Name: idx_33174_socialaccount_socialaccount_user_id_8146e70c; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE INDEX idx_33174_socialaccount_socialaccount_user_id_8146e70c ON public.socialaccount_socialaccount USING btree (user_id);


--
-- Name: idx_33181_socialaccount_socialapp_sites_site_id_2579dee5; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE INDEX idx_33181_socialaccount_socialapp_sites_site_id_2579dee5 ON public.socialaccount_socialapp_sites USING btree (site_id);


--
-- Name: idx_33181_socialaccount_socialapp_sites_socialapp_id_97fb6e7d; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE INDEX idx_33181_socialaccount_socialapp_sites_socialapp_id_97fb6e7d ON public.socialaccount_socialapp_sites USING btree (socialapp_id);


--
-- Name: idx_33181_socialaccount_socialapp_sites_socialapp_id_site_id_71; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE UNIQUE INDEX idx_33181_socialaccount_socialapp_sites_socialapp_id_site_id_71 ON public.socialaccount_socialapp_sites USING btree (socialapp_id, site_id);


--
-- Name: idx_33186_socialaccount_socialtoken_account_id_951f210e; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE INDEX idx_33186_socialaccount_socialtoken_account_id_951f210e ON public.socialaccount_socialtoken USING btree (account_id);


--
-- Name: idx_33186_socialaccount_socialtoken_app_id_636a42d7; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE INDEX idx_33186_socialaccount_socialtoken_app_id_636a42d7 ON public.socialaccount_socialtoken USING btree (app_id);


--
-- Name: idx_33186_socialaccount_socialtoken_app_id_account_id_fca4e0ac_; Type: INDEX; Schema: public; Owner: d5hw_user
--

CREATE UNIQUE INDEX idx_33186_socialaccount_socialtoken_app_id_account_id_fca4e0ac_ ON public.socialaccount_socialtoken USING btree (app_id, account_id);


--
-- Name: account_emailaddress account_emailaddress_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: account_emailconfirmation account_emailconfirmation_email_address_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_email_address_id_fkey FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.auth_group(id);


--
-- Name: auth_group_permissions auth_group_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id);


--
-- Name: auth_permission auth_permission_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id);


--
-- Name: auth_user_groups auth_user_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.auth_group(id);


--
-- Name: auth_user_groups auth_user_groups_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: django_admin_log django_admin_log_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id);


--
-- Name: django_admin_log django_admin_log_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: django_flatpage_sites django_flatpage_sites_flatpage_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.django_flatpage_sites
    ADD CONSTRAINT django_flatpage_sites_flatpage_id_fkey FOREIGN KEY (flatpage_id) REFERENCES public.django_flatpage(id);


--
-- Name: django_flatpage_sites django_flatpage_sites_site_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.django_flatpage_sites
    ADD CONSTRAINT django_flatpage_sites_site_id_fkey FOREIGN KEY (site_id) REFERENCES public.django_site(id);


--
-- Name: news_author news_author_authoruser_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.news_author
    ADD CONSTRAINT news_author_authoruser_id_fkey FOREIGN KEY (authoruser_id) REFERENCES public.auth_user(id);


--
-- Name: news_comment news_comment_commentpost_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.news_comment
    ADD CONSTRAINT news_comment_commentpost_id_fkey FOREIGN KEY (commentpost_id) REFERENCES public.news_post(id);


--
-- Name: news_comment news_comment_commentuser_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.news_comment
    ADD CONSTRAINT news_comment_commentuser_id_fkey FOREIGN KEY (commentuser_id) REFERENCES public.auth_user(id);


--
-- Name: news_post news_post_postauthor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.news_post
    ADD CONSTRAINT news_post_postauthor_id_fkey FOREIGN KEY (postauthor_id) REFERENCES public.news_author(id);


--
-- Name: news_postcategory news_postcategory_categorythrough_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.news_postcategory
    ADD CONSTRAINT news_postcategory_categorythrough_id_fkey FOREIGN KEY (categorythrough_id) REFERENCES public.news_category(id);


--
-- Name: news_postcategory news_postcategory_postthrough_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.news_postcategory
    ADD CONSTRAINT news_postcategory_postthrough_id_fkey FOREIGN KEY (postthrough_id) REFERENCES public.news_post(id);


--
-- Name: socialaccount_socialtoken socialaccount_social_app_id_636a42d7_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp_sites_site_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_site_id_fkey FOREIGN KEY (site_id) REFERENCES public.django_site(id);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp_sites_socialapp_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_socialapp_id_fkey FOREIGN KEY (socialapp_id) REFERENCES public.socialaccount_socialapp(id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_account_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: d5hw_user
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_account_id_fkey FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id);


--
-- PostgreSQL database dump complete
--

