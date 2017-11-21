--------------------------------------------------------
--  File created - Tuesday-November-21-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table AMOUNT
--------------------------------------------------------

  CREATE TABLE "PIAL"."AMOUNT" 
   (	"ID" VARCHAR2(10 BYTE), 
	"AMOUNT" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into PIAL.AMOUNT
SET DEFINE OFF;
Insert into PIAL.AMOUNT (ID,AMOUNT) values ('RaBh863299',80000);
Insert into PIAL.AMOUNT (ID,AMOUNT) values ('GrBa240230',0);
Insert into PIAL.AMOUNT (ID,AMOUNT) values ('PiSa532991',370000);
