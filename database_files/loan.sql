--------------------------------------------------------
--  File created - Tuesday-November-21-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table LOAN
--------------------------------------------------------

  CREATE TABLE "PIAL"."LOAN" 
   (	"ID" VARCHAR2(10 BYTE), 
	"AMOUNT" NUMBER(*,0), 
	"STATUS" VARCHAR2(8 BYTE), 
	"FIRST_NAME" VARCHAR2(20 BYTE), 
	"LAST_NAME" VARCHAR2(20 BYTE), 
	"ADDRESS" VARCHAR2(60 BYTE), 
	"EMAIL" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into PIAL.LOAN
SET DEFINE OFF;
Insert into PIAL.LOAN (ID,AMOUNT,STATUS,FIRST_NAME,LAST_NAME,ADDRESS,EMAIL) values ('RaBh863299',200000,'pending','Rajesh','Bhartia','Mymensingh','rbhartiamuk@gmail.com');
Insert into PIAL.LOAN (ID,AMOUNT,STATUS,FIRST_NAME,LAST_NAME,ADDRESS,EMAIL) values ('PiSa532991',100000,'pending','Pial Kanti','Samadder','Keranigonj,Dhaka','pialkanti2012@gmail.com');
Insert into PIAL.LOAN (ID,AMOUNT,STATUS,FIRST_NAME,LAST_NAME,ADDRESS,EMAIL) values ('PiSa532991',20000,'success','Pial Kanti','Samadder','Keranigonj,Dhaka','pialkanti2012@gmail.com');
