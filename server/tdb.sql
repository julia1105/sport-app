PGDMP         .                x            testdb    12.2    12.2 �               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16436    testdb    DATABASE     �   CREATE DATABASE testdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE testdb;
                postgres    false            �            1259    25557    CharExes    TABLE     �   CREATE TABLE public."CharExes" (
    ce_id integer NOT NULL,
    character_id integer NOT NULL,
    exercise_id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."CharExes";
       public         heap    postgres    false            �            1259    25555    CharExes_ce_id_seq    SEQUENCE     �   CREATE SEQUENCE public."CharExes_ce_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."CharExes_ce_id_seq";
       public          postgres    false    246                       0    0    CharExes_ce_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."CharExes_ce_id_seq" OWNED BY public."CharExes".ce_id;
          public          postgres    false    245            �            1259    25549 
   Characters    TABLE     �   CREATE TABLE public."Characters" (
    character_id integer NOT NULL,
    duration integer NOT NULL,
    count integer NOT NULL,
    approach integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
     DROP TABLE public."Characters";
       public         heap    postgres    false            �            1259    25547    Characters_character_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Characters_character_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."Characters_character_id_seq";
       public          postgres    false    244                       0    0    Characters_character_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."Characters_character_id_seq" OWNED BY public."Characters".character_id;
          public          postgres    false    243            �            1259    25518    DETrains    TABLE     �   CREATE TABLE public."DETrains" (
    detrain_id integer NOT NULL,
    dt_id integer NOT NULL,
    train_id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."DETrains";
       public         heap    postgres    false                       0    0    TABLE "DETrains"    ACL     a   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,UPDATE ON TABLE public."DETrains" TO testdb_group;
          public          postgres    false    240            �            1259    25516    DETrains_detrain_id_seq    SEQUENCE     �   CREATE SEQUENCE public."DETrains_detrain_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."DETrains_detrain_id_seq";
       public          postgres    false    240                       0    0    DETrains_detrain_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."DETrains_detrain_id_seq" OWNED BY public."DETrains".detrain_id;
          public          postgres    false    239                       0    0 "   SEQUENCE "DETrains_detrain_id_seq"    ACL     H   GRANT ALL ON SEQUENCE public."DETrains_detrain_id_seq" TO testdb_group;
          public          postgres    false    239            �            1259    25485    DTExercises    TABLE     �   CREATE TABLE public."DTExercises" (
    id integer NOT NULL,
    dtexer_id integer,
    dt_id integer,
    exercise_id integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public."DTExercises";
       public         heap    postgres    false                       0    0    TABLE "DTExercises"    ACL     d   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,UPDATE ON TABLE public."DTExercises" TO testdb_group;
          public          postgres    false    238            �            1259    25483    DTExercises_id_seq    SEQUENCE     �   CREATE SEQUENCE public."DTExercises_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."DTExercises_id_seq";
       public          postgres    false    238                        0    0    DTExercises_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."DTExercises_id_seq" OWNED BY public."DTExercises".id;
          public          postgres    false    237            !           0    0    SEQUENCE "DTExercises_id_seq"    ACL     C   GRANT ALL ON SEQUENCE public."DTExercises_id_seq" TO testdb_group;
          public          postgres    false    237            �            1259    25474 
   DateTrains    TABLE     �   CREATE TABLE public."DateTrains" (
    dt_id integer NOT NULL,
    "from" character varying(255) NOT NULL,
    "to" character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
     DROP TABLE public."DateTrains";
       public         heap    postgres    false            "           0    0    TABLE "DateTrains"    ACL     c   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,UPDATE ON TABLE public."DateTrains" TO testdb_group;
          public          postgres    false    236            �            1259    25472    DateTrains_dt_id_seq    SEQUENCE     �   CREATE SEQUENCE public."DateTrains_dt_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."DateTrains_dt_id_seq";
       public          postgres    false    236            #           0    0    DateTrains_dt_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."DateTrains_dt_id_seq" OWNED BY public."DateTrains".dt_id;
          public          postgres    false    235            $           0    0    SEQUENCE "DateTrains_dt_id_seq"    ACL     E   GRANT ALL ON SEQUENCE public."DateTrains_dt_id_seq" TO testdb_group;
          public          postgres    false    235            �            1259    25377    Events    TABLE        CREATE TABLE public."Events" (
    event_id integer NOT NULL,
    data character varying(255) NOT NULL,
    definition character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Events";
       public         heap    postgres    false            %           0    0    TABLE "Events"    ACL     _   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,UPDATE ON TABLE public."Events" TO testdb_group;
          public          postgres    false    228            �            1259    25375    Events_event_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Events_event_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Events_event_id_seq";
       public          postgres    false    228            &           0    0    Events_event_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Events_event_id_seq" OWNED BY public."Events".event_id;
          public          postgres    false    227            '           0    0    SEQUENCE "Events_event_id_seq"    ACL     D   GRANT ALL ON SEQUENCE public."Events_event_id_seq" TO testdb_group;
          public          postgres    false    227            �            1259    25538    ExercParams    TABLE     �   CREATE TABLE public."ExercParams" (
    exp_id integer NOT NULL,
    type character varying(255) NOT NULL,
    muscle character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public."ExercParams";
       public         heap    postgres    false            �            1259    25536    ExercParams_exp_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ExercParams_exp_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."ExercParams_exp_id_seq";
       public          postgres    false    242            (           0    0    ExercParams_exp_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."ExercParams_exp_id_seq" OWNED BY public."ExercParams".exp_id;
          public          postgres    false    241            �            1259    16786 	   Exercises    TABLE     &  CREATE TABLE public."Exercises" (
    exercise_id integer NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    definition character varying,
    img character varying,
    type character varying
);
    DROP TABLE public."Exercises";
       public         heap    postgres    false            )           0    0    TABLE "Exercises"    ACL     b   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,UPDATE ON TABLE public."Exercises" TO testdb_group;
          public          postgres    false    216            �            1259    16784    Exercises_exercise_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Exercises_exercise_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Exercises_exercise_id_seq";
       public          postgres    false    216            *           0    0    Exercises_exercise_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."Exercises_exercise_id_seq" OWNED BY public."Exercises".exercise_id;
          public          postgres    false    215            +           0    0 $   SEQUENCE "Exercises_exercise_id_seq"    ACL     J   GRANT ALL ON SEQUENCE public."Exercises_exercise_id_seq" TO testdb_group;
          public          postgres    false    215            �            1259    25336    FilterPlans    TABLE     �   CREATE TABLE public."FilterPlans" (
    fp_id integer NOT NULL,
    filter_id integer NOT NULL,
    plan_id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public."FilterPlans";
       public         heap    postgres    false            ,           0    0    TABLE "FilterPlans"    ACL     d   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,UPDATE ON TABLE public."FilterPlans" TO testdb_group;
          public          postgres    false    224            �            1259    25334    FilterPlans_fp_id_seq    SEQUENCE     �   CREATE SEQUENCE public."FilterPlans_fp_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."FilterPlans_fp_id_seq";
       public          postgres    false    224            -           0    0    FilterPlans_fp_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."FilterPlans_fp_id_seq" OWNED BY public."FilterPlans".fp_id;
          public          postgres    false    223            .           0    0     SEQUENCE "FilterPlans_fp_id_seq"    ACL     F   GRANT ALL ON SEQUENCE public."FilterPlans_fp_id_seq" TO testdb_group;
          public          postgres    false    223            �            1259    16748    Filters    TABLE     T  CREATE TABLE public."Filters" (
    filter_id integer NOT NULL,
    goal character varying(255),
    level character varying(255),
    period character varying(255),
    type character varying(255),
    duration character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Filters";
       public         heap    postgres    false            /           0    0    TABLE "Filters"    ACL     `   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,UPDATE ON TABLE public."Filters" TO testdb_group;
          public          postgres    false    212            �            1259    16746    Filters_filter_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Filters_filter_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."Filters_filter_user_id_seq";
       public          postgres    false    212            0           0    0    Filters_filter_user_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public."Filters_filter_user_id_seq" OWNED BY public."Filters".filter_id;
          public          postgres    false    211            1           0    0 %   SEQUENCE "Filters_filter_user_id_seq"    ACL     K   GRANT ALL ON SEQUENCE public."Filters_filter_user_id_seq" TO testdb_group;
          public          postgres    false    211            �            1259    25412    GroupEvents    TABLE     �   CREATE TABLE public."GroupEvents" (
    ge_id integer NOT NULL,
    event_id integer NOT NULL,
    group_id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public."GroupEvents";
       public         heap    postgres    false            2           0    0    TABLE "GroupEvents"    ACL     d   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,UPDATE ON TABLE public."GroupEvents" TO testdb_group;
          public          postgres    false    230            �            1259    25410    GroupEvents_ge_id_seq    SEQUENCE     �   CREATE SEQUENCE public."GroupEvents_ge_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."GroupEvents_ge_id_seq";
       public          postgres    false    230            3           0    0    GroupEvents_ge_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."GroupEvents_ge_id_seq" OWNED BY public."GroupEvents".ge_id;
          public          postgres    false    229            4           0    0     SEQUENCE "GroupEvents_ge_id_seq"    ACL     F   GRANT ALL ON SEQUENCE public."GroupEvents_ge_id_seq" TO testdb_group;
          public          postgres    false    229            �            1259    16703    Groups    TABLE     �   CREATE TABLE public."Groups" (
    group_id integer NOT NULL,
    title character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    user_id integer
);
    DROP TABLE public."Groups";
       public         heap    postgres    false            5           0    0    TABLE "Groups"    ACL     _   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,UPDATE ON TABLE public."Groups" TO testdb_group;
          public          postgres    false    210            �            1259    16701    Groups_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Groups_group_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Groups_group_id_seq";
       public          postgres    false    210            6           0    0    Groups_group_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Groups_group_id_seq" OWNED BY public."Groups".group_id;
          public          postgres    false    209            7           0    0    SEQUENCE "Groups_group_id_seq"    ACL     D   GRANT ALL ON SEQUENCE public."Groups_group_id_seq" TO testdb_group;
          public          postgres    false    209            �            1259    25565    Muscles    TABLE     �   CREATE TABLE public."Muscles" (
    mscl_id integer NOT NULL,
    title character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Muscles";
       public         heap    postgres    false            �            1259    25563    Muscles_mscl_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Muscles_mscl_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Muscles_mscl_id_seq";
       public          postgres    false    248            8           0    0    Muscles_mscl_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Muscles_mscl_id_seq" OWNED BY public."Muscles".mscl_id;
          public          postgres    false    247            �            1259    25458 
   Parameters    TABLE     9  CREATE TABLE public."Parameters" (
    param_id integer NOT NULL,
    measure character varying(255) NOT NULL,
    data character varying(255) NOT NULL,
    value integer NOT NULL,
    participant_id integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
     DROP TABLE public."Parameters";
       public         heap    postgres    false            9           0    0    TABLE "Parameters"    ACL     c   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,UPDATE ON TABLE public."Parameters" TO testdb_group;
          public          postgres    false    234            �            1259    25456    Parameters_param_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Parameters_param_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."Parameters_param_id_seq";
       public          postgres    false    234            :           0    0    Parameters_param_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."Parameters_param_id_seq" OWNED BY public."Parameters".param_id;
          public          postgres    false    233            ;           0    0 "   SEQUENCE "Parameters_param_id_seq"    ACL     H   GRANT ALL ON SEQUENCE public."Parameters_param_id_seq" TO testdb_group;
          public          postgres    false    233            �            1259    25093    Participants    TABLE     e  CREATE TABLE public."Participants" (
    participant_id integer NOT NULL,
    name character varying(255) NOT NULL,
    surname character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    group_id integer,
    sex character varying
);
 "   DROP TABLE public."Participants";
       public         heap    postgres    false            <           0    0    TABLE "Participants"    ACL     e   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,UPDATE ON TABLE public."Participants" TO testdb_group;
          public          postgres    false    218            �            1259    25091    Participants_participant_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Participants_participant_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."Participants_participant_id_seq";
       public          postgres    false    218            =           0    0    Participants_participant_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."Participants_participant_id_seq" OWNED BY public."Participants".participant_id;
          public          postgres    false    217            >           0    0 *   SEQUENCE "Participants_participant_id_seq"    ACL     P   GRANT ALL ON SEQUENCE public."Participants_participant_id_seq" TO testdb_group;
          public          postgres    false    217            �            1259    25369 
   PlanTrains    TABLE     �   CREATE TABLE public."PlanTrains" (
    pt_id integer NOT NULL,
    train_id integer NOT NULL,
    plan_id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
     DROP TABLE public."PlanTrains";
       public         heap    postgres    false            ?           0    0    TABLE "PlanTrains"    ACL     c   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,UPDATE ON TABLE public."PlanTrains" TO testdb_group;
          public          postgres    false    226            �            1259    25367    PlanTrains_pt_id_seq    SEQUENCE     �   CREATE SEQUENCE public."PlanTrains_pt_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."PlanTrains_pt_id_seq";
       public          postgres    false    226            @           0    0    PlanTrains_pt_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."PlanTrains_pt_id_seq" OWNED BY public."PlanTrains".pt_id;
          public          postgres    false    225            A           0    0    SEQUENCE "PlanTrains_pt_id_seq"    ACL     E   GRANT ALL ON SEQUENCE public."PlanTrains_pt_id_seq" TO testdb_group;
          public          postgres    false    225            �            1259    16767    Plans    TABLE     �   CREATE TABLE public."Plans" (
    plan_id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    name character varying
);
    DROP TABLE public."Plans";
       public         heap    postgres    false            B           0    0    TABLE "Plans"    ACL     ^   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,UPDATE ON TABLE public."Plans" TO testdb_group;
          public          postgres    false    214            �            1259    16765    Plans_plan_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Plans_plan_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Plans_plan_id_seq";
       public          postgres    false    214            C           0    0    Plans_plan_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Plans_plan_id_seq" OWNED BY public."Plans".plan_id;
          public          postgres    false    213            D           0    0    SEQUENCE "Plans_plan_id_seq"    ACL     B   GRANT ALL ON SEQUENCE public."Plans_plan_id_seq" TO testdb_group;
          public          postgres    false    213            �            1259    16476    Roles    TABLE     �   CREATE TABLE public."Roles" (
    role_id integer NOT NULL,
    role_name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Roles";
       public         heap    postgres    false            E           0    0    TABLE "Roles"    ACL     ^   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,UPDATE ON TABLE public."Roles" TO testdb_group;
          public          postgres    false    204            �            1259    16474    Roles_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Roles_role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Roles_role_id_seq";
       public          postgres    false    204            F           0    0    Roles_role_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Roles_role_id_seq" OWNED BY public."Roles".role_id;
          public          postgres    false    203            G           0    0    SEQUENCE "Roles_role_id_seq"    ACL     B   GRANT ALL ON SEQUENCE public."Roles_role_id_seq" TO testdb_group;
          public          postgres    false    203            �            1259    16469    SequelizeMeta    TABLE     R   CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);
 #   DROP TABLE public."SequelizeMeta";
       public         heap    postgres    false            H           0    0    TABLE "SequelizeMeta"    ACL     f   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,UPDATE ON TABLE public."SequelizeMeta" TO testdb_group;
          public          postgres    false    202            �            1259    25420 	   Standarts    TABLE     8  CREATE TABLE public."Standarts" (
    standart_id integer NOT NULL,
    test character varying(255) NOT NULL,
    data character varying(255) NOT NULL,
    value integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    participant_id integer
);
    DROP TABLE public."Standarts";
       public         heap    postgres    false            I           0    0    TABLE "Standarts"    ACL     b   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,UPDATE ON TABLE public."Standarts" TO testdb_group;
          public          postgres    false    232            �            1259    25418    Standarts_standart_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Standarts_standart_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Standarts_standart_id_seq";
       public          postgres    false    232            J           0    0    Standarts_standart_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."Standarts_standart_id_seq" OWNED BY public."Standarts".standart_id;
          public          postgres    false    231            K           0    0 $   SEQUENCE "Standarts_standart_id_seq"    ACL     J   GRANT ALL ON SEQUENCE public."Standarts_standart_id_seq" TO testdb_group;
          public          postgres    false    231            �            1259    25310    TrainExercises    TABLE     �   CREATE TABLE public."TrainExercises" (
    train_ex_id integer NOT NULL,
    train_id integer NOT NULL,
    exercise_id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 $   DROP TABLE public."TrainExercises";
       public         heap    postgres    false            L           0    0    TABLE "TrainExercises"    ACL     g   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,UPDATE ON TABLE public."TrainExercises" TO testdb_group;
          public          postgres    false    222            �            1259    25126    Trains    TABLE     G  CREATE TABLE public."Trains" (
    train_id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    type character varying,
    goal character varying,
    level character varying,
    definition character varying
);
    DROP TABLE public."Trains";
       public         heap    postgres    false            M           0    0    TABLE "Trains"    ACL     _   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,UPDATE ON TABLE public."Trains" TO testdb_group;
          public          postgres    false    220            �            1259    25124    Trains_train_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Trains_train_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Trains_train_id_seq";
       public          postgres    false    220            N           0    0    Trains_train_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Trains_train_id_seq" OWNED BY public."Trains".train_id;
          public          postgres    false    219            O           0    0    SEQUENCE "Trains_train_id_seq"    ACL     D   GRANT ALL ON SEQUENCE public."Trains_train_id_seq" TO testdb_group;
          public          postgres    false    219            �            1259    25589    TypeExes    TABLE     �   CREATE TABLE public."TypeExes" (
    te_id integer NOT NULL,
    type character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."TypeExes";
       public         heap    postgres    false            �            1259    25587    TypeExes_te_id_seq    SEQUENCE     �   CREATE SEQUENCE public."TypeExes_te_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."TypeExes_te_id_seq";
       public          postgres    false    250            P           0    0    TypeExes_te_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."TypeExes_te_id_seq" OWNED BY public."TypeExes".te_id;
          public          postgres    false    249            �            1259    16523 	   UserRoles    TABLE     �   CREATE TABLE public."UserRoles" (
    user_role_id integer NOT NULL,
    role_id integer NOT NULL,
    user_id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."UserRoles";
       public         heap    postgres    false            Q           0    0    TABLE "UserRoles"    ACL     b   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,UPDATE ON TABLE public."UserRoles" TO testdb_group;
          public          postgres    false    206            �            1259    16521    UserRoles_user_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserRoles_user_role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."UserRoles_user_role_id_seq";
       public          postgres    false    206            R           0    0    UserRoles_user_role_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."UserRoles_user_role_id_seq" OWNED BY public."UserRoles".user_role_id;
          public          postgres    false    205            S           0    0 %   SEQUENCE "UserRoles_user_role_id_seq"    ACL     K   GRANT ALL ON SEQUENCE public."UserRoles_user_role_id_seq" TO testdb_group;
          public          postgres    false    205            �            1259    16547    Users    TABLE       CREATE TABLE public."Users" (
    user_id integer NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    salt character varying(255)
);
    DROP TABLE public."Users";
       public         heap    postgres    false            T           0    0    TABLE "Users"    ACL     ^   GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,UPDATE ON TABLE public."Users" TO testdb_group;
          public          postgres    false    208            �            1259    16545    Users_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Users_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Users_user_id_seq";
       public          postgres    false    208            U           0    0    Users_user_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Users_user_id_seq" OWNED BY public."Users".user_id;
          public          postgres    false    207            V           0    0    SEQUENCE "Users_user_id_seq"    ACL     B   GRANT ALL ON SEQUENCE public."Users_user_id_seq" TO testdb_group;
          public          postgres    false    207            �            1259    25308    trainExercises_train_ex_id_seq    SEQUENCE     �   CREATE SEQUENCE public."trainExercises_train_ex_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."trainExercises_train_ex_id_seq";
       public          postgres    false    222            W           0    0    trainExercises_train_ex_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."trainExercises_train_ex_id_seq" OWNED BY public."TrainExercises".train_ex_id;
          public          postgres    false    221            X           0    0 )   SEQUENCE "trainExercises_train_ex_id_seq"    ACL     O   GRANT ALL ON SEQUENCE public."trainExercises_train_ex_id_seq" TO testdb_group;
          public          postgres    false    221            .           2604    25560    CharExes ce_id    DEFAULT     t   ALTER TABLE ONLY public."CharExes" ALTER COLUMN ce_id SET DEFAULT nextval('public."CharExes_ce_id_seq"'::regclass);
 ?   ALTER TABLE public."CharExes" ALTER COLUMN ce_id DROP DEFAULT;
       public          postgres    false    245    246    246            -           2604    25552    Characters character_id    DEFAULT     �   ALTER TABLE ONLY public."Characters" ALTER COLUMN character_id SET DEFAULT nextval('public."Characters_character_id_seq"'::regclass);
 H   ALTER TABLE public."Characters" ALTER COLUMN character_id DROP DEFAULT;
       public          postgres    false    243    244    244            +           2604    25521    DETrains detrain_id    DEFAULT     ~   ALTER TABLE ONLY public."DETrains" ALTER COLUMN detrain_id SET DEFAULT nextval('public."DETrains_detrain_id_seq"'::regclass);
 D   ALTER TABLE public."DETrains" ALTER COLUMN detrain_id DROP DEFAULT;
       public          postgres    false    240    239    240            *           2604    25488    DTExercises id    DEFAULT     t   ALTER TABLE ONLY public."DTExercises" ALTER COLUMN id SET DEFAULT nextval('public."DTExercises_id_seq"'::regclass);
 ?   ALTER TABLE public."DTExercises" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237    238            )           2604    25477    DateTrains dt_id    DEFAULT     x   ALTER TABLE ONLY public."DateTrains" ALTER COLUMN dt_id SET DEFAULT nextval('public."DateTrains_dt_id_seq"'::regclass);
 A   ALTER TABLE public."DateTrains" ALTER COLUMN dt_id DROP DEFAULT;
       public          postgres    false    236    235    236            %           2604    25380    Events event_id    DEFAULT     v   ALTER TABLE ONLY public."Events" ALTER COLUMN event_id SET DEFAULT nextval('public."Events_event_id_seq"'::regclass);
 @   ALTER TABLE public."Events" ALTER COLUMN event_id DROP DEFAULT;
       public          postgres    false    228    227    228            ,           2604    25541    ExercParams exp_id    DEFAULT     |   ALTER TABLE ONLY public."ExercParams" ALTER COLUMN exp_id SET DEFAULT nextval('public."ExercParams_exp_id_seq"'::regclass);
 C   ALTER TABLE public."ExercParams" ALTER COLUMN exp_id DROP DEFAULT;
       public          postgres    false    241    242    242                       2604    16789    Exercises exercise_id    DEFAULT     �   ALTER TABLE ONLY public."Exercises" ALTER COLUMN exercise_id SET DEFAULT nextval('public."Exercises_exercise_id_seq"'::regclass);
 F   ALTER TABLE public."Exercises" ALTER COLUMN exercise_id DROP DEFAULT;
       public          postgres    false    216    215    216            #           2604    25339    FilterPlans fp_id    DEFAULT     z   ALTER TABLE ONLY public."FilterPlans" ALTER COLUMN fp_id SET DEFAULT nextval('public."FilterPlans_fp_id_seq"'::regclass);
 B   ALTER TABLE public."FilterPlans" ALTER COLUMN fp_id DROP DEFAULT;
       public          postgres    false    224    223    224                       2604    16751    Filters filter_id    DEFAULT        ALTER TABLE ONLY public."Filters" ALTER COLUMN filter_id SET DEFAULT nextval('public."Filters_filter_user_id_seq"'::regclass);
 B   ALTER TABLE public."Filters" ALTER COLUMN filter_id DROP DEFAULT;
       public          postgres    false    212    211    212            &           2604    25415    GroupEvents ge_id    DEFAULT     z   ALTER TABLE ONLY public."GroupEvents" ALTER COLUMN ge_id SET DEFAULT nextval('public."GroupEvents_ge_id_seq"'::regclass);
 B   ALTER TABLE public."GroupEvents" ALTER COLUMN ge_id DROP DEFAULT;
       public          postgres    false    230    229    230                       2604    16706    Groups group_id    DEFAULT     v   ALTER TABLE ONLY public."Groups" ALTER COLUMN group_id SET DEFAULT nextval('public."Groups_group_id_seq"'::regclass);
 @   ALTER TABLE public."Groups" ALTER COLUMN group_id DROP DEFAULT;
       public          postgres    false    209    210    210            /           2604    25568    Muscles mscl_id    DEFAULT     v   ALTER TABLE ONLY public."Muscles" ALTER COLUMN mscl_id SET DEFAULT nextval('public."Muscles_mscl_id_seq"'::regclass);
 @   ALTER TABLE public."Muscles" ALTER COLUMN mscl_id DROP DEFAULT;
       public          postgres    false    247    248    248            (           2604    25461    Parameters param_id    DEFAULT     ~   ALTER TABLE ONLY public."Parameters" ALTER COLUMN param_id SET DEFAULT nextval('public."Parameters_param_id_seq"'::regclass);
 D   ALTER TABLE public."Parameters" ALTER COLUMN param_id DROP DEFAULT;
       public          postgres    false    233    234    234                        2604    25096    Participants participant_id    DEFAULT     �   ALTER TABLE ONLY public."Participants" ALTER COLUMN participant_id SET DEFAULT nextval('public."Participants_participant_id_seq"'::regclass);
 L   ALTER TABLE public."Participants" ALTER COLUMN participant_id DROP DEFAULT;
       public          postgres    false    218    217    218            $           2604    25372    PlanTrains pt_id    DEFAULT     x   ALTER TABLE ONLY public."PlanTrains" ALTER COLUMN pt_id SET DEFAULT nextval('public."PlanTrains_pt_id_seq"'::regclass);
 A   ALTER TABLE public."PlanTrains" ALTER COLUMN pt_id DROP DEFAULT;
       public          postgres    false    226    225    226                       2604    16770    Plans plan_id    DEFAULT     r   ALTER TABLE ONLY public."Plans" ALTER COLUMN plan_id SET DEFAULT nextval('public."Plans_plan_id_seq"'::regclass);
 >   ALTER TABLE public."Plans" ALTER COLUMN plan_id DROP DEFAULT;
       public          postgres    false    214    213    214                       2604    16479    Roles role_id    DEFAULT     r   ALTER TABLE ONLY public."Roles" ALTER COLUMN role_id SET DEFAULT nextval('public."Roles_role_id_seq"'::regclass);
 >   ALTER TABLE public."Roles" ALTER COLUMN role_id DROP DEFAULT;
       public          postgres    false    204    203    204            '           2604    25423    Standarts standart_id    DEFAULT     �   ALTER TABLE ONLY public."Standarts" ALTER COLUMN standart_id SET DEFAULT nextval('public."Standarts_standart_id_seq"'::regclass);
 F   ALTER TABLE public."Standarts" ALTER COLUMN standart_id DROP DEFAULT;
       public          postgres    false    232    231    232            "           2604    25313    TrainExercises train_ex_id    DEFAULT     �   ALTER TABLE ONLY public."TrainExercises" ALTER COLUMN train_ex_id SET DEFAULT nextval('public."trainExercises_train_ex_id_seq"'::regclass);
 K   ALTER TABLE public."TrainExercises" ALTER COLUMN train_ex_id DROP DEFAULT;
       public          postgres    false    222    221    222            !           2604    25129    Trains train_id    DEFAULT     v   ALTER TABLE ONLY public."Trains" ALTER COLUMN train_id SET DEFAULT nextval('public."Trains_train_id_seq"'::regclass);
 @   ALTER TABLE public."Trains" ALTER COLUMN train_id DROP DEFAULT;
       public          postgres    false    220    219    220            0           2604    25592    TypeExes te_id    DEFAULT     t   ALTER TABLE ONLY public."TypeExes" ALTER COLUMN te_id SET DEFAULT nextval('public."TypeExes_te_id_seq"'::regclass);
 ?   ALTER TABLE public."TypeExes" ALTER COLUMN te_id DROP DEFAULT;
       public          postgres    false    250    249    250                       2604    16526    UserRoles user_role_id    DEFAULT     �   ALTER TABLE ONLY public."UserRoles" ALTER COLUMN user_role_id SET DEFAULT nextval('public."UserRoles_user_role_id_seq"'::regclass);
 G   ALTER TABLE public."UserRoles" ALTER COLUMN user_role_id DROP DEFAULT;
       public          postgres    false    206    205    206                       2604    16550    Users user_id    DEFAULT     r   ALTER TABLE ONLY public."Users" ALTER COLUMN user_id SET DEFAULT nextval('public."Users_user_id_seq"'::regclass);
 >   ALTER TABLE public."Users" ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    207    208    208                      0    25557    CharExes 
   TABLE DATA           `   COPY public."CharExes" (ce_id, character_id, exercise_id, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    246   ��                 0    25549 
   Characters 
   TABLE DATA           i   COPY public."Characters" (character_id, duration, count, approach, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    244   M�       	          0    25518    DETrains 
   TABLE DATA           [   COPY public."DETrains" (detrain_id, dt_id, train_id, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    240   ��                 0    25485    DTExercises 
   TABLE DATA           d   COPY public."DTExercises" (id, dtexer_id, dt_id, exercise_id, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    238   ��                 0    25474 
   DateTrains 
   TABLE DATA           U   COPY public."DateTrains" (dt_id, "from", "to", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    236   ��       �          0    25377    Events 
   TABLE DATA           X   COPY public."Events" (event_id, data, definition, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    228   T�                 0    25538    ExercParams 
   TABLE DATA           W   COPY public."ExercParams" (exp_id, type, muscle, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    242   ��       �          0    16786 	   Exercises 
   TABLE DATA           i   COPY public."Exercises" (exercise_id, name, "createdAt", "updatedAt", definition, img, type) FROM stdin;
    public          postgres    false    216   ��       �          0    25336    FilterPlans 
   TABLE DATA           \   COPY public."FilterPlans" (fp_id, filter_id, plan_id, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    224   ��       �          0    16748    Filters 
   TABLE DATA           m   COPY public."Filters" (filter_id, goal, level, period, type, duration, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    212   a�       �          0    25412    GroupEvents 
   TABLE DATA           \   COPY public."GroupEvents" (ge_id, event_id, group_id, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    230   ;�       �          0    16703    Groups 
   TABLE DATA           V   COPY public."Groups" (group_id, title, "createdAt", "updatedAt", user_id) FROM stdin;
    public          postgres    false    210   X�                 0    25565    Muscles 
   TABLE DATA           M   COPY public."Muscles" (mscl_id, title, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    248   �                 0    25458 
   Parameters 
   TABLE DATA           p   COPY public."Parameters" (param_id, measure, data, value, participant_id, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    234   "�       �          0    25093    Participants 
   TABLE DATA           w   COPY public."Participants" (participant_id, name, surname, email, "createdAt", "updatedAt", group_id, sex) FROM stdin;
    public          postgres    false    218   ?�       �          0    25369 
   PlanTrains 
   TABLE DATA           Z   COPY public."PlanTrains" (pt_id, train_id, plan_id, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    226   ��       �          0    16767    Plans 
   TABLE DATA           J   COPY public."Plans" (plan_id, "createdAt", "updatedAt", name) FROM stdin;
    public          postgres    false    214   5�       �          0    16476    Roles 
   TABLE DATA           O   COPY public."Roles" (role_id, role_name, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    204          �          0    16469    SequelizeMeta 
   TABLE DATA           /   COPY public."SequelizeMeta" (name) FROM stdin;
    public          postgres    false    202   |                 0    25420 	   Standarts 
   TABLE DATA           o   COPY public."Standarts" (standart_id, test, data, value, "createdAt", "updatedAt", participant_id) FROM stdin;
    public          postgres    false    232   �      �          0    25310    TrainExercises 
   TABLE DATA           h   COPY public."TrainExercises" (train_ex_id, train_id, exercise_id, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    222   )      �          0    25126    Trains 
   TABLE DATA           k   COPY public."Trains" (train_id, name, "createdAt", "updatedAt", type, goal, level, definition) FROM stdin;
    public          postgres    false    220   �                0    25589    TypeExes 
   TABLE DATA           K   COPY public."TypeExes" (te_id, type, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    250   Z      �          0    16523 	   UserRoles 
   TABLE DATA           _   COPY public."UserRoles" (user_role_id, role_id, user_id, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    206   w      �          0    16547    Users 
   TABLE DATA           [   COPY public."Users" (user_id, email, password, "createdAt", "updatedAt", salt) FROM stdin;
    public          postgres    false    208   �      Y           0    0    CharExes_ce_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."CharExes_ce_id_seq"', 4, true);
          public          postgres    false    245            Z           0    0    Characters_character_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."Characters_character_id_seq"', 3, true);
          public          postgres    false    243            [           0    0    DETrains_detrain_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."DETrains_detrain_id_seq"', 1, false);
          public          postgres    false    239            \           0    0    DTExercises_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."DTExercises_id_seq"', 1, false);
          public          postgres    false    237            ]           0    0    DateTrains_dt_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."DateTrains_dt_id_seq"', 25, true);
          public          postgres    false    235            ^           0    0    Events_event_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Events_event_id_seq"', 3, true);
          public          postgres    false    227            _           0    0    ExercParams_exp_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."ExercParams_exp_id_seq"', 1, false);
          public          postgres    false    241            `           0    0    Exercises_exercise_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."Exercises_exercise_id_seq"', 23, true);
          public          postgres    false    215            a           0    0    FilterPlans_fp_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."FilterPlans_fp_id_seq"', 4, true);
          public          postgres    false    223            b           0    0    Filters_filter_user_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."Filters_filter_user_id_seq"', 7, true);
          public          postgres    false    211            c           0    0    GroupEvents_ge_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."GroupEvents_ge_id_seq"', 1, false);
          public          postgres    false    229            d           0    0    Groups_group_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Groups_group_id_seq"', 11, true);
          public          postgres    false    209            e           0    0    Muscles_mscl_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Muscles_mscl_id_seq"', 1, false);
          public          postgres    false    247            f           0    0    Parameters_param_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."Parameters_param_id_seq"', 1, false);
          public          postgres    false    233            g           0    0    Participants_participant_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."Participants_participant_id_seq"', 24, true);
          public          postgres    false    217            h           0    0    PlanTrains_pt_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."PlanTrains_pt_id_seq"', 1, true);
          public          postgres    false    225            i           0    0    Plans_plan_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Plans_plan_id_seq"', 29, true);
          public          postgres    false    213            j           0    0    Roles_role_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Roles_role_id_seq"', 2, true);
          public          postgres    false    203            k           0    0    Standarts_standart_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."Standarts_standart_id_seq"', 3, true);
          public          postgres    false    231            l           0    0    Trains_train_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Trains_train_id_seq"', 20, true);
          public          postgres    false    219            m           0    0    TypeExes_te_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."TypeExes_te_id_seq"', 1, false);
          public          postgres    false    249            n           0    0    UserRoles_user_role_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."UserRoles_user_role_id_seq"', 1, false);
          public          postgres    false    205            o           0    0    Users_user_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Users_user_id_seq"', 13, true);
          public          postgres    false    207            p           0    0    trainExercises_train_ex_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."trainExercises_train_ex_id_seq"', 4, true);
          public          postgres    false    221            ^           2606    25562    CharExes CharExes_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public."CharExes"
    ADD CONSTRAINT "CharExes_pkey" PRIMARY KEY (ce_id);
 D   ALTER TABLE ONLY public."CharExes" DROP CONSTRAINT "CharExes_pkey";
       public            postgres    false    246            \           2606    25554    Characters Characters_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."Characters"
    ADD CONSTRAINT "Characters_pkey" PRIMARY KEY (character_id);
 H   ALTER TABLE ONLY public."Characters" DROP CONSTRAINT "Characters_pkey";
       public            postgres    false    244            X           2606    25523    DETrains DETrains_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."DETrains"
    ADD CONSTRAINT "DETrains_pkey" PRIMARY KEY (detrain_id);
 D   ALTER TABLE ONLY public."DETrains" DROP CONSTRAINT "DETrains_pkey";
       public            postgres    false    240            V           2606    25490    DTExercises DTExercises_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."DTExercises"
    ADD CONSTRAINT "DTExercises_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."DTExercises" DROP CONSTRAINT "DTExercises_pkey";
       public            postgres    false    238            T           2606    25482    DateTrains DateTrains_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."DateTrains"
    ADD CONSTRAINT "DateTrains_pkey" PRIMARY KEY (dt_id);
 H   ALTER TABLE ONLY public."DateTrains" DROP CONSTRAINT "DateTrains_pkey";
       public            postgres    false    236            L           2606    25385    Events Events_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Events"
    ADD CONSTRAINT "Events_pkey" PRIMARY KEY (event_id);
 @   ALTER TABLE ONLY public."Events" DROP CONSTRAINT "Events_pkey";
       public            postgres    false    228            Z           2606    25546    ExercParams ExercParams_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."ExercParams"
    ADD CONSTRAINT "ExercParams_pkey" PRIMARY KEY (exp_id);
 J   ALTER TABLE ONLY public."ExercParams" DROP CONSTRAINT "ExercParams_pkey";
       public            postgres    false    242            @           2606    16794    Exercises Exercises_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."Exercises"
    ADD CONSTRAINT "Exercises_pkey" PRIMARY KEY (exercise_id);
 F   ALTER TABLE ONLY public."Exercises" DROP CONSTRAINT "Exercises_pkey";
       public            postgres    false    216            H           2606    25341    FilterPlans FilterPlans_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public."FilterPlans"
    ADD CONSTRAINT "FilterPlans_pkey" PRIMARY KEY (fp_id);
 J   ALTER TABLE ONLY public."FilterPlans" DROP CONSTRAINT "FilterPlans_pkey";
       public            postgres    false    224            <           2606    16756    Filters Filters_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Filters"
    ADD CONSTRAINT "Filters_pkey" PRIMARY KEY (filter_id);
 B   ALTER TABLE ONLY public."Filters" DROP CONSTRAINT "Filters_pkey";
       public            postgres    false    212            N           2606    25417    GroupEvents GroupEvents_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public."GroupEvents"
    ADD CONSTRAINT "GroupEvents_pkey" PRIMARY KEY (ge_id);
 J   ALTER TABLE ONLY public."GroupEvents" DROP CONSTRAINT "GroupEvents_pkey";
       public            postgres    false    230            :           2606    16711    Groups Groups_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Groups"
    ADD CONSTRAINT "Groups_pkey" PRIMARY KEY (group_id);
 @   ALTER TABLE ONLY public."Groups" DROP CONSTRAINT "Groups_pkey";
       public            postgres    false    210            `           2606    25570    Muscles Muscles_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public."Muscles"
    ADD CONSTRAINT "Muscles_pkey" PRIMARY KEY (mscl_id);
 B   ALTER TABLE ONLY public."Muscles" DROP CONSTRAINT "Muscles_pkey";
       public            postgres    false    248            R           2606    25466    Parameters Parameters_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Parameters"
    ADD CONSTRAINT "Parameters_pkey" PRIMARY KEY (param_id);
 H   ALTER TABLE ONLY public."Parameters" DROP CONSTRAINT "Parameters_pkey";
       public            postgres    false    234            B           2606    25101    Participants Participants_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."Participants"
    ADD CONSTRAINT "Participants_pkey" PRIMARY KEY (participant_id);
 L   ALTER TABLE ONLY public."Participants" DROP CONSTRAINT "Participants_pkey";
       public            postgres    false    218            J           2606    25374    PlanTrains PlanTrains_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."PlanTrains"
    ADD CONSTRAINT "PlanTrains_pkey" PRIMARY KEY (pt_id);
 H   ALTER TABLE ONLY public."PlanTrains" DROP CONSTRAINT "PlanTrains_pkey";
       public            postgres    false    226            >           2606    16772    Plans Plans_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public."Plans"
    ADD CONSTRAINT "Plans_pkey" PRIMARY KEY (plan_id);
 >   ALTER TABLE ONLY public."Plans" DROP CONSTRAINT "Plans_pkey";
       public            postgres    false    214            4           2606    16481    Roles Roles_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public."Roles"
    ADD CONSTRAINT "Roles_pkey" PRIMARY KEY (role_id);
 >   ALTER TABLE ONLY public."Roles" DROP CONSTRAINT "Roles_pkey";
       public            postgres    false    204            2           2606    16473     SequelizeMeta SequelizeMeta_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);
 N   ALTER TABLE ONLY public."SequelizeMeta" DROP CONSTRAINT "SequelizeMeta_pkey";
       public            postgres    false    202            P           2606    25428    Standarts Standarts_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."Standarts"
    ADD CONSTRAINT "Standarts_pkey" PRIMARY KEY (standart_id);
 F   ALTER TABLE ONLY public."Standarts" DROP CONSTRAINT "Standarts_pkey";
       public            postgres    false    232            D           2606    25134    Trains Trains_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Trains"
    ADD CONSTRAINT "Trains_pkey" PRIMARY KEY (train_id);
 @   ALTER TABLE ONLY public."Trains" DROP CONSTRAINT "Trains_pkey";
       public            postgres    false    220            b           2606    25594    TypeExes TypeExes_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public."TypeExes"
    ADD CONSTRAINT "TypeExes_pkey" PRIMARY KEY (te_id);
 D   ALTER TABLE ONLY public."TypeExes" DROP CONSTRAINT "TypeExes_pkey";
       public            postgres    false    250            6           2606    16528    UserRoles UserRoles_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "UserRoles_pkey" PRIMARY KEY (user_role_id);
 F   ALTER TABLE ONLY public."UserRoles" DROP CONSTRAINT "UserRoles_pkey";
       public            postgres    false    206            8           2606    16555    Users Users_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (user_id);
 >   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
       public            postgres    false    208            F           2606    25315 "   TrainExercises trainExercises_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public."TrainExercises"
    ADD CONSTRAINT "trainExercises_pkey" PRIMARY KEY (train_ex_id);
 P   ALTER TABLE ONLY public."TrainExercises" DROP CONSTRAINT "trainExercises_pkey";
       public            postgres    false    222            d           2606    25467 )   Parameters Parameters_participant_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Parameters"
    ADD CONSTRAINT "Parameters_participant_id_fkey" FOREIGN KEY (participant_id) REFERENCES public."Participants"(participant_id) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public."Parameters" DROP CONSTRAINT "Parameters_participant_id_fkey";
       public          postgres    false    234    2882    218            c           2606    16529     UserRoles UserRoles_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "UserRoles_role_id_fkey" FOREIGN KEY (role_id) REFERENCES public."Roles"(role_id) ON DELETE CASCADE;
 N   ALTER TABLE ONLY public."UserRoles" DROP CONSTRAINT "UserRoles_role_id_fkey";
       public          postgres    false    206    2868    204               ]   x�}�;�@E�Vao����Z��:�2�XnFFAPh�(�f5���t;vm?� �ڨ2ܗ�C��.t�詖8dX{�3q�/b�U���z&>��/��,�         S   x�}˱�0�ڞ�Ų��x���A
�gd�R%(��`�H�YM�軶����2�^��x��L=i!5���ħ0��S#G      	      x������ � �            x������ � �         Z  x���[j�@E��U��D=湖���Ԩ�c{��N��,�Ʌ�A�It�ܷG���UxՂ����? ��M��!��M+��.�����8�95g�r���!h9�\ŶZ�wsz�F+ih���M���v!�)�%{d��du��Z���td�_�#�\��%!����g�B*���"Ls��֢�:��0�~
m�(�=3��`��Rl3��;ȉ#@�����8b���M��{��=��8�iv��'���#b�'"l3g����C��3�f�_
l� '�p����%�`Q>�,x��=t�;u�_�A ��f{      �   _   x�3�44�70�7202༰�¾/v_l����VCN�����������������������9).cNs}C�faj42�3�0�j&\�+F��� =�.h            x������ � �      �   �  x���Kn�0���)�/Lp��H"'�a�-
xt_ ��R��BU��
�uH��I)A]@��o�c�����-��	����kxM���oz��Jp�7\n$4 W,3���Q���O-*|����;�����SaL���p��f�V~�w/8'8���t�)�b ��]�f��E��
1�3�aO��3Sㄈ�[Ri���BU�����I3����h;�m��̚E�4�LF�
���:.��\i&�
�����{ʜ�ơ	m
�J�6��P9�2�B�� �u[2���I�/.�K�`J�%?�_���%��L#Љ�Rr�.v�r�A���7���4��:a��yi�R:�E�FQ��_�g
�9rEJH��:g���(Χ�R��r���P��vt%��'#��7`EZ-��P����?���;x�����O�G��_p̼�NQɀ�̔���8	g�UW�u�,b(%���`g�*dE^�bq���~�C���fu]�+}^#      �   c   x�}�9�0D��>=�eOg9�?K!@���P	
M���by�24Kպ�_bP&����B��~$�'�� �x&��@��ݥ�v��ě0���,�      �   �   x�}���0E�q��X�x!.�
R�ĉjHH���qG8���f�|���̼o��E@Ѐi���!����Kq�r�g��X�S�K/�$�&A�'�����q��<呮S�����x�J�Y�j����Rf���r�1�7�r��/������]��oM r[��-�4\��<�i�w^fmk�`|@�L��a�N+��^���      �      x������ � �      �   �   x�}���0E����D��7��a���b6`VH7"�JBU������Tu��L���f��P�^3.lgd�Ƴ�P�TAa�1��J�@�yE�K
����O%w�R�K0ϰ�2"��v�����5�{D��}���ݞ�A��,\b󳇌�����>�cb�            x������ � �            x������ � �      �   �   x�}ν�0E�ڞ"=����&v�ih�X��@�,�9h�h�����D	�n񤣇 nm�)�6\��]Ngu��5�Zs�Py`o�2L�]���Z��a,p*���yʒ�Ó��`�08���F�f��d�0g���0V`<�GT�N���D�3��{|�1>d�����[�      �   2   x�3�44�4��4202�50�5�P02�21�26�314�60�#����� �n�      �   �  x���;�1@c|��і��O�@"B2����{N�BZ	���nƮ2�h�����S.z��x���F��^�@���z����7ۧ�>:���"�H'���s�6�"R$q�T�^����T���_�[�Q��}}��]��Ee{,>@�l�Z����LN<�ex�v�@�O�W�gm��_�H�p��aB��sq�}��ˤu_0Ӭܣu���m2�|E�X���,�����-�B���	�.+�.�ǂh�<�u7*[r��&�mx@��}[N�$ܓuwWv��"�[�к���Ɗ��\l��eF���%�X��=Z�I뱰@"��Z�Y빽50Ofy@��Br<^����59�iV�<-!;��'.��j0ӡ�4����^(�D�I�]և�Խ����?�5 �l�L�v�����b����N�{o2[�"H��4���1����?��-8�� �z`      �   \   x�3估�bÅ��^�z������@��X��\��������B���D����煅�_�w��b���{@ơ�75�2��3�b�W� �*�      �   '  x�m�Mn�0��܅��āܥ�(�-àF��kA~4��|~�#@ H�H�[������~�F��:IR��2ٹ�����y���V*��,���A3rBq�$s�_�-�M��eZ��*���Yl�w�J����Qv�{zF%Ol��n\}ѐ@��\10�;���$TJr�xEΪ(%�?M��T�#�'�t���]n�GU�~�as G)���2f>	F�^]辭n�t�"Ŀ�W%�`���G7.6�>�^3�h5M$�b����5�i�ze�]��i����	         f   x�3估��֋��9��L���8��9A��������������������>�?.#�L4�21�21�373D7Mʐ˘#M�,L���1����� L9t      �   `   x�u���0C�s2w�(v[Q2��A��J���eB�'/	ma�ë�o���e�0�}�7i@����#*���;��+އE��n���A�0U=��+�      �   �  x���mJ�0���S�4�d&�!<�����"�^!���(��4�.,��wy��Iw�i�.�壼��gy)���Ј;F���)d����]]?�����:�̷z)ɘlHJX$5�ۀkj���xZ
*�	�MP�CٓM�#�&�6�MA&g1�%����ۄo{dQ�r
��j"�MȭR�=E���o"��'�1jb�g�lt�1�Hx�q؞6��1�H�l��Ɖ��)R���./�|�}y.GϠj�ۖ�J6�ԂM�����/�d9���KPE
\9��ɠ��A���H�+������1S��SC��"Wf��
93g�lj�u"վ2p�Nhd�]Ȟm�j�t"վ2��v���O6��M$/��|�Z�2b:�!�EL��I?�2�5�n�����(�|�[-�υ���x�28\�a�����            x������ � �      �      x������ � �      �   %  x�}��r�@�<E�M��{�A���x�lP[5���O?ѱB�fӛ���w��j�<d��������Gυ�1c��9��('.XM׳�z0wz�3:yf�9�,Z�a$EZ��'H�0z@����9 ������Bo
ZUx�6�t���6�*n���/I���C����e��0*�].CYR��(FD����g���7�*Ԉ��E6Kl�\�v~ߟlg��9�.�����+��ߏ|V&܀@��)حݠ0��� UE�
�=�5W���;�mq |����������/޻h��q4�乲0a��@���Ba�}^��I�Ցr����}B��A� �R��#��5�o�׃�j��=_�l�B6��EF�=�f32Yx��n�&��q5�m}�E_w�'a�q�T������k%�ÒHvXqfݺ;�ր��>_�E���ܸ�i�^̾��x؋^��&DjT�	���"%ךEe�W� �e��2�NN
��'$=y$�c��s�m#?Y����jG��r���jc�n�7�(�_���     