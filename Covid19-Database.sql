PGDMP     4    4                y            covid19project    11.8    11.8 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    27582    covid19project    DATABASE     �   CREATE DATABASE covid19project WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE covid19project;
             postgres    false            �            1259    27614 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false            �            1259    27612    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    203            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       postgres    false    202            �            1259    27624    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false            �            1259    27622    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    205            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       postgres    false    204            �            1259    27606    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false            �            1259    27604    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    201            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       postgres    false    200            �            1259    27632 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         postgres    false            �            1259    27642    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false            �            1259    27640    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    209            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       postgres    false    208            �            1259    27630    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    207            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       postgres    false    206            �            1259    27650    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false            �            1259    27648 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    211            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       postgres    false    210            �            1259    27787    background_task    TABLE     �  CREATE TABLE public.background_task (
    id integer NOT NULL,
    task_name character varying(190) NOT NULL,
    task_params text NOT NULL,
    task_hash character varying(40) NOT NULL,
    verbose_name character varying(255),
    priority integer NOT NULL,
    run_at timestamp with time zone NOT NULL,
    repeat bigint NOT NULL,
    repeat_until timestamp with time zone,
    queue character varying(190),
    attempts integer NOT NULL,
    failed_at timestamp with time zone,
    last_error text NOT NULL,
    locked_by character varying(64),
    locked_at timestamp with time zone,
    creator_object_id integer,
    creator_content_type_id integer,
    CONSTRAINT background_task_creator_object_id_check CHECK ((creator_object_id >= 0))
);
 #   DROP TABLE public.background_task;
       public         postgres    false            �            1259    27775    background_task_completedtask    TABLE       CREATE TABLE public.background_task_completedtask (
    id integer NOT NULL,
    task_name character varying(190) NOT NULL,
    task_params text NOT NULL,
    task_hash character varying(40) NOT NULL,
    verbose_name character varying(255),
    priority integer NOT NULL,
    run_at timestamp with time zone NOT NULL,
    repeat bigint NOT NULL,
    repeat_until timestamp with time zone,
    queue character varying(190),
    attempts integer NOT NULL,
    failed_at timestamp with time zone,
    last_error text NOT NULL,
    locked_by character varying(64),
    locked_at timestamp with time zone,
    creator_object_id integer,
    creator_content_type_id integer,
    CONSTRAINT background_task_completedtask_creator_object_id_check CHECK ((creator_object_id >= 0))
);
 1   DROP TABLE public.background_task_completedtask;
       public         postgres    false            �            1259    27773 $   background_task_completedtask_id_seq    SEQUENCE     �   CREATE SEQUENCE public.background_task_completedtask_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.background_task_completedtask_id_seq;
       public       postgres    false    219            �           0    0 $   background_task_completedtask_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.background_task_completedtask_id_seq OWNED BY public.background_task_completedtask.id;
            public       postgres    false    218            �            1259    27785    background_task_id_seq    SEQUENCE     �   CREATE SEQUENCE public.background_task_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.background_task_id_seq;
       public       postgres    false    221            �           0    0    background_task_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.background_task_id_seq OWNED BY public.background_task.id;
            public       postgres    false    220            �            1259    27710    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         postgres    false            �            1259    27708    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    213            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       postgres    false    212            �            1259    27596    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false            �            1259    27594    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    199            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       postgres    false    198            �            1259    27585    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false            �            1259    27583    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    197            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       postgres    false    196            �            1259    27762    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false            �            1259    27741    main_app_studentdetails    TABLE     �  CREATE TABLE public.main_app_studentdetails (
    usn character varying(10) NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    gender character varying(15) NOT NULL,
    dob date NOT NULL,
    phone character varying(10) NOT NULL,
    emailid character varying(50) NOT NULL,
    branch character varying(50) NOT NULL,
    section character varying(10) NOT NULL,
    photo character varying(100) NOT NULL
);
 +   DROP TABLE public.main_app_studentdetails;
       public         postgres    false            �            1259    27748    main_app_violators    TABLE     �   CREATE TABLE public.main_app_violators (
    id integer NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    status character varying(10) NOT NULL,
    pic character varying(100) NOT NULL,
    usn character varying(10) NOT NULL
);
 &   DROP TABLE public.main_app_violators;
       public         postgres    false            �            1259    27746    main_app_violators_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_app_violators_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.main_app_violators_id_seq;
       public       postgres    false    216            �           0    0    main_app_violators_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.main_app_violators_id_seq OWNED BY public.main_app_violators.id;
            public       postgres    false    215            �
           2604    27617    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    203    203            �
           2604    27627    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    204    205            �
           2604    27609    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    200    201            �
           2604    27635    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    207    206    207            �
           2604    27645    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    208    209            �
           2604    27653    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    210    211            �
           2604    27790    background_task id    DEFAULT     x   ALTER TABLE ONLY public.background_task ALTER COLUMN id SET DEFAULT nextval('public.background_task_id_seq'::regclass);
 A   ALTER TABLE public.background_task ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    221    220    221            �
           2604    27778     background_task_completedtask id    DEFAULT     �   ALTER TABLE ONLY public.background_task_completedtask ALTER COLUMN id SET DEFAULT nextval('public.background_task_completedtask_id_seq'::regclass);
 O   ALTER TABLE public.background_task_completedtask ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    218    219    219            �
           2604    27713    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    212    213    213            �
           2604    27599    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198    199            �
           2604    27588    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            �
           2604    27751    main_app_violators id    DEFAULT     ~   ALTER TABLE ONLY public.main_app_violators ALTER COLUMN id SET DEFAULT nextval('public.main_app_violators_id_seq'::regclass);
 D   ALTER TABLE public.main_app_violators ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    215    216    216            �          0    27614 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    203   U�       �          0    27624    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    205   r�       �          0    27606    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    201   ��       �          0    27632 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    207   E�       �          0    27642    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    209   ��       �          0    27650    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    211   �       �          0    27787    background_task 
   TABLE DATA               �   COPY public.background_task (id, task_name, task_params, task_hash, verbose_name, priority, run_at, repeat, repeat_until, queue, attempts, failed_at, last_error, locked_by, locked_at, creator_object_id, creator_content_type_id) FROM stdin;
    public       postgres    false    221   4�       �          0    27775    background_task_completedtask 
   TABLE DATA               �   COPY public.background_task_completedtask (id, task_name, task_params, task_hash, verbose_name, priority, run_at, repeat, repeat_until, queue, attempts, failed_at, last_error, locked_by, locked_at, creator_object_id, creator_content_type_id) FROM stdin;
    public       postgres    false    219   �       �          0    27710    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    213   �       �          0    27596    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    199   D�       �          0    27585    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    197   ��       �          0    27762    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    217   ��       �          0    27741    main_app_studentdetails 
   TABLE DATA               �   COPY public.main_app_studentdetails (usn, first_name, last_name, gender, dob, phone, emailid, branch, section, photo) FROM stdin;
    public       postgres    false    214   \�       �          0    27748    main_app_violators 
   TABLE DATA               O   COPY public.main_app_violators (id, "timestamp", status, pic, usn) FROM stdin;
    public       postgres    false    216   x�       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       postgres    false    202            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       postgres    false    204            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);
            public       postgres    false    200            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public       postgres    false    208            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
            public       postgres    false    206            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    210            �           0    0 $   background_task_completedtask_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.background_task_completedtask_id_seq', 168, true);
            public       postgres    false    218            �           0    0    background_task_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.background_task_id_seq', 283, true);
            public       postgres    false    220            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 47, true);
            public       postgres    false    212            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);
            public       postgres    false    198            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 22, true);
            public       postgres    false    196            �           0    0    main_app_violators_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.main_app_violators_id_seq', 194, true);
            public       postgres    false    215            �
           2606    27739    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    203            �
           2606    27666 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    205    205            �
           2606    27629 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    205            �
           2606    27619    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    203            �
           2606    27657 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    201    201            �
           2606    27611 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    201            �
           2606    27647 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    209            �
           2606    27681 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         postgres    false    209    209            �
           2606    27637    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    207            �
           2606    27655 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    211                       2606    27695 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         postgres    false    211    211            �
           2606    27733     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    207                       2606    27784 @   background_task_completedtask background_task_completedtask_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.background_task_completedtask
    ADD CONSTRAINT background_task_completedtask_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.background_task_completedtask DROP CONSTRAINT background_task_completedtask_pkey;
       public         postgres    false    219            '           2606    27796 $   background_task background_task_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.background_task
    ADD CONSTRAINT background_task_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.background_task DROP CONSTRAINT background_task_pkey;
       public         postgres    false    221                       2606    27719 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    213            �
           2606    27603 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    199    199            �
           2606    27601 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    199            �
           2606    27593 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    197                       2606    27769 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    217                       2606    27745 4   main_app_studentdetails main_app_studentdetails_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.main_app_studentdetails
    ADD CONSTRAINT main_app_studentdetails_pkey PRIMARY KEY (usn);
 ^   ALTER TABLE ONLY public.main_app_studentdetails DROP CONSTRAINT main_app_studentdetails_pkey;
       public         postgres    false    214                       2606    27753 *   main_app_violators main_app_violators_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.main_app_violators
    ADD CONSTRAINT main_app_violators_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.main_app_violators DROP CONSTRAINT main_app_violators_pkey;
       public         postgres    false    216            �
           1259    27740    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    203            �
           1259    27677 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    205            �
           1259    27678 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    205            �
           1259    27663 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    201            �
           1259    27693 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         postgres    false    209            �
           1259    27692 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         postgres    false    209            �
           1259    27707 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         postgres    false    211                        1259    27706 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         postgres    false    211            �
           1259    27734     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    207                        1259    27829 !   background_task_attempts_a9ade23d    INDEX     a   CREATE INDEX background_task_attempts_a9ade23d ON public.background_task USING btree (attempts);
 5   DROP INDEX public.background_task_attempts_a9ade23d;
       public         postgres    false    221                       1259    27810 /   background_task_completedtask_attempts_772a6783    INDEX     }   CREATE INDEX background_task_completedtask_attempts_772a6783 ON public.background_task_completedtask USING btree (attempts);
 C   DROP INDEX public.background_task_completedtask_attempts_772a6783;
       public         postgres    false    219                       1259    27815 >   background_task_completedtask_creator_content_type_id_21d6a741    INDEX     �   CREATE INDEX background_task_completedtask_creator_content_type_id_21d6a741 ON public.background_task_completedtask USING btree (creator_content_type_id);
 R   DROP INDEX public.background_task_completedtask_creator_content_type_id_21d6a741;
       public         postgres    false    219                       1259    27811 0   background_task_completedtask_failed_at_3de56618    INDEX        CREATE INDEX background_task_completedtask_failed_at_3de56618 ON public.background_task_completedtask USING btree (failed_at);
 D   DROP INDEX public.background_task_completedtask_failed_at_3de56618;
       public         postgres    false    219                       1259    27814 0   background_task_completedtask_locked_at_29c62708    INDEX        CREATE INDEX background_task_completedtask_locked_at_29c62708 ON public.background_task_completedtask USING btree (locked_at);
 D   DROP INDEX public.background_task_completedtask_locked_at_29c62708;
       public         postgres    false    219                       1259    27812 0   background_task_completedtask_locked_by_edc8a213    INDEX        CREATE INDEX background_task_completedtask_locked_by_edc8a213 ON public.background_task_completedtask USING btree (locked_by);
 D   DROP INDEX public.background_task_completedtask_locked_by_edc8a213;
       public         postgres    false    219                       1259    27813 5   background_task_completedtask_locked_by_edc8a213_like    INDEX     �   CREATE INDEX background_task_completedtask_locked_by_edc8a213_like ON public.background_task_completedtask USING btree (locked_by varchar_pattern_ops);
 I   DROP INDEX public.background_task_completedtask_locked_by_edc8a213_like;
       public         postgres    false    219                       1259    27806 /   background_task_completedtask_priority_9080692e    INDEX     }   CREATE INDEX background_task_completedtask_priority_9080692e ON public.background_task_completedtask USING btree (priority);
 C   DROP INDEX public.background_task_completedtask_priority_9080692e;
       public         postgres    false    219                       1259    27808 ,   background_task_completedtask_queue_61fb0415    INDEX     w   CREATE INDEX background_task_completedtask_queue_61fb0415 ON public.background_task_completedtask USING btree (queue);
 @   DROP INDEX public.background_task_completedtask_queue_61fb0415;
       public         postgres    false    219                       1259    27809 1   background_task_completedtask_queue_61fb0415_like    INDEX     �   CREATE INDEX background_task_completedtask_queue_61fb0415_like ON public.background_task_completedtask USING btree (queue varchar_pattern_ops);
 E   DROP INDEX public.background_task_completedtask_queue_61fb0415_like;
       public         postgres    false    219                       1259    27807 -   background_task_completedtask_run_at_77c80f34    INDEX     y   CREATE INDEX background_task_completedtask_run_at_77c80f34 ON public.background_task_completedtask USING btree (run_at);
 A   DROP INDEX public.background_task_completedtask_run_at_77c80f34;
       public         postgres    false    219                       1259    27804 0   background_task_completedtask_task_hash_91187576    INDEX        CREATE INDEX background_task_completedtask_task_hash_91187576 ON public.background_task_completedtask USING btree (task_hash);
 D   DROP INDEX public.background_task_completedtask_task_hash_91187576;
       public         postgres    false    219                       1259    27805 5   background_task_completedtask_task_hash_91187576_like    INDEX     �   CREATE INDEX background_task_completedtask_task_hash_91187576_like ON public.background_task_completedtask USING btree (task_hash varchar_pattern_ops);
 I   DROP INDEX public.background_task_completedtask_task_hash_91187576_like;
       public         postgres    false    219                       1259    27802 0   background_task_completedtask_task_name_388dabc2    INDEX        CREATE INDEX background_task_completedtask_task_name_388dabc2 ON public.background_task_completedtask USING btree (task_name);
 D   DROP INDEX public.background_task_completedtask_task_name_388dabc2;
       public         postgres    false    219                       1259    27803 5   background_task_completedtask_task_name_388dabc2_like    INDEX     �   CREATE INDEX background_task_completedtask_task_name_388dabc2_like ON public.background_task_completedtask USING btree (task_name varchar_pattern_ops);
 I   DROP INDEX public.background_task_completedtask_task_name_388dabc2_like;
       public         postgres    false    219            !           1259    27834 0   background_task_creator_content_type_id_61cc9af3    INDEX        CREATE INDEX background_task_creator_content_type_id_61cc9af3 ON public.background_task USING btree (creator_content_type_id);
 D   DROP INDEX public.background_task_creator_content_type_id_61cc9af3;
       public         postgres    false    221            "           1259    27830 "   background_task_failed_at_b81bba14    INDEX     c   CREATE INDEX background_task_failed_at_b81bba14 ON public.background_task USING btree (failed_at);
 6   DROP INDEX public.background_task_failed_at_b81bba14;
       public         postgres    false    221            #           1259    27833 "   background_task_locked_at_0fb0f225    INDEX     c   CREATE INDEX background_task_locked_at_0fb0f225 ON public.background_task USING btree (locked_at);
 6   DROP INDEX public.background_task_locked_at_0fb0f225;
       public         postgres    false    221            $           1259    27831 "   background_task_locked_by_db7779e3    INDEX     c   CREATE INDEX background_task_locked_by_db7779e3 ON public.background_task USING btree (locked_by);
 6   DROP INDEX public.background_task_locked_by_db7779e3;
       public         postgres    false    221            %           1259    27832 '   background_task_locked_by_db7779e3_like    INDEX     |   CREATE INDEX background_task_locked_by_db7779e3_like ON public.background_task USING btree (locked_by varchar_pattern_ops);
 ;   DROP INDEX public.background_task_locked_by_db7779e3_like;
       public         postgres    false    221            (           1259    27825 !   background_task_priority_88bdbce9    INDEX     a   CREATE INDEX background_task_priority_88bdbce9 ON public.background_task USING btree (priority);
 5   DROP INDEX public.background_task_priority_88bdbce9;
       public         postgres    false    221            )           1259    27827    background_task_queue_1d5f3a40    INDEX     [   CREATE INDEX background_task_queue_1d5f3a40 ON public.background_task USING btree (queue);
 2   DROP INDEX public.background_task_queue_1d5f3a40;
       public         postgres    false    221            *           1259    27828 #   background_task_queue_1d5f3a40_like    INDEX     t   CREATE INDEX background_task_queue_1d5f3a40_like ON public.background_task USING btree (queue varchar_pattern_ops);
 7   DROP INDEX public.background_task_queue_1d5f3a40_like;
       public         postgres    false    221            +           1259    27826    background_task_run_at_7baca3aa    INDEX     ]   CREATE INDEX background_task_run_at_7baca3aa ON public.background_task USING btree (run_at);
 3   DROP INDEX public.background_task_run_at_7baca3aa;
       public         postgres    false    221            ,           1259    27823 "   background_task_task_hash_d8f233bd    INDEX     c   CREATE INDEX background_task_task_hash_d8f233bd ON public.background_task USING btree (task_hash);
 6   DROP INDEX public.background_task_task_hash_d8f233bd;
       public         postgres    false    221            -           1259    27824 '   background_task_task_hash_d8f233bd_like    INDEX     |   CREATE INDEX background_task_task_hash_d8f233bd_like ON public.background_task USING btree (task_hash varchar_pattern_ops);
 ;   DROP INDEX public.background_task_task_hash_d8f233bd_like;
       public         postgres    false    221            .           1259    27821 "   background_task_task_name_4562d56a    INDEX     c   CREATE INDEX background_task_task_name_4562d56a ON public.background_task USING btree (task_name);
 6   DROP INDEX public.background_task_task_name_4562d56a;
       public         postgres    false    221            /           1259    27822 '   background_task_task_name_4562d56a_like    INDEX     |   CREATE INDEX background_task_task_name_4562d56a_like ON public.background_task USING btree (task_name varchar_pattern_ops);
 ;   DROP INDEX public.background_task_task_name_4562d56a_like;
       public         postgres    false    221                       1259    27730 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    213                       1259    27731 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    213                       1259    27771 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    217                       1259    27770 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    217            	           1259    27754 )   main_app_studentdetails_usn_19427002_like    INDEX     �   CREATE INDEX main_app_studentdetails_usn_19427002_like ON public.main_app_studentdetails USING btree (usn varchar_pattern_ops);
 =   DROP INDEX public.main_app_studentdetails_usn_19427002_like;
       public         postgres    false    214            2           2606    27672 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    201    205    2790            1           2606    27667 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    2795    205    203            0           2606    27658 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    2785    201    199            4           2606    27687 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    209    203    2795            3           2606    27682 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    209    2803    207            6           2606    27701 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    201    211    2790            5           2606    27696 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    207    211    2803            9           2606    27797 ]   background_task_completedtask background_task_comp_creator_content_type_21d6a741_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.background_task_completedtask
    ADD CONSTRAINT background_task_comp_creator_content_type_21d6a741_fk_django_co FOREIGN KEY (creator_content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.background_task_completedtask DROP CONSTRAINT background_task_comp_creator_content_type_21d6a741_fk_django_co;
       public       postgres    false    199    2785    219            :           2606    27816 J   background_task background_task_creator_content_type_61cc9af3_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.background_task
    ADD CONSTRAINT background_task_creator_content_type_61cc9af3_fk_django_co FOREIGN KEY (creator_content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.background_task DROP CONSTRAINT background_task_creator_content_type_61cc9af3_fk_django_co;
       public       postgres    false    2785    221    199            7           2606    27720 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    2785    213    199            8           2606    27725 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       postgres    false    213    2803    207            �      x������ � �      �      x������ � �      �   �  x�e��n�0F����	����z�1iB%��( :��G'��;b7�����bZ��R�:���������w#�P"�p0�q% ����/�&��l���q�UjT�� �1��������� ��q�dyߖ}U5³.O\.����;Eu�H%`��:��l���ˆߏ]�> -��< ݍm�:4����2���Ղ�|E�.��($�+��x��|u"͌]���ښ�U;Ɠ�DމAτ���z	cY'�BI�n��`\?NV��Y�bQW"��#Q4������ۃ����m�s\��-�Ux�tֵ�Ρ<Cņp��6���ɰ�����
��_u��b��t���f)�b����fR��L�3�M`�O���g��CO�[l�j ĆEŀh�N�>h@��Ck�
�!      �   �   x�%��
�@ ��Wx�ƾ���(�Jʌ� 41�����3��� ��2���*��@A;簊]�����|�̟E<Aψ�w��E��-��ڭ�o*��:�`�g،��9� E0�m�ЁKΤC�d�%�D��)�GF:Tg�m,	��!8w�A;5M��j-�      �      x������ � �      �      x������ � �      �   �  x��Ko�F���� r��ڋ�������%���!J�l�2%Pt���w�d�b(�<T{��!Ȕ���<��F�ܗus]�V�+�wk1��j����zu[���ϟ�\f���dSc�@�T��΁�X�y	֠S���4��ۓ��<A�p%��('�%
Iޚ_�Ε<���<>������tP�+%�B�z�*8�*�!��s	BAx�@�?��rZM��]v~�\wY[M��˦�b�-�uw�M���U��]^���v]��YQ�m�鲙��(��[��|U�zR뺫�V�˛*<?�]�]ǯ[�/����2[�M�����&��\�MS��c�l��L�_����2{���{|t�W4��r�����p��b��ln�כg����[=�[9��W�M�-ۺ���m9���UE1���O�e��F�OW�Qi[�W��'on��j2-���g�ө����ݑ�q#�/hGm�&���z�m�������p�.�����}c���.��D�ͷ���fZ��4~�s�a���6���o!ַ���㗢y�um=y�_�v�����eS}���β�$��,\��Yf�Ӂ����gE�GЪ$�0�^�q��`Ә����0��aا�%Q�2�Zx���� �*�k��W�-
&�U8[�j'��Y�b�Ζ��-;%B0Xv+Py吃+F��A����6�ٸf����n}3kq� �;2O�ϣl����2WZ�Tэ�s�I��H@0g~LL�m2U^hKƈ�iDmJh�X�=!�O���\��g�Q�������ư�	�� ��a@t{�Ȑ�)���Q�jiT���~6���6�|=�n!�D�B�$� �U����+��Ț�1�)p�Y�nT�#���$����@��۳U�\�t�zh2��~�`�7æDH�	%<�zO������`���V�QM\{���+��p�ƥ�*M^�0x���{!�5R��*�B*��n��f�6G-��^(�;Liz���	c5��O��h+H��\�f7�nt�Dn�� �[�fP(f�#Fu��\�Zƌ��'��\Lq�ANq�0�a�E0Q����-��� #x��<x���q�(�<��d{&t�r�"����3���Q#x��p�^�X��2�=�J\�@��vآc��F�����@������2�G�`��8A�A��d��dT��DAFp�d�ye�	g�sAF��!��5OR8G��)�2��&�S��'�0���1#�d�0��*a�����3��+��^K4/�ꩂd=T��4i�Z���%0�X>"�-�x�2��&k�j.��cvF��E0YU;���@�dw�D����� D���8�(A�q��1���U���>�=��*Q�s����Ԉ�9Q�1�Z�)����ا*����
A`<r��n�,�wS�p_��ĵ(����9A�^��3;�aH�`0�J�a�$�i�\���Դ���<��2�ziMɾ�4{�U�9��4ƴ�I��@.����>�땤��l�
Mp�i��4��U�	gP�Q��Y�-��>��!�u�1�p��ڗ��ri�+��\im��Tˠ!���7û��+��9�Ri�`D0n!�x#�� Hi|sD�
m���� #�C0M��S�+�'�b��F0���qO$#�K�2AF��`��v�\Hi��A2���Q#��z4H9�2AF�_qzz���kT      �      x��_�7����O�`�qnL����!�^�v���=D���zfk���q�w��~UlIVS͜��Ul�8�(��M���b^=M����Y���[1ow�l�X�&Ϗ�m�����m��xu3kg��Vm wz��������|�Z��.�W㿾��P"���-���H�@	θ��?�>B����?^�e�
�=h�/K|���5��Z� #���f:k靈����z�k6��]��t�l�����h�j�o˶���x��v������e5��^Mg��|���v��޸�����x�صo�鋧-��U<l�Th�Ҏǝ����m��U�hu�,V���d�Z���i�_V�������m��W�����/V�e�Y�H�7���֓��x����b��w��v���_֫�n�Y��~����׵������� 2&�#�M߷ng�-�����L����w�X��s�9��i{`�v����˜�����t�܊��V<������o~�g߉I�魧��]n|Eo��zq�oL����z��n���f��t���l��=�N~zi7�D�涉��OW�5�u��_ԑ��:��rM/�k"�d�HO��M���^���Ow���17��m���b�k7��(Aw���=�N���z3i�1[R?��vJ��M�\�v��`'�b {�X=/i��Y���o��3������ߕ��瓟n��������<g�Ə@����pw��G�Ӥ�fn�W�3��t��9�dkck���{��\�&ۗ���}��m3{lg���fz�lߥ/�ֆG�M6w/��|r:N�����g���͎~m��{j��ϛv�*��H���v�}|�����P��� d䌦�frK�P������F�R𬿝������f����v�|��XS�6���Fu��ى��7��Ŭ�Ҝӎ�?m�l��D�{�P�/ŏk�������a��^R�V���>���r��f�ތ�o��՚��ؠ������ͼy�_��Hv�AEӫ�n3]�o����iɨX.�����n�1=��y���6����G�U�ݚ�:�D���v5^e,ae���9�Yª�%�Fҋ��z0{SX]M�)|5��������WS�j
_M�)\�&[T	���3�u-S�pƫ��/d��Fi�_�6���<�����ʓI�c���u�J�.jg����&��I��[o�%�&�5�~;�Z��5������
i��Q�c����V��3�B��4�
�zf :��\莙<-c�KI
@�SC-j��K�13
3�`i��	u���X�Q<w|ڸ�<j�tA����Xd��-/�8i�� �Fm�d�]C���뤽�<M:�:v���B��� �	��	$CMjT����k��X�A���Wۑ6BkMo��k�D���5+�W�T��PS)�֧ݺ�V��#
�P欏58AΈ�ɼWV/��R5FJ��J�O�nB��}RHKР� ����X?��`$`��C��d4y�w��^<�����X��������ԋ�[zXV-�7l6)��1uާ����	 e$bY�xR�vl���_�&Q�W���.��~݀��{%Qg�ک��H+b0V&�Ne��I���n���_��)�*qm��R<��9]p�9o�$��'�iXV'�To�w��1?2�4�Q�Jg��*�X�aK�g 3�C��N��׈X\#�H!c3Av�i���k�C�(���2��0͒��a�Ʃ*��~I9Ҋ&/MV�0�
z���k�vq�x��P�y&ӧ��IR봇��F��gA�BN#C��Z�ڇ��;� xA�^ ����$-]C!��ɞ��]n��@��\B]C!R���T�ǌ遠�:+E���jUC%��i&�:(s5���%��L]\'���^{�AJ�]hr���Rd�Ԉ}�ZW�]���"ɐйY/CM3:Kʼ��R\+�y��JwISGQAk跴.�Փ�i�*�C��^���.����f%��vu��]0}�TW�]���Mz�\��ځBZ
�Q�d3��Z��4�� �9?q�$E^�5�.��4�j��\�>���z�L�`tq��'���
�+6d��sjMMM�L:uq�x�&U4���u'�rM��u�"կ�0���:�05/P�RI�����kF.�+f�IV���w�:j��  o@zm2�u���x4 ��u# +�ɲόF�e�a�RSK�]#SG/R��,{O.n�[C��A�d!��ъ؅�&(�t��w�n'ԅ�@�ъ�l )p���BI��y)�d 2�ƞ���~eD4s��$�F���f����~^� �<ש3�4�
V%Mu�"�O��r�jf�)CM���]:��ы'�j��!]�3u�"*���S�[��Q�!hu���ыD��C�@N/QGY=��:z��Wԯ���{��$+J��߯mň�wcH�� ���h$�$���ьHzN	j1��Ah�aG5��+iƸ4@e]v�w ���zI����� ���Q���$)j0�t�Jz��ε�5���G�d����ۻ�v�_��l��-�r�zx8�utBۼkO/;>�i���noO��n�����;k�tF`_ï>��E���'�6DΎ��y$�7��Bl����#�a��z��,�^v�>���_׫�����Mw���gҬ������u,�z��n�/K�n)�J6`�6^)}6^G�u�^G�^�y)mr������ĳ�����~h���*�GɁI��:��##�42�!��B��x;:���t6�9�cs�LND�:�1�ע}����A�d��$H�Upu�
K��2!(J!r CHvl\_'��t��:&Y�:�$�SWpv:j20���\BeU`]���*x;]��x��2f�Ԇ��q���~iL��3�q����w�\���p�P>wt-CM�*o0=#XA)r�1���r�2�$+!�$�UЊ5��n�G95Oz�v�TbW��"xԹU�5�y��_A)v�k�h��"��x�A*�U$�JZ�sH��)��YVk�Mں�V��X���e���;Y��D��JZ��Y���6��,+�Z:�!����YW��Q�M�Aj�Ձ}�Wҋ1�&H-����Ԝ7�ʐ��Jz1��*�Ʌ�e�YV���k_I/�y�!T�s`C�QV��K\\_I/�8��eV�@��Ƚ�w�PI56& Ș�d���J����Cը%�Eזw�>��J����k���F�����s���Hɩ�PG5R�ƒ���m�k�����?��jf�Ҹf�9�%	u�@��H2�ϣ2�C�:D�C4*1'$�+>1X��<4D��?��������MB�����'ƞ���+�T�A�R�n��ms�rO�v����z�޼?>?���fB�7�n����]}�7Z�o!b�×e7k<p�'<�������C+f��#����[3�zK]�[���R���4��M����#g�]��?�z�a4:��̐����]��J�� �qm�����MkN���<;�Hߞ�'��>:ׯ�@'�T*{O{e�Ki˫��l���>��~�H�r+j�Ep�1I�#K{�Gl�\jksI����Ý��d�di7��������?;f�S��|���# ��
m6'G��Db�b0�Ҏ: ��V�@R ����hy�/�#daʐ`��^� :�ذR粶b+>�������Ew�&��y]&wrz;
�ҫ���&��L:������IX�k%�]<����ut�%���p^J�9����0HIjm���06	ˉ��q�30�kI*�Mi��&a��q�$�ű����I���Z��\��ߡ����1�T:Ί�� ��� �;ݘ��`��죲�����2�|� ���ʐZ���E� �f,J'�4�5��:��Qf�ntz�����͏ 6f'����3�x���d/���h+M��ȶA�(*�N�
�7?������)�ϣF�҉�Z8��	 ���ryYc��JL;v%O5F_JN�{�޳�R���.Ů�:>�l��\�� �cOUZeS�p�� ���l��,�YcW2麛G�s#��5�\[H�C�,�{ �]�j��z�I�աx��#6�PZa~�| ��r.��c�]IC� �  �ˉ�#\ҷ��$��x��#�v����(���V�]IIz�t0�
_�IHXK�J�ۋ�;��]�n��d�B�i�.��WI�)Ow~�&�)ksi0����Fyu6�א �I?m���&�UI��Y<���8K�Pv�?{�g����0C�qI/�3e]ܢ�V���:@vjh_�������`�� �*���#�:�}]�-� �k��we�y�[�']y�.n� H�k�r��3ؚ��.$�x�\�ǝ&I*�Zyn��
���ߟ
Ɍ3�V����
�^�8�xu��tg�q�gQ��`ѥ��}�8��-�r^�E�T�0�ΨF�9O;Ɩ� g[&ů�8�-eN��M�oϢ���yqЁ�m�W�d��*u��)~�� Ơ��Wr=��O~6)3FM�'�/��%/�1�|��E)rB{���$�����85|���w�&a='YO�+��xss �5w!F��d�����]) ��s����06_���%��W�����'J]�G��N�ؕp�޷�R^�
�5�Y�bW�cV�Ǘݲ�V�gI��V�,�7V���9������n���刍H3=�Kb⣰
0�����{9p����֎�N��]II����u.�\�3�ѷ'g���/G >�&�Υ��`k'$�dI�(~�K`d�;�a�4m��v-I؜O��%�C؝���M:$�hIP��+�x���ֻ�dO��7�����el��]�D�_� �����T',���ů~ۀ����M����VgOwA�B1��qNA�ST�� $/�(�\ε���*-1�=
�_�r��U��3�� u'�&��ܪů~9� 8+i�������d)~�˾~�ٲA�����$�UA&�����/Gjp�l�2n�u��ް�/9(Nz��ﳨITr׭M{Hq�x  [8:�>L��ܓ���⺱@�� -�)��gQ�t�J�t%��-Gjŷ���u�C�/%�H�>�X|����ʛ�      �     x���Mk�0���*��[��z�q��`�cW���%l�B�[�{�G��
��]�����W��aô5n˾%�{gm|g� �!n���n<���x�y��2�.��ǻ�~<ύ4-��p5ֆ��I�Օ��^[2��� 1ꫥ_?���ͨ���y��i��nh���o�p���[�-���`�ѩ�����~<�x����k:/�7ݧ����Ǉ�{�v_�՗��q��n��ݿ�ǖ� n���F$��{�˚W��T��Q-"�C���,��)�1�	�	��i�"$Y�30WIb�E��$"��\D��$�ipTI"��"�RD��Ap%�L�{�J����2��*5dWb�4������-�.���)'n��-�܂�[�5�)��kpRn!�<<�Rn!���&�2��3D�-�>
�r�r��HRia�Ѧ�8�HRi��m�-<C���M<�Zi�-Kz��p�Zi����"Y�z���i�|�JkM�Q���i��]��~`�
鵅�w=����N������f�# �[      �   �   x�e�Y
�0D��Ô�{�Rj,R[6��훅�B��fF��^ ���ʄ�j/�\�W�I�9}I5�i��\�]�k6e�_�(�m��B$/-�j��I�F>(޾�ѧ@������Sq���~́��B������!���K      �   �  x����n�0���S�^D�]���� X�q�H�JIF����v��Ej>����!����2�� 4����mE@���{&�B��7�Ğ��*;Oo�D����U�*{�|�_���D�T���ME���8^Lt]8;�\c����/7�a�����Co^[{2���)�MӠ�+�%=ʞ�����vn�&Q�ZiM���m'��b��q1� Lg?L��S�k��2���
���yL�Y�>I�Kf���=h�\M�aڎ��T������֎Ӳ	�F���&p� �$S�fK��5�%�m�b���f5t��?�)��Z	c��s�hO���(�X!�ͤ��.8Ǽ=䅥���-�`r�Pd�J;�0�#IBf�,$4��rf���r����D#P�)]G�����Χ8��JU�ֽ����]�,��(�?�l��C�Y�y�)�Ҿ�C���ٟ܏5qdM�a��ޗm�G3���1����jL��- }��؀�� ��`��t�Y���n�Wf��      �   a  x���K��@ ��x��SX?ݴ<v80 f�Re6�<�����OY����ڵh{�B�����'ȋ�Pz%�\1�����M3���zpm�ϓ�U������l6�R��-���W4�i�lƶ��X�C)|qϺ@��m~NiJ\ٮpJ�+[��{�$�M⨩�qkj���5K��Ⅷ{��ꤧBq=�'�}?���| M�$7cj�zrb�c(�B�h���@*������c���
}� Q Y��M$�5[$����@4��Ѳ[?��F��n�ש��v��<q����r�'�~���ٗ�X��2�%� 7�f\+��lw[��~w��?Kk���F"���{��l� ���N      �     x���Qk�0ǟ�O��%&1�mEelŮ�P�%hР��֕~���F�*����w�?�{�<=���A6c�=�)�B� %A (�8����Zu�6Rwa�H{3���c��-�/m���V)�mty~Z������R�؎��M�Hw�P��! �ؓ�'�3F�L��c�Ч�E�m÷�˟�DpR��un���pPUu�0���e1O|�68�1^��!ϲ��1p���S�����l*s
<��p�1&������z��͟      �     x���WOkK҆������Y�չ�3N��1��H#��8��j��y�V!�w�G�Ե�/)$�#�?��u%�J��9��?a���k�5��m���g��j����l���W�h>��Qm4��,�R�Ew��A)�S�'@	����z~fD���<{%e Ax�׿������,�]	���
�/*C�xN�,�I��T�o|�X7L��)����W�}R�K_��<e���~_�U�~K�B�������~hv����6��#O7n���B��AP�Q��F����;�w�Sk���R���5��v��(j�HI�
R(�؍o;��ǓM/�������+���K�n4hX��VOw_d��2�K��J��ᬵ����E�,P_	�Xc�e�s��n�Di)DR9��d�b�:�ҋt? Mb��.�2o�P&����~GJ-�5>����K�1��s����g7�]�k�"�D�A��w��o<��6�@ ���X����qM�(��Կ@\ܶO�!�m����g�T��e�\Жu�������@�(pʰ��{�i��@#�����Lgo�O�k�e�+!0ޣg��}����#a����\l���i�'LO��.(� ��Yޗ��6qk2P&���A�P�?��*�T"�<�+��7�,S���6G�@�l��V�w�����c�0%e�K�҆�&h�E���MT�T���x��(�*}<��z��	SS&�D��Þ�६��L�)c�f�7��R�uSaZʔ*� x���o����0e�-�ޭb�Y�.s7�&a��(��d#b��Y�Xm�m~8y/f�L���!�9ʛ�%AH�4>��[j���0!ˌ��6��KSS�o�t!),:%�=�^q�O�8��L4$�|�lnK�p�%j�C2B(>fL����Ch(k+�k�OU	�Im说E���y�ԋ�Ɗ��Lг[��uu��	�('���9�����[�JO�k����v^{�"o�����2��&���8�x���Y!��ل+���;v��õ��}fV9}1� g��k�ᣔ��MV6�-��o�Rkw]�,2�db �UZ� ����W�63Y� ����|W��z�M��2�Ht�O�@��5�����
Kk�
.>�m� ̬|�w#13b�t{�R���k��9�X��'�z!�TD�6������;�R��ܛ}������	�R�g/���o�S�H"�6�[f��UM/ҋ$�VA������lv�,��Gb��/Gn�:Y�Ӌ$�A����b��tޛ�,-�O��Ak>�ڔ^2����N@I~���j�odV<2v@c���Q|�Ňv ̬x��,f�NH�З폮)���e�{�t�~<'����ti`V9��.�|����ؓ��e�#�%�b�ˊ1�ă�!Ȭv�Ы�X->d��D��Nl��D`B�;�Nnx��I�e�������1�'�ˊG�膄�����k�I����>:"���|�v��Kڈ���!f��;>F���f����n+��w�\�dw�Sґ��r��E��~��j��<�Ï@k��������쁸J/)�9&Ֆ�5�ϲ�{!L�e�\3�y;����c�yM�a��,�!�F�:yJ��2Q;�K�W�Ӿ��5��xK��F���d��v�� �ǻ,��N����u�n�Pн{��`|����T�C���2e����em);�Yf r�Pxg$k����rG����'$/߀Y��a�IZ���Ǆ3�#P�U}�	a�h�XF
ŚR���������G��V ���{Q�pO�DF��B����cQ[G�DFG����7q!��7[�$2
���ޔ6�ܝ�&�Q�&o�
|�`Uy��)��(��4hL���]5?|&Y;���4V���4n��?<�
�Bc���)��ם�)4+%���Ch�_XTzs���jIk_:��R���|�Nd��D#�M�H_�¼>���JI��0fs��%��d��X!DVK�`���ڼ�w�y/�����(eb��t�U�MoZ+�7T��B�0���(�����hVK�*�h|�+��[(�0�?-�8�0�81 A��+�f
)�:��cq��{�����n;*)�@�D�k���#���"���X	[�<oO������.�#����u�a����ʛtΦND�����S�M9�'=:1q6�pb�n�[����ڏ�@�8�H��c'V�$o=���Ll����o�|~w;-��6s��gb�����Y�PZQg/E+/�xc�������u��U�l6 ��)�W`��y��	�p6�p�*������6�rS��PО�Q|��A߸%y��	��`	����fs��BMz�ÑN^0���;w���Z
�s3:8���k
�7�5�ٜ�	�q�a��3m���4��PO�h��Y!�3-�_�Z���,�\A�_]0n'���\���٨�	�������z�Q�=�dEul	9m{�~z�2z��L"(S|�0`U�^]�^i����챍�֬��������Z��|��~k&�L�qDР��GJveXU:#
%�:v
<8ɫ�3f�D�9���\�C���7��dS}��JA�z��??�W�1ݓ�\PDP��^+�Y�ڍ�@M_=ae������ԜA]>�ӁT1���(e/0���7����M��c�f&x����/���&j���r���\?��a�DM�8�=ϬU���褉�B�$��bf�R��Mg#�~ATR�A��|l���w����fNP,�rL��
�aIӌ�l��T�����4��q���gS'�Tq��8��F�m1 ̳A0��o�x��X��}�����l��7T���RZ��+�Q����1KJD�����p���&.��2���@ztN����?/?:��3���'x�ƱyI׍����8h���Ȍ���~����۷�I9޻������|����4���0+�[��r��`O�B�����x�p�.�h�w6�pbb!���t1l]O�.�fդM�z�*��f�}�;)�d�5���W��-<�%�2��#����e}�Xӎ�%z:�'bV��ѓ�&�� �l�DO��0�'ʛ���F@�d����c"�0|�3�VտQ(�����!����=�TɄX�'�Z�����۝A冖��	k|�(�%?��m���4:Y"('I5���3�����~�㈠\���a�gϴԮȜ��A?������e��/JC�DP.�o���/w�JőAopDQ�,Jk�������T�!�E��O��J`C�j^��/��pDQ�g�E���7�\͵h��E�cV)�_�{��hR툢B�v��w����([�B�����X�a��h��^��U�9�EZ���嫏��-�U�9���}-'�ތz~�UBUt}����M�shS;�YE!#�tR�&%:9sߢ�b�U���������Q�=��ӳQ�����1B;k�/�^�嵢���,�	Kg|�P\�g�!�� Ά!~C�dl��͞������%g�'(�Ω����x�j��'�l�Ÿ��2a�������}��q�?L�L_2����]���u6q����2�7SwWޘ)u�g'h��	�3�z�Y�
�j\���Em���enI�*��e*]p|�W����������8��B�`����͜8�'���A٢+     