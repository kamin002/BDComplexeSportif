--------------------------------------------------------
--  Fichier créé - dimanche-novembre-24-2013   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence S_ACTIVITES
--------------------------------------------------------

   CREATE SEQUENCE  "BENJAMIN"."S_ACTIVITES"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence S_EQUIPEMENTS
--------------------------------------------------------

   CREATE SEQUENCE  "BENJAMIN"."S_EQUIPEMENTS"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence S_EXEMPLAIRE_MATERIELS
--------------------------------------------------------

   CREATE SEQUENCE  "BENJAMIN"."S_EXEMPLAIRE_MATERIELS"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence S_FORMATIONS
--------------------------------------------------------

   CREATE SEQUENCE  "BENJAMIN"."S_FORMATIONS"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence S_FORMULES
--------------------------------------------------------

   CREATE SEQUENCE  "BENJAMIN"."S_FORMULES"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence S_INDISPONIBILITES_AN
--------------------------------------------------------

   CREATE SEQUENCE  "BENJAMIN"."S_INDISPONIBILITES_AN"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence S_INDISPONIBILITES_EQ
--------------------------------------------------------

   CREATE SEQUENCE  "BENJAMIN"."S_INDISPONIBILITES_EQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence S_MATERIELS
--------------------------------------------------------

   CREATE SEQUENCE  "BENJAMIN"."S_MATERIELS"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence S_PERSONNES
--------------------------------------------------------

   CREATE SEQUENCE  "BENJAMIN"."S_PERSONNES"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence S_SEANCES
--------------------------------------------------------

   CREATE SEQUENCE  "BENJAMIN"."S_SEANCES"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence S_TYPE_EQUIPEMENT
--------------------------------------------------------

   CREATE SEQUENCE  "BENJAMIN"."S_TYPE_EQUIPEMENT"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence S_TYPES_FORMULE
--------------------------------------------------------

   CREATE SEQUENCE  "BENJAMIN"."S_TYPES_FORMULE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ACTIVITES
--------------------------------------------------------

  CREATE TABLE "BENJAMIN"."ACTIVITES" 
   (	"ID_ACT" NUMBER(6,0), 
	"ID_TPLIEUX" NUMBER(6,0), 
	"NOM_ACT" CLOB, 
	"PRIX_ACT" FLOAT(126), 
	"PRIXSEANCE_ACT" FLOAT(126)
   ) ;
--------------------------------------------------------
--  DDL for Table ADHERENTS
--------------------------------------------------------

  CREATE TABLE "BENJAMIN"."ADHERENTS" 
   (	"ID_P" NUMBER(6,0), 
	"MDP_P" CLOB, 
	"NOM_P" CLOB, 
	"PRNM_P" CLOB, 
	"AD_P" CLOB, 
	"CP_P" CLOB, 
	"VILLE_P" CLOB, 
	"TEL_P" CLOB
   ) ;
--------------------------------------------------------
--  DDL for Table ANIMATEURS
--------------------------------------------------------

  CREATE TABLE "BENJAMIN"."ANIMATEURS" 
   (	"ID_P" NUMBER(6,0), 
	"DATEEMB" DATE, 
	"MDP_P" CLOB, 
	"NOM_P" CLOB, 
	"PRNM_P" CLOB, 
	"AD_P" CLOB, 
	"CP_P" CLOB, 
	"VILLE_P" CLOB, 
	"TEL_P" CLOB
   ) ;
--------------------------------------------------------
--  DDL for Table EQUIPEMENTS
--------------------------------------------------------

  CREATE TABLE "BENJAMIN"."EQUIPEMENTS" 
   (	"ID_EQUI" NUMBER(6,0), 
	"ID_TPLIEUX" NUMBER(6,0), 
	"NOM_EQUI" CLOB, 
	"AD_EQUI" CLOB, 
	"PLACE_MAX_EQUI" NUMBER(*,0)
   ) ;
--------------------------------------------------------
--  DDL for Table EXEMPLAIRE_MATERIELS
--------------------------------------------------------

  CREATE TABLE "BENJAMIN"."EXEMPLAIRE_MATERIELS" 
   (	"ID_EXEM" NUMBER(6,0), 
	"ID_MAT" NUMBER(6,0), 
	"DATE_ACHAT" DATE, 
	"ETAT" CLOB
   ) ;
--------------------------------------------------------
--  DDL for Table EXIGER
--------------------------------------------------------

  CREATE TABLE "BENJAMIN"."EXIGER" 
   (	"ID_ACT" NUMBER(6,0), 
	"ID_MAT" NUMBER(6,0), 
	"QUANTITE" NUMBER(*,0)
   ) ;
--------------------------------------------------------
--  DDL for Table FORMATIONS
--------------------------------------------------------

  CREATE TABLE "BENJAMIN"."FORMATIONS" 
   (	"ID_FORMATION" NUMBER(6,0), 
	"NOM_FORMATION" CLOB
   ) ;
--------------------------------------------------------
--  DDL for Table FORMULES
--------------------------------------------------------

  CREATE TABLE "BENJAMIN"."FORMULES" 
   (	"ID_FORMULE" NUMBER(6,0), 
	"ID_TP_FORM" NUMBER(6,0), 
	"ID_SEANCE" NUMBER(6,0), 
	"ID_ACT" NUMBER(6,0)
   ) ;
--------------------------------------------------------
--  DDL for Table INDISPONIBILITES_AN
--------------------------------------------------------

  CREATE TABLE "BENJAMIN"."INDISPONIBILITES_AN" 
   (	"ID_INAN" NUMBER(6,0), 
	"ID_P" NUMBER(6,0), 
	"DEB_INAN__" DATE, 
	"FIN_INAN__" DATE, 
	"INFORMATIONS_IDAN__" CLOB
   ) ;
--------------------------------------------------------
--  DDL for Table INDISPONIBILITES_EQ
--------------------------------------------------------

  CREATE TABLE "BENJAMIN"."INDISPONIBILITES_EQ" 
   (	"ID_INAN__" NUMBER(6,0), 
	"ID_EQUI" NUMBER(6,0), 
	"DEB_INEQ__" DATE, 
	"FIN_INEQ__" DATE, 
	"INFORMATIONS_INEQ__" CLOB
   ) ;
--------------------------------------------------------
--  DDL for Table MATERIELS
--------------------------------------------------------

  CREATE TABLE "BENJAMIN"."MATERIELS" 
   (	"ID_MAT" NUMBER(6,0), 
	"NOM_MAT" CLOB
   ) ;
--------------------------------------------------------
--  DDL for Table PERMETTRE2
--------------------------------------------------------

  CREATE TABLE "BENJAMIN"."PERMETTRE2" 
   (	"ID_FORMULE" NUMBER(6,0), 
	"ID_SEANCE" NUMBER(6,0)
   ) ;
--------------------------------------------------------
--  DDL for Table POSSEDER
--------------------------------------------------------

  CREATE TABLE "BENJAMIN"."POSSEDER" 
   (	"ID_FORMATION" NUMBER(6,0), 
	"ID_P" NUMBER(6,0)
   ) ;
--------------------------------------------------------
--  DDL for Table REQUERIR
--------------------------------------------------------

  CREATE TABLE "BENJAMIN"."REQUERIR" 
   (	"ID_ACT" NUMBER(6,0), 
	"ID_FORMATION" NUMBER(6,0)
   ) ;
--------------------------------------------------------
--  DDL for Table RESERVER
--------------------------------------------------------

  CREATE TABLE "BENJAMIN"."RESERVER" 
   (	"ID_SEANCE" NUMBER(6,0), 
	"ID_EXEM" NUMBER(6,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SEANCES
--------------------------------------------------------

  CREATE TABLE "BENJAMIN"."SEANCES" 
   (	"ID_SEANCE" NUMBER(6,0), 
	"ID_EQUI" NUMBER(6,0), 
	"ID_ACT" NUMBER(6,0), 
	"ID_P" NUMBER(6,0), 
	"DATE_SEANCE" DATE, 
	"HDEB" DATE, 
	"HFIN" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table SOUSCRIRE
--------------------------------------------------------

  CREATE TABLE "BENJAMIN"."SOUSCRIRE" 
   (	"ID_P" NUMBER(6,0), 
	"ID_FORMULE" NUMBER(6,0)
   ) ;
--------------------------------------------------------
--  DDL for Table TYPE_EQUIPEMENT
--------------------------------------------------------

  CREATE TABLE "BENJAMIN"."TYPE_EQUIPEMENT" 
   (	"ID_TPLIEUX" NUMBER(6,0), 
	"NOM_TPLIEUX" CLOB
   ) ;
--------------------------------------------------------
--  DDL for Table TYPES_FORMULE
--------------------------------------------------------

  CREATE TABLE "BENJAMIN"."TYPES_FORMULE" 
   (	"ID_TP_FORM" NUMBER(6,0), 
	"NOM_TP_FORM" VARCHAR2(50 BYTE), 
	"PRIX_TP_FORM" VARCHAR2(50 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Index APPARTENIR_FK
--------------------------------------------------------

  CREATE INDEX "BENJAMIN"."APPARTENIR_FK" ON "BENJAMIN"."EQUIPEMENTS" ("ID_TPLIEUX") 
  ;
--------------------------------------------------------
--  DDL for Index POSSEDER_FK
--------------------------------------------------------

  CREATE INDEX "BENJAMIN"."POSSEDER_FK" ON "BENJAMIN"."POSSEDER" ("ID_FORMATION") 
  ;
--------------------------------------------------------
--  DDL for Index PERMETTRE2_FK
--------------------------------------------------------

  CREATE INDEX "BENJAMIN"."PERMETTRE2_FK" ON "BENJAMIN"."PERMETTRE2" ("ID_FORMULE") 
  ;
--------------------------------------------------------
--  DDL for Index RESERVER_FK
--------------------------------------------------------

  CREATE INDEX "BENJAMIN"."RESERVER_FK" ON "BENJAMIN"."RESERVER" ("ID_SEANCE") 
  ;
--------------------------------------------------------
--  DDL for Index PK_INDISPONIBILITES_AN
--------------------------------------------------------

  CREATE UNIQUE INDEX "BENJAMIN"."PK_INDISPONIBILITES_AN" ON "BENJAMIN"."INDISPONIBILITES_AN" ("ID_INAN") 
  ;
--------------------------------------------------------
--  DDL for Index REQUERIR2_FK
--------------------------------------------------------

  CREATE INDEX "BENJAMIN"."REQUERIR2_FK" ON "BENJAMIN"."REQUERIR" ("ID_FORMATION") 
  ;
--------------------------------------------------------
--  DDL for Index PK_EQUIPEMENTS
--------------------------------------------------------

  CREATE UNIQUE INDEX "BENJAMIN"."PK_EQUIPEMENTS" ON "BENJAMIN"."EQUIPEMENTS" ("ID_EQUI") 
  ;
--------------------------------------------------------
--  DDL for Index PK_SOUSCRIRE
--------------------------------------------------------

  CREATE UNIQUE INDEX "BENJAMIN"."PK_SOUSCRIRE" ON "BENJAMIN"."SOUSCRIRE" ("ID_P", "ID_FORMULE") 
  ;
--------------------------------------------------------
--  DDL for Index PK_POSSEDER
--------------------------------------------------------

  CREATE UNIQUE INDEX "BENJAMIN"."PK_POSSEDER" ON "BENJAMIN"."POSSEDER" ("ID_FORMATION", "ID_P") 
  ;
--------------------------------------------------------
--  DDL for Index RESERVER2_FK
--------------------------------------------------------

  CREATE INDEX "BENJAMIN"."RESERVER2_FK" ON "BENJAMIN"."RESERVER" ("ID_EXEM") 
  ;
--------------------------------------------------------
--  DDL for Index PK_TYPES_FORMULE
--------------------------------------------------------

  CREATE UNIQUE INDEX "BENJAMIN"."PK_TYPES_FORMULE" ON "BENJAMIN"."TYPES_FORMULE" ("ID_TP_FORM") 
  ;
--------------------------------------------------------
--  DDL for Index PK_ADHERENTS
--------------------------------------------------------

  CREATE UNIQUE INDEX "BENJAMIN"."PK_ADHERENTS" ON "BENJAMIN"."ADHERENTS" ("ID_P") 
  ;
--------------------------------------------------------
--  DDL for Index PK_INDISPONIBILITES_EQ
--------------------------------------------------------

  CREATE UNIQUE INDEX "BENJAMIN"."PK_INDISPONIBILITES_EQ" ON "BENJAMIN"."INDISPONIBILITES_EQ" ("ID_INAN__") 
  ;
--------------------------------------------------------
--  DDL for Index PK_EXIGER
--------------------------------------------------------

  CREATE UNIQUE INDEX "BENJAMIN"."PK_EXIGER" ON "BENJAMIN"."EXIGER" ("ID_ACT", "ID_MAT") 
  ;
--------------------------------------------------------
--  DDL for Index PK_TYPE_EQUIPEMENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "BENJAMIN"."PK_TYPE_EQUIPEMENT" ON "BENJAMIN"."TYPE_EQUIPEMENT" ("ID_TPLIEUX") 
  ;
--------------------------------------------------------
--  DDL for Index PK_ACTIVITES
--------------------------------------------------------

  CREATE UNIQUE INDEX "BENJAMIN"."PK_ACTIVITES" ON "BENJAMIN"."ACTIVITES" ("ID_ACT") 
  ;
--------------------------------------------------------
--  DDL for Index LICENCIER_FK
--------------------------------------------------------

  CREATE INDEX "BENJAMIN"."LICENCIER_FK" ON "BENJAMIN"."FORMULES" ("ID_ACT") 
  ;
--------------------------------------------------------
--  DDL for Index DEVENIRAN_FK
--------------------------------------------------------

  CREATE INDEX "BENJAMIN"."DEVENIRAN_FK" ON "BENJAMIN"."INDISPONIBILITES_AN" ("ID_P") 
  ;
--------------------------------------------------------
--  DDL for Index PERMETTRE3_FK
--------------------------------------------------------

  CREATE INDEX "BENJAMIN"."PERMETTRE3_FK" ON "BENJAMIN"."PERMETTRE2" ("ID_SEANCE") 
  ;
--------------------------------------------------------
--  DDL for Index LOUER_FK
--------------------------------------------------------

  CREATE INDEX "BENJAMIN"."LOUER_FK" ON "BENJAMIN"."SEANCES" ("ID_EQUI") 
  ;
--------------------------------------------------------
--  DDL for Index EXIGER2_FK
--------------------------------------------------------

  CREATE INDEX "BENJAMIN"."EXIGER2_FK" ON "BENJAMIN"."EXIGER" ("ID_MAT") 
  ;
--------------------------------------------------------
--  DDL for Index NECESSITER2_FK
--------------------------------------------------------

  CREATE INDEX "BENJAMIN"."NECESSITER2_FK" ON "BENJAMIN"."ACTIVITES" ("ID_TPLIEUX") 
  ;
--------------------------------------------------------
--  DDL for Index CORRESPONDRE_FK
--------------------------------------------------------

  CREATE INDEX "BENJAMIN"."CORRESPONDRE_FK" ON "BENJAMIN"."EXEMPLAIRE_MATERIELS" ("ID_MAT") 
  ;
--------------------------------------------------------
--  DDL for Index PK_EXEMPLAIRE_MATERIELS
--------------------------------------------------------

  CREATE UNIQUE INDEX "BENJAMIN"."PK_EXEMPLAIRE_MATERIELS" ON "BENJAMIN"."EXEMPLAIRE_MATERIELS" ("ID_EXEM") 
  ;
--------------------------------------------------------
--  DDL for Index AUTORISER_FK
--------------------------------------------------------

  CREATE INDEX "BENJAMIN"."AUTORISER_FK" ON "BENJAMIN"."FORMULES" ("ID_SEANCE") 
  ;
--------------------------------------------------------
--  DDL for Index PK_ANIMATEURS
--------------------------------------------------------

  CREATE UNIQUE INDEX "BENJAMIN"."PK_ANIMATEURS" ON "BENJAMIN"."ANIMATEURS" ("ID_P") 
  ;
--------------------------------------------------------
--  DDL for Index PK_SEANCES
--------------------------------------------------------

  CREATE UNIQUE INDEX "BENJAMIN"."PK_SEANCES" ON "BENJAMIN"."SEANCES" ("ID_SEANCE") 
  ;
--------------------------------------------------------
--  DDL for Index EXIGER_FK
--------------------------------------------------------

  CREATE INDEX "BENJAMIN"."EXIGER_FK" ON "BENJAMIN"."EXIGER" ("ID_ACT") 
  ;
--------------------------------------------------------
--  DDL for Index PK_MATERIELS
--------------------------------------------------------

  CREATE UNIQUE INDEX "BENJAMIN"."PK_MATERIELS" ON "BENJAMIN"."MATERIELS" ("ID_MAT") 
  ;
--------------------------------------------------------
--  DDL for Index PK_RESERVER
--------------------------------------------------------

  CREATE UNIQUE INDEX "BENJAMIN"."PK_RESERVER" ON "BENJAMIN"."RESERVER" ("ID_SEANCE", "ID_EXEM") 
  ;
--------------------------------------------------------
--  DDL for Index CONCERNER_FK
--------------------------------------------------------

  CREATE INDEX "BENJAMIN"."CONCERNER_FK" ON "BENJAMIN"."SEANCES" ("ID_ACT") 
  ;
--------------------------------------------------------
--  DDL for Index DEFINIR_FK
--------------------------------------------------------

  CREATE INDEX "BENJAMIN"."DEFINIR_FK" ON "BENJAMIN"."FORMULES" ("ID_TP_FORM") 
  ;
--------------------------------------------------------
--  DDL for Index PK_FORMULES
--------------------------------------------------------

  CREATE UNIQUE INDEX "BENJAMIN"."PK_FORMULES" ON "BENJAMIN"."FORMULES" ("ID_FORMULE") 
  ;
--------------------------------------------------------
--  DDL for Index SOUSCRIRE2_FK
--------------------------------------------------------

  CREATE INDEX "BENJAMIN"."SOUSCRIRE2_FK" ON "BENJAMIN"."SOUSCRIRE" ("ID_FORMULE") 
  ;
--------------------------------------------------------
--  DDL for Index PK_FORMATIONS
--------------------------------------------------------

  CREATE UNIQUE INDEX "BENJAMIN"."PK_FORMATIONS" ON "BENJAMIN"."FORMATIONS" ("ID_FORMATION") 
  ;
--------------------------------------------------------
--  DDL for Index SOUSCRIRE_FK
--------------------------------------------------------

  CREATE INDEX "BENJAMIN"."SOUSCRIRE_FK" ON "BENJAMIN"."SOUSCRIRE" ("ID_P") 
  ;
--------------------------------------------------------
--  DDL for Index ANIMER_FK
--------------------------------------------------------

  CREATE INDEX "BENJAMIN"."ANIMER_FK" ON "BENJAMIN"."SEANCES" ("ID_P") 
  ;
--------------------------------------------------------
--  DDL for Index REQUERIR_FK
--------------------------------------------------------

  CREATE INDEX "BENJAMIN"."REQUERIR_FK" ON "BENJAMIN"."REQUERIR" ("ID_ACT") 
  ;
--------------------------------------------------------
--  DDL for Index DEVENIR_FK
--------------------------------------------------------

  CREATE INDEX "BENJAMIN"."DEVENIR_FK" ON "BENJAMIN"."INDISPONIBILITES_EQ" ("ID_EQUI") 
  ;
--------------------------------------------------------
--  DDL for Index POSSEDER2_FK
--------------------------------------------------------

  CREATE INDEX "BENJAMIN"."POSSEDER2_FK" ON "BENJAMIN"."POSSEDER" ("ID_P") 
  ;
--------------------------------------------------------
--  DDL for Index PK_PERMETTRE2
--------------------------------------------------------

  CREATE UNIQUE INDEX "BENJAMIN"."PK_PERMETTRE2" ON "BENJAMIN"."PERMETTRE2" ("ID_FORMULE", "ID_SEANCE") 
  ;
--------------------------------------------------------
--  Constraints for Table SOUSCRIRE
--------------------------------------------------------

  ALTER TABLE "BENJAMIN"."SOUSCRIRE" ADD CONSTRAINT "PK_SOUSCRIRE" PRIMARY KEY ("ID_P", "ID_FORMULE") ENABLE;
  ALTER TABLE "BENJAMIN"."SOUSCRIRE" MODIFY ("ID_FORMULE" NOT NULL ENABLE);
  ALTER TABLE "BENJAMIN"."SOUSCRIRE" MODIFY ("ID_P" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EXIGER
--------------------------------------------------------

  ALTER TABLE "BENJAMIN"."EXIGER" ADD CONSTRAINT "PK_EXIGER" PRIMARY KEY ("ID_ACT", "ID_MAT") ENABLE;
  ALTER TABLE "BENJAMIN"."EXIGER" MODIFY ("ID_MAT" NOT NULL ENABLE);
  ALTER TABLE "BENJAMIN"."EXIGER" MODIFY ("ID_ACT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table POSSEDER
--------------------------------------------------------

  ALTER TABLE "BENJAMIN"."POSSEDER" ADD CONSTRAINT "PK_POSSEDER" PRIMARY KEY ("ID_FORMATION", "ID_P") ENABLE;
  ALTER TABLE "BENJAMIN"."POSSEDER" MODIFY ("ID_P" NOT NULL ENABLE);
  ALTER TABLE "BENJAMIN"."POSSEDER" MODIFY ("ID_FORMATION" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FORMATIONS
--------------------------------------------------------

  ALTER TABLE "BENJAMIN"."FORMATIONS" ADD CONSTRAINT "PK_FORMATIONS" PRIMARY KEY ("ID_FORMATION") ENABLE;
  ALTER TABLE "BENJAMIN"."FORMATIONS" MODIFY ("ID_FORMATION" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FORMULES
--------------------------------------------------------

  ALTER TABLE "BENJAMIN"."FORMULES" ADD CONSTRAINT "PK_FORMULES" PRIMARY KEY ("ID_FORMULE") ENABLE;
  ALTER TABLE "BENJAMIN"."FORMULES" MODIFY ("ID_ACT" NOT NULL ENABLE);
  ALTER TABLE "BENJAMIN"."FORMULES" MODIFY ("ID_SEANCE" NOT NULL ENABLE);
  ALTER TABLE "BENJAMIN"."FORMULES" MODIFY ("ID_TP_FORM" NOT NULL ENABLE);
  ALTER TABLE "BENJAMIN"."FORMULES" MODIFY ("ID_FORMULE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EXEMPLAIRE_MATERIELS
--------------------------------------------------------

  ALTER TABLE "BENJAMIN"."EXEMPLAIRE_MATERIELS" ADD CONSTRAINT "PK_EXEMPLAIRE_MATERIELS" PRIMARY KEY ("ID_EXEM") ENABLE;
  ALTER TABLE "BENJAMIN"."EXEMPLAIRE_MATERIELS" MODIFY ("ID_MAT" NOT NULL ENABLE);
  ALTER TABLE "BENJAMIN"."EXEMPLAIRE_MATERIELS" MODIFY ("ID_EXEM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TYPE_EQUIPEMENT
--------------------------------------------------------

  ALTER TABLE "BENJAMIN"."TYPE_EQUIPEMENT" ADD CONSTRAINT "PK_TYPE_EQUIPEMENT" PRIMARY KEY ("ID_TPLIEUX") ENABLE;
  ALTER TABLE "BENJAMIN"."TYPE_EQUIPEMENT" MODIFY ("ID_TPLIEUX" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ADHERENTS
--------------------------------------------------------

  ALTER TABLE "BENJAMIN"."ADHERENTS" ADD CONSTRAINT "PK_ADHERENTS" PRIMARY KEY ("ID_P") ENABLE;
  ALTER TABLE "BENJAMIN"."ADHERENTS" MODIFY ("ID_P" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TYPES_FORMULE
--------------------------------------------------------

  ALTER TABLE "BENJAMIN"."TYPES_FORMULE" ADD CONSTRAINT "PK_TYPES_FORMULE" PRIMARY KEY ("ID_TP_FORM") ENABLE;
  ALTER TABLE "BENJAMIN"."TYPES_FORMULE" MODIFY ("ID_TP_FORM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PERMETTRE2
--------------------------------------------------------

  ALTER TABLE "BENJAMIN"."PERMETTRE2" ADD CONSTRAINT "PK_PERMETTRE2" PRIMARY KEY ("ID_FORMULE", "ID_SEANCE") ENABLE;
  ALTER TABLE "BENJAMIN"."PERMETTRE2" MODIFY ("ID_SEANCE" NOT NULL ENABLE);
  ALTER TABLE "BENJAMIN"."PERMETTRE2" MODIFY ("ID_FORMULE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ANIMATEURS
--------------------------------------------------------

  ALTER TABLE "BENJAMIN"."ANIMATEURS" ADD CONSTRAINT "PK_ANIMATEURS" PRIMARY KEY ("ID_P") ENABLE;
  ALTER TABLE "BENJAMIN"."ANIMATEURS" MODIFY ("ID_P" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SEANCES
--------------------------------------------------------

  ALTER TABLE "BENJAMIN"."SEANCES" ADD CONSTRAINT "PK_SEANCES" PRIMARY KEY ("ID_SEANCE") ENABLE;
  ALTER TABLE "BENJAMIN"."SEANCES" MODIFY ("ID_P" NOT NULL ENABLE);
  ALTER TABLE "BENJAMIN"."SEANCES" MODIFY ("ID_ACT" NOT NULL ENABLE);
  ALTER TABLE "BENJAMIN"."SEANCES" MODIFY ("ID_EQUI" NOT NULL ENABLE);
  ALTER TABLE "BENJAMIN"."SEANCES" MODIFY ("ID_SEANCE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REQUERIR
--------------------------------------------------------

  ALTER TABLE "BENJAMIN"."REQUERIR" MODIFY ("ID_FORMATION" NOT NULL ENABLE);
  ALTER TABLE "BENJAMIN"."REQUERIR" MODIFY ("ID_ACT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ACTIVITES
--------------------------------------------------------

  ALTER TABLE "BENJAMIN"."ACTIVITES" ADD CONSTRAINT "PK_ACTIVITES" PRIMARY KEY ("ID_ACT") ENABLE;
  ALTER TABLE "BENJAMIN"."ACTIVITES" MODIFY ("ID_TPLIEUX" NOT NULL ENABLE);
  ALTER TABLE "BENJAMIN"."ACTIVITES" MODIFY ("ID_ACT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table INDISPONIBILITES_EQ
--------------------------------------------------------

  ALTER TABLE "BENJAMIN"."INDISPONIBILITES_EQ" ADD CONSTRAINT "PK_INDISPONIBILITES_EQ" PRIMARY KEY ("ID_INAN__") ENABLE;
  ALTER TABLE "BENJAMIN"."INDISPONIBILITES_EQ" MODIFY ("ID_EQUI" NOT NULL ENABLE);
  ALTER TABLE "BENJAMIN"."INDISPONIBILITES_EQ" MODIFY ("ID_INAN__" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table INDISPONIBILITES_AN
--------------------------------------------------------

  ALTER TABLE "BENJAMIN"."INDISPONIBILITES_AN" ADD CONSTRAINT "PK_INDISPONIBILITES_AN" PRIMARY KEY ("ID_INAN") ENABLE;
  ALTER TABLE "BENJAMIN"."INDISPONIBILITES_AN" MODIFY ("ID_P" NOT NULL ENABLE);
  ALTER TABLE "BENJAMIN"."INDISPONIBILITES_AN" MODIFY ("ID_INAN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RESERVER
--------------------------------------------------------

  ALTER TABLE "BENJAMIN"."RESERVER" ADD CONSTRAINT "PK_RESERVER" PRIMARY KEY ("ID_SEANCE", "ID_EXEM") ENABLE;
  ALTER TABLE "BENJAMIN"."RESERVER" MODIFY ("ID_EXEM" NOT NULL ENABLE);
  ALTER TABLE "BENJAMIN"."RESERVER" MODIFY ("ID_SEANCE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EQUIPEMENTS
--------------------------------------------------------

  ALTER TABLE "BENJAMIN"."EQUIPEMENTS" ADD CONSTRAINT "PK_EQUIPEMENTS" PRIMARY KEY ("ID_EQUI") ENABLE;
  ALTER TABLE "BENJAMIN"."EQUIPEMENTS" MODIFY ("ID_TPLIEUX" NOT NULL ENABLE);
  ALTER TABLE "BENJAMIN"."EQUIPEMENTS" MODIFY ("ID_EQUI" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MATERIELS
--------------------------------------------------------

  ALTER TABLE "BENJAMIN"."MATERIELS" ADD CONSTRAINT "PK_MATERIELS" PRIMARY KEY ("ID_MAT") ENABLE;
  ALTER TABLE "BENJAMIN"."MATERIELS" MODIFY ("ID_MAT" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table ACTIVITES
--------------------------------------------------------

  ALTER TABLE "BENJAMIN"."ACTIVITES" ADD CONSTRAINT "FK_ACTIVITE_NECESSITE_TYPE_EQU" FOREIGN KEY ("ID_TPLIEUX")
	  REFERENCES "BENJAMIN"."TYPE_EQUIPEMENT" ("ID_TPLIEUX") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EQUIPEMENTS
--------------------------------------------------------

  ALTER TABLE "BENJAMIN"."EQUIPEMENTS" ADD CONSTRAINT "FK_EQUIPEME_APPARTENI_TYPE_EQU" FOREIGN KEY ("ID_TPLIEUX")
	  REFERENCES "BENJAMIN"."TYPE_EQUIPEMENT" ("ID_TPLIEUX") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EXEMPLAIRE_MATERIELS
--------------------------------------------------------

  ALTER TABLE "BENJAMIN"."EXEMPLAIRE_MATERIELS" ADD CONSTRAINT "FK_EXEMPLAI_CORRESPON_MATERIEL" FOREIGN KEY ("ID_MAT")
	  REFERENCES "BENJAMIN"."MATERIELS" ("ID_MAT") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EXIGER
--------------------------------------------------------

  ALTER TABLE "BENJAMIN"."EXIGER" ADD CONSTRAINT "FK_EXIGER_EXIGER2_MATERIEL" FOREIGN KEY ("ID_MAT")
	  REFERENCES "BENJAMIN"."MATERIELS" ("ID_MAT") ENABLE;
  ALTER TABLE "BENJAMIN"."EXIGER" ADD CONSTRAINT "FK_EXIGER_EXIGER_ACTIVITE" FOREIGN KEY ("ID_ACT")
	  REFERENCES "BENJAMIN"."ACTIVITES" ("ID_ACT") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FORMULES
--------------------------------------------------------

  ALTER TABLE "BENJAMIN"."FORMULES" ADD CONSTRAINT "FK_FORMULES_AUTORISER_SEANCES" FOREIGN KEY ("ID_SEANCE")
	  REFERENCES "BENJAMIN"."SEANCES" ("ID_SEANCE") ENABLE;
  ALTER TABLE "BENJAMIN"."FORMULES" ADD CONSTRAINT "FK_FORMULES_DEFINIR_TYPES_FO" FOREIGN KEY ("ID_TP_FORM")
	  REFERENCES "BENJAMIN"."TYPES_FORMULE" ("ID_TP_FORM") ENABLE;
  ALTER TABLE "BENJAMIN"."FORMULES" ADD CONSTRAINT "FK_FORMULES_LICENCIER_ACTIVITE" FOREIGN KEY ("ID_ACT")
	  REFERENCES "BENJAMIN"."ACTIVITES" ("ID_ACT") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table INDISPONIBILITES_AN
--------------------------------------------------------

  ALTER TABLE "BENJAMIN"."INDISPONIBILITES_AN" ADD CONSTRAINT "FK_INDISPON_DEVENIRAN_ANIMATEU" FOREIGN KEY ("ID_P")
	  REFERENCES "BENJAMIN"."ANIMATEURS" ("ID_P") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table INDISPONIBILITES_EQ
--------------------------------------------------------

  ALTER TABLE "BENJAMIN"."INDISPONIBILITES_EQ" ADD CONSTRAINT "FK_INDISPON_DEVENIR_EQUIPEME" FOREIGN KEY ("ID_EQUI")
	  REFERENCES "BENJAMIN"."EQUIPEMENTS" ("ID_EQUI") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PERMETTRE2
--------------------------------------------------------

  ALTER TABLE "BENJAMIN"."PERMETTRE2" ADD CONSTRAINT "FK_PERMETTR_PERMETTRE_FORMULES" FOREIGN KEY ("ID_FORMULE")
	  REFERENCES "BENJAMIN"."FORMULES" ("ID_FORMULE") ENABLE;
  ALTER TABLE "BENJAMIN"."PERMETTRE2" ADD CONSTRAINT "FK_PERMETTR_PERMETTRE_SEANCES" FOREIGN KEY ("ID_SEANCE")
	  REFERENCES "BENJAMIN"."SEANCES" ("ID_SEANCE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table POSSEDER
--------------------------------------------------------

  ALTER TABLE "BENJAMIN"."POSSEDER" ADD CONSTRAINT "FK_POSSEDER_POSSEDER2_ANIMATEU" FOREIGN KEY ("ID_P")
	  REFERENCES "BENJAMIN"."ANIMATEURS" ("ID_P") ENABLE;
  ALTER TABLE "BENJAMIN"."POSSEDER" ADD CONSTRAINT "FK_POSSEDER_POSSEDER_FORMATIO" FOREIGN KEY ("ID_FORMATION")
	  REFERENCES "BENJAMIN"."FORMATIONS" ("ID_FORMATION") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RESERVER
--------------------------------------------------------

  ALTER TABLE "BENJAMIN"."RESERVER" ADD CONSTRAINT "FK_RESERVER_RESERVER2_EXEMPLAI" FOREIGN KEY ("ID_EXEM")
	  REFERENCES "BENJAMIN"."EXEMPLAIRE_MATERIELS" ("ID_EXEM") ENABLE;
  ALTER TABLE "BENJAMIN"."RESERVER" ADD CONSTRAINT "FK_RESERVER_RESERVER_SEANCES" FOREIGN KEY ("ID_SEANCE")
	  REFERENCES "BENJAMIN"."SEANCES" ("ID_SEANCE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SEANCES
--------------------------------------------------------

  ALTER TABLE "BENJAMIN"."SEANCES" ADD CONSTRAINT "FK_SEANCES_ANIMER_ANIMATEU" FOREIGN KEY ("ID_P")
	  REFERENCES "BENJAMIN"."ANIMATEURS" ("ID_P") ENABLE;
  ALTER TABLE "BENJAMIN"."SEANCES" ADD CONSTRAINT "FK_SEANCES_CONCERNER_ACTIVITE" FOREIGN KEY ("ID_ACT")
	  REFERENCES "BENJAMIN"."ACTIVITES" ("ID_ACT") ENABLE;
  ALTER TABLE "BENJAMIN"."SEANCES" ADD CONSTRAINT "FK_SEANCES_LOUER_EQUIPEME" FOREIGN KEY ("ID_EQUI")
	  REFERENCES "BENJAMIN"."EQUIPEMENTS" ("ID_EQUI") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SOUSCRIRE
--------------------------------------------------------

  ALTER TABLE "BENJAMIN"."SOUSCRIRE" ADD CONSTRAINT "FK_SOUSCRIR_SOUSCRIRE_ADHERENT" FOREIGN KEY ("ID_P")
	  REFERENCES "BENJAMIN"."ADHERENTS" ("ID_P") ENABLE;
  ALTER TABLE "BENJAMIN"."SOUSCRIRE" ADD CONSTRAINT "FK_SOUSCRIR_SOUSCRIRE_FORMULES" FOREIGN KEY ("ID_FORMULE")
	  REFERENCES "BENJAMIN"."FORMULES" ("ID_FORMULE") ENABLE;
