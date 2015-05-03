--------------------------------------------------------
--  File created - Sunday-May-03-2015
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence TBL_ARTISTS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TBL_ARTISTS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 181 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TBL_FRIENDS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TBL_FRIENDS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TBL_HOBBIES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TBL_HOBBIES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 121 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TBL_HOPE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TBL_HOPE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TBL_JOBS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TBL_JOBS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 161 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TBL_MOVIES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TBL_MOVIES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 141 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TBL_SCHOOLS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TBL_SCHOOLS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 121 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TBL_SKILLS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TBL_SKILLS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TBL_TOKENS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TBL_TOKENS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 121 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TBL_UNIVERSITIES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TBL_UNIVERSITIES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 121 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TBL_USERS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TBL_USERS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 121 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TBL_WORDS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TBL_WORDS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table TBL_ARTISTS
--------------------------------------------------------

  CREATE TABLE "TBL_ARTISTS"
   (	"ID" NUMBER,
	"USER_ID" NUMBER,
	"ARTIST_NAME" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TBL_FRIENDS
--------------------------------------------------------

  CREATE TABLE "TBL_FRIENDS"
   (	"ID" NUMBER,
	"USER_ID" NUMBER,
	"FRIEND_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TBL_HOBBIES
--------------------------------------------------------

  CREATE TABLE "TBL_HOBBIES"
   (	"ID" NUMBER,
	"USER_ID" NUMBER,
	"HOBBY" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TBL_HOPE
--------------------------------------------------------

  CREATE TABLE "TBL_HOPE"
   (	"ID" NUMBER,
	"USER_ID" NUMBER,
	"SEX" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TBL_JOBS
--------------------------------------------------------

  CREATE TABLE "TBL_JOBS"
   (	"ID" NUMBER,
	"USER_ID" NUMBER,
	"JOB" VARCHAR2(64 BYTE)
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TBL_MOVIES
--------------------------------------------------------

  CREATE TABLE "TBL_MOVIES"
   (	"ID" NUMBER,
	"USER_ID" NUMBER,
	"MOVIE_TITLE" VARCHAR2(128 BYTE)
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TBL_SCHOOLS
--------------------------------------------------------

  CREATE TABLE "TBL_SCHOOLS"
   (	"ID" NUMBER,
	"USER_ID" NUMBER,
	"SCHOOL_NAME" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TBL_SKILLS
--------------------------------------------------------

  CREATE TABLE "TBL_SKILLS"
   (	"ID" NUMBER,
	"USER_ID" NUMBER,
	"SKILL" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TBL_TOKENS
--------------------------------------------------------

  CREATE TABLE "TBL_TOKENS"
   (	"ID" NUMBER,
	"USER_ID" NUMBER,
	"TOKEN" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TBL_UNIVERSITIES
--------------------------------------------------------

  CREATE TABLE "TBL_UNIVERSITIES"
   (	"ID" NUMBER,
	"USER_ID" NUMBER,
	"UNIVERSITY_NAME" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TBL_USERS
--------------------------------------------------------

  CREATE TABLE "TBL_USERS"
   (	"ID" NUMBER,
	"USERNAME" VARCHAR2(32 BYTE),
	"PASSWORD" VARCHAR2(32 BYTE),
	"NAME" VARCHAR2(32 BYTE),
	"BIRTHDAY" VARCHAR2(10 BYTE),
	"SEX" NUMBER(1,0),
	"LOCATION" VARCHAR2(64 BYTE),
	"HOROSCOPE" NUMBER(2,0),
	"RELIGION" NUMBER(2,0),
	"POLITICS" VARCHAR2(32 BYTE),
	"ABOUT" VARCHAR2(255 BYTE),
	"POINT" NUMBER
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TBL_WORDS
--------------------------------------------------------

  CREATE TABLE "TBL_WORDS"
   (	"ID" NUMBER,
	"USER_ID" NUMBER,
	"WORD" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TBL_ARTISTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TBL_ARTISTS_PK" ON "TBL_ARTISTS" ("ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TBL_FRIENDS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TBL_FRIENDS_PK" ON "TBL_FRIENDS" ("ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TBL_HOBBIES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TBL_HOBBIES_PK" ON "TBL_HOBBIES" ("ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TBL_HOPE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TBL_HOPE_PK" ON "TBL_HOPE" ("ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TBL_JOBS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TBL_JOBS_PK" ON "TBL_JOBS" ("ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TBL_MOVIES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TBL_MOVIES_PK" ON "TBL_MOVIES" ("ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TBL_SCHOOLS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TBL_SCHOOLS_PK" ON "TBL_SCHOOLS" ("ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TBL_SKILLS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TBL_SKILLS_PK" ON "TBL_SKILLS" ("ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TBL_TOKENS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TBL_TOKENS_PK" ON "TBL_TOKENS" ("ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TBL_UNIVERSITIES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TBL_UNIVERSITIES_PK" ON "TBL_UNIVERSITIES" ("ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TBL_USERS_CON
--------------------------------------------------------

  CREATE UNIQUE INDEX "TBL_USERS_CON" ON "TBL_USERS" ("USERNAME")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TBL_USERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TBL_USERS_PK" ON "TBL_USERS" ("ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TBL_WORDS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TBL_WORDS_PK" ON "TBL_WORDS" ("ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table TBL_ARTISTS
--------------------------------------------------------

  ALTER TABLE "TBL_ARTISTS" ADD CONSTRAINT "TBL_ARTISTS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "TBL_ARTISTS" MODIFY ("ARTIST_NAME" NOT NULL ENABLE);
  ALTER TABLE "TBL_ARTISTS" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "TBL_ARTISTS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_FRIENDS
--------------------------------------------------------

  ALTER TABLE "TBL_FRIENDS" ADD CONSTRAINT "TBL_FRIENDS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "TBL_FRIENDS" MODIFY ("FRIEND_ID" NOT NULL ENABLE);
  ALTER TABLE "TBL_FRIENDS" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "TBL_FRIENDS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_HOBBIES
--------------------------------------------------------

  ALTER TABLE "TBL_HOBBIES" ADD CONSTRAINT "TBL_HOBBIES_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "TBL_HOBBIES" MODIFY ("HOBBY" NOT NULL ENABLE);
  ALTER TABLE "TBL_HOBBIES" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "TBL_HOBBIES" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_HOPE
--------------------------------------------------------

  ALTER TABLE "TBL_HOPE" ADD CONSTRAINT "TBL_HOPE_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "TBL_HOPE" MODIFY ("SEX" NOT NULL ENABLE);
  ALTER TABLE "TBL_HOPE" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "TBL_HOPE" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_JOBS
--------------------------------------------------------

  ALTER TABLE "TBL_JOBS" ADD CONSTRAINT "TBL_JOBS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "TBL_JOBS" MODIFY ("JOB" NOT NULL ENABLE);
  ALTER TABLE "TBL_JOBS" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "TBL_JOBS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_MOVIES
--------------------------------------------------------

  ALTER TABLE "TBL_MOVIES" ADD CONSTRAINT "TBL_MOVIES_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "TBL_MOVIES" MODIFY ("MOVIE_TITLE" NOT NULL ENABLE);
  ALTER TABLE "TBL_MOVIES" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "TBL_MOVIES" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_SCHOOLS
--------------------------------------------------------

  ALTER TABLE "TBL_SCHOOLS" ADD CONSTRAINT "TBL_SCHOOLS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "TBL_SCHOOLS" MODIFY ("SCHOOL_NAME" NOT NULL ENABLE);
  ALTER TABLE "TBL_SCHOOLS" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "TBL_SCHOOLS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_SKILLS
--------------------------------------------------------

  ALTER TABLE "TBL_SKILLS" ADD CONSTRAINT "TBL_SKILLS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "TBL_SKILLS" MODIFY ("SKILL" NOT NULL ENABLE);
  ALTER TABLE "TBL_SKILLS" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "TBL_SKILLS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_TOKENS
--------------------------------------------------------

  ALTER TABLE "TBL_TOKENS" ADD CONSTRAINT "TBL_TOKENS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "TBL_TOKENS" MODIFY ("TOKEN" NOT NULL ENABLE);
  ALTER TABLE "TBL_TOKENS" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "TBL_TOKENS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_UNIVERSITIES
--------------------------------------------------------

  ALTER TABLE "TBL_UNIVERSITIES" ADD CONSTRAINT "TBL_UNIVERSITIES_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "TBL_UNIVERSITIES" MODIFY ("UNIVERSITY_NAME" NOT NULL ENABLE);
  ALTER TABLE "TBL_UNIVERSITIES" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "TBL_UNIVERSITIES" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_USERS
--------------------------------------------------------

  ALTER TABLE "TBL_USERS" MODIFY ("POINT" NOT NULL ENABLE);
  ALTER TABLE "TBL_USERS" ADD CONSTRAINT "TBL_USERS_CON" UNIQUE ("USERNAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "TBL_USERS" ADD CONSTRAINT "TBL_USERS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "TBL_USERS" MODIFY ("ABOUT" NOT NULL ENABLE);
  ALTER TABLE "TBL_USERS" MODIFY ("POLITICS" NOT NULL ENABLE);
  ALTER TABLE "TBL_USERS" MODIFY ("RELIGION" NOT NULL ENABLE);
  ALTER TABLE "TBL_USERS" MODIFY ("HOROSCOPE" NOT NULL ENABLE);
  ALTER TABLE "TBL_USERS" MODIFY ("LOCATION" NOT NULL ENABLE);
  ALTER TABLE "TBL_USERS" MODIFY ("SEX" NOT NULL ENABLE);
  ALTER TABLE "TBL_USERS" MODIFY ("BIRTHDAY" NOT NULL ENABLE);
  ALTER TABLE "TBL_USERS" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "TBL_USERS" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "TBL_USERS" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "TBL_USERS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_WORDS
--------------------------------------------------------

  ALTER TABLE "TBL_WORDS" ADD CONSTRAINT "TBL_WORDS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "TBL_WORDS" MODIFY ("WORD" NOT NULL ENABLE);
  ALTER TABLE "TBL_WORDS" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "TBL_WORDS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table TBL_ARTISTS
--------------------------------------------------------

  ALTER TABLE "TBL_ARTISTS" ADD CONSTRAINT "TBL_ARTISTS_FK" FOREIGN KEY ("USER_ID")
	  REFERENCES "TBL_USERS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_FRIENDS
--------------------------------------------------------

  ALTER TABLE "TBL_FRIENDS" ADD CONSTRAINT "TBL_FRIENDS_FK2" FOREIGN KEY ("USER_ID")
	  REFERENCES "TBL_USERS" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "TBL_FRIENDS" ADD CONSTRAINT "TBL_FRIENDS_FK3" FOREIGN KEY ("FRIEND_ID")
	  REFERENCES "TBL_USERS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_HOBBIES
--------------------------------------------------------

  ALTER TABLE "TBL_HOBBIES" ADD CONSTRAINT "TBL_HOBBIES_FK" FOREIGN KEY ("USER_ID")
	  REFERENCES "TBL_USERS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_HOPE
--------------------------------------------------------

  ALTER TABLE "TBL_HOPE" ADD CONSTRAINT "TBL_HOPE_FK" FOREIGN KEY ("USER_ID")
	  REFERENCES "TBL_USERS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_JOBS
--------------------------------------------------------

  ALTER TABLE "TBL_JOBS" ADD CONSTRAINT "TBL_JOBS_FK" FOREIGN KEY ("USER_ID")
	  REFERENCES "TBL_USERS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_MOVIES
--------------------------------------------------------

  ALTER TABLE "TBL_MOVIES" ADD CONSTRAINT "TBL_MOVIES_FK" FOREIGN KEY ("USER_ID")
	  REFERENCES "TBL_USERS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_SCHOOLS
--------------------------------------------------------

  ALTER TABLE "TBL_SCHOOLS" ADD CONSTRAINT "TBL_SCHOOLS_FK" FOREIGN KEY ("USER_ID")
	  REFERENCES "TBL_USERS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_SKILLS
--------------------------------------------------------

  ALTER TABLE "TBL_SKILLS" ADD CONSTRAINT "TBL_SKILLS_FK" FOREIGN KEY ("USER_ID")
	  REFERENCES "TBL_USERS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_TOKENS
--------------------------------------------------------

  ALTER TABLE "TBL_TOKENS" ADD CONSTRAINT "TBL_TOKENS_FK" FOREIGN KEY ("USER_ID")
	  REFERENCES "TBL_USERS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_UNIVERSITIES
--------------------------------------------------------

  ALTER TABLE "TBL_UNIVERSITIES" ADD CONSTRAINT "TBL_UNIVERSITIES_FK" FOREIGN KEY ("USER_ID")
	  REFERENCES "TBL_USERS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_WORDS
--------------------------------------------------------

  ALTER TABLE "TBL_WORDS" ADD CONSTRAINT "TBL_WORDS_FK" FOREIGN KEY ("USER_ID")
	  REFERENCES "TBL_USERS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  DDL for Trigger BI_TBL_ARTISTS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BI_TBL_ARTISTS"
  before insert on "TBL_ARTISTS"
  for each row
begin
  if :NEW."ID" is null then
    select "TBL_ARTISTS_SEQ".nextval into :NEW."ID" from dual;
  end if;
end;

/
ALTER TRIGGER "BI_TBL_ARTISTS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BI_TBL_FRIENDS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BI_TBL_FRIENDS"
  before insert on "TBL_FRIENDS"
  for each row
begin
  if :NEW."ID" is null then
    select "TBL_FRIENDS_SEQ".nextval into :NEW."ID" from dual;
  end if;
end;

/
ALTER TRIGGER "BI_TBL_FRIENDS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BI_TBL_HOBBIES
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BI_TBL_HOBBIES"
  before insert on "TBL_HOBBIES"
  for each row
begin
  if :NEW."ID" is null then
    select "TBL_HOBBIES_SEQ".nextval into :NEW."ID" from dual;
  end if;
end;

/
ALTER TRIGGER "BI_TBL_HOBBIES" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BI_TBL_HOPE
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BI_TBL_HOPE"
  before insert on "TBL_HOPE"
  for each row
begin
  if :NEW."ID" is null then
    select "TBL_HOPE_SEQ".nextval into :NEW."ID" from dual;
  end if;
end;

/
ALTER TRIGGER "BI_TBL_HOPE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BI_TBL_JOBS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BI_TBL_JOBS"
  before insert on "TBL_JOBS"
  for each row
begin
  if :NEW."ID" is null then
    select "TBL_JOBS_SEQ".nextval into :NEW."ID" from dual;
  end if;
end;

/
ALTER TRIGGER "BI_TBL_JOBS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BI_TBL_MOVIES
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BI_TBL_MOVIES"
  before insert on "TBL_MOVIES"
  for each row
begin
  if :NEW."ID" is null then
    select "TBL_MOVIES_SEQ".nextval into :NEW."ID" from dual;
  end if;
end;

/
ALTER TRIGGER "BI_TBL_MOVIES" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BI_TBL_SCHOOLS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BI_TBL_SCHOOLS"
  before insert on "TBL_SCHOOLS"
  for each row
begin
  if :NEW."ID" is null then
    select "TBL_SCHOOLS_SEQ".nextval into :NEW."ID" from dual;
  end if;
end;

/
ALTER TRIGGER "BI_TBL_SCHOOLS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BI_TBL_SKILLS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BI_TBL_SKILLS"
  before insert on "TBL_SKILLS"
  for each row
begin
  if :NEW."ID" is null then
    select "TBL_SKILLS_SEQ".nextval into :NEW."ID" from dual;
  end if;
end;

/
ALTER TRIGGER "BI_TBL_SKILLS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BI_TBL_TOKENS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BI_TBL_TOKENS"
  before insert on "TBL_TOKENS"
  for each row
begin
  if :NEW."ID" is null then
    select "TBL_TOKENS_SEQ".nextval into :NEW."ID" from dual;
  end if;
end;

/
ALTER TRIGGER "BI_TBL_TOKENS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BI_TBL_UNIVERSITIES
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BI_TBL_UNIVERSITIES"
  before insert on "TBL_UNIVERSITIES"
  for each row
begin
  if :NEW."ID" is null then
    select "TBL_UNIVERSITIES_SEQ".nextval into :NEW."ID" from dual;
  end if;
end;

/
ALTER TRIGGER "BI_TBL_UNIVERSITIES" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BI_TBL_USERS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BI_TBL_USERS"
  before insert on "TBL_USERS"
  for each row
begin
  if :NEW."ID" is null then
    select "TBL_USERS_SEQ".nextval into :NEW."ID" from dual;
  end if;
end;

/
ALTER TRIGGER "BI_TBL_USERS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BI_TBL_WORDS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BI_TBL_WORDS"
  before insert on "TBL_WORDS"
  for each row
begin
  if :NEW."ID" is null then
    select "TBL_WORDS_SEQ".nextval into :NEW."ID" from dual;
  end if;
end;

/
ALTER TRIGGER "BI_TBL_WORDS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TBL_FRIENDS_T1
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TBL_FRIENDS_T1"
BEFORE
insert on "TBL_FRIENDS"
for each row
begin
    UPDATE TBL_USERS SET POINT = POINT + 1 WHERE ID = :NEW.USER_ID;
end;
/
ALTER TRIGGER "TBL_FRIENDS_T1" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TBL_FRIENDS_T2
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TBL_FRIENDS_T2"
BEFORE
delete on "TBL_FRIENDS"
for each row
begin
    UPDATE TBL_USERS SET POINT = POINT - 1 WHERE ID = :OLD.USER_ID;
end;
/
ALTER TRIGGER "TBL_FRIENDS_T2" ENABLE;
--------------------------------------------------------
--  DDL for Procedure DELETEALLDATABYUSERID
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "DELETEALLDATABYUSERID" (userid IN NUMBER)
IS
BEGIN

  DELETE FROM TBL_ARTISTS WHERE USER_ID=userid;
  DELETE FROM TBL_HOBBIES WHERE USER_ID=userid;
  DELETE FROM TBL_HOPE WHERE USER_ID=userid;
  DELETE FROM TBL_JOBS WHERE USER_ID=userid;
  DELETE FROM TBL_MOVIES WHERE USER_ID=userid;
  DELETE FROM TBL_SCHOOLS WHERE USER_ID=userid;
  DELETE FROM TBL_SKILLS WHERE USER_ID=userid;
  DELETE FROM TBL_UNIVERSITIES WHERE USER_ID=userid;
  DELETE FROM TBL_WORDS WHERE USER_ID=userid;

  COMMIT;

END;

/
--------------------------------------------------------
--  DDL for Procedure GETALLDATA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "GETALLDATA" (userid IN NUMBER, p_artists OUT SYS_REFCURSOR, p_hobbies OUT SYS_REFCURSOR, p_hope OUT SYS_REFCURSOR, p_jobs OUT SYS_REFCURSOR, p_movies OUT SYS_REFCURSOR, p_schools OUT SYS_REFCURSOR, p_skills OUT SYS_REFCURSOR, p_universities OUT SYS_REFCURSOR, p_words OUT SYS_REFCURSOR)
IS
BEGIN

  OPEN p_artists FOR SELECT * FROM TBL_ARTISTS WHERE USER_ID=userid;
  OPEN p_hobbies FOR SELECT * FROM TBL_HOBBIES WHERE USER_ID=userid;
  OPEN p_hope FOR SELECT * FROM TBL_HOPE WHERE USER_ID=userid;
  OPEN p_jobs FOR SELECT * FROM TBL_JOBS WHERE USER_ID=userid;
  OPEN p_movies FOR SELECT * FROM TBL_MOVIES WHERE USER_ID=userid;
  OPEN p_schools FOR SELECT * FROM TBL_SCHOOLS WHERE USER_ID=userid;
  OPEN p_skills FOR SELECT * FROM TBL_SKILLS WHERE USER_ID=userid;
  OPEN p_universities FOR SELECT * FROM TBL_UNIVERSITIES WHERE USER_ID=userid;
  OPEN p_words FOR SELECT * FROM TBL_WORDS WHERE USER_ID=userid;

END;

/