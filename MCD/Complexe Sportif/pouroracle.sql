/*==============================================================*/
/* Nom de SGBD :  ORACLE Version 11g                            */
/* Date de création :  23/11/2013 11:35:31                      */
/*==============================================================*/


alter table ACTIVITES
   drop constraint FK_ACTIVITE_NECESSITE_TYPE_EQU;

alter table EQUIPEMENTS
   drop constraint FK_EQUIPEME_APPARTENI_TYPE_EQU;

alter table EXEMPLAIRE_MATERIELS
   drop constraint FK_EXEMPLAI_CORRESPON_MATERIEL;

alter table EXIGER
   drop constraint FK_EXIGER_EXIGER_ACTIVITE;

alter table EXIGER
   drop constraint FK_EXIGER_EXIGER2_MATERIEL;

alter table FORMULES
   drop constraint FK_FORMULES_AUTORISER_SEANCES;

alter table FORMULES
   drop constraint FK_FORMULES_DEFINIR_TYPES_FO;

alter table FORMULES
   drop constraint FK_FORMULES_LICENCIER_ACTIVITE;

alter table INDISPONIBILITES_AN
   drop constraint FK_INDISPON_DEVENIRAN_ANIMATEU;

alter table INDISPONIBILITES_EQ
   drop constraint FK_INDISPON_DEVENIR_EQUIPEME;

alter table PERMETTRE2
   drop constraint FK_PERMETTR_PERMETTRE_FORMULES;

alter table PERMETTRE2
   drop constraint FK_PERMETTR_PERMETTRE_SEANCES;

alter table POSSEDER
   drop constraint FK_POSSEDER_POSSEDER_FORMATIO;

alter table POSSEDER
   drop constraint FK_POSSEDER_POSSEDER2_ANIMATEU;

alter table REQUERRIR
   drop constraint FK_REQUERRI_REQUERRIR_ACTIVITE;

alter table REQUERRIR
   drop constraint FK_REQUERRI_REQUERRIR_FORMATIO;

alter table RESERVER
   drop constraint FK_RESERVER_RESERVER_SEANCES;

alter table RESERVER
   drop constraint FK_RESERVER_RESERVER2_EXEMPLAI;

alter table SEANCES
   drop constraint FK_SEANCES_ANIMER_ANIMATEU;

alter table SEANCES
   drop constraint FK_SEANCES_CONCERNER_ACTIVITE;

alter table SEANCES
   drop constraint FK_SEANCES_LOUER_EQUIPEME;

alter table SOUSCRIRE
   drop constraint FK_SOUSCRIR_SOUSCRIRE_ADHERENT;

alter table SOUSCRIRE
   drop constraint FK_SOUSCRIR_SOUSCRIRE_FORMULES;

drop index NECESSITER2_FK;

drop table ACTIVITES cascade constraints;

drop table ADHERENTS cascade constraints;

drop table ANIMATEURS cascade constraints;

drop index APPARTENIR_FK;

drop table EQUIPEMENTS cascade constraints;

drop index CORRESPONDRE_FK;

drop table EXEMPLAIRE_MATERIELS cascade constraints;

drop index EXIGER2_FK;

drop index EXIGER_FK;

drop table EXIGER cascade constraints;

drop table FORMATIONS cascade constraints;

drop index DEFINIR_FK;

drop index LICENCIER_FK;

drop index AUTORISER_FK;

drop table FORMULES cascade constraints;

drop index DEVENIRAN_FK;

drop table INDISPONIBILITES_AN cascade constraints;

drop index DEVENIR_FK;

drop table INDISPONIBILITES_EQ cascade constraints;

drop table MATERIELS cascade constraints;

drop index PERMETTRE3_FK;

drop index PERMETTRE2_FK;

drop table PERMETTRE2 cascade constraints;

drop index POSSEDER2_FK;

drop index POSSEDER_FK;

drop table POSSEDER cascade constraints;

drop index REQUERRIR2_FK;

drop index REQUERRIR_FK;

drop table REQUERRIR cascade constraints;

drop index RESERVER2_FK;

drop index RESERVER_FK;

drop table RESERVER cascade constraints;

drop index LOUER_FK;

drop index CONCERNER_FK;

drop index ANIMER_FK;

drop table SEANCES cascade constraints;

drop index SOUSCRIRE2_FK;

drop index SOUSCRIRE_FK;

drop table SOUSCRIRE cascade constraints;

drop table TYPES_FORMULE cascade constraints;

drop table TYPE_EQUIPEMENT cascade constraints;

drop sequence S_ACTIVITES;

drop sequence S_EQUIPEMENTS;

drop sequence S_EXEMPLAIRE_MATERIELS;

drop sequence S_FORMATIONS;

drop sequence S_FORMULES;

drop sequence S_INDISPONIBILITES_AN;

drop sequence S_INDISPONIBILITES_EQ;

drop sequence S_MATERIELS;

drop sequence S_PERSONNES;

drop sequence S_SEANCES;

drop sequence S_TYPES_FORMULE;

drop sequence S_TYPE_EQUIPEMENT;

create sequence S_ACTIVITES;

create sequence S_EQUIPEMENTS;

create sequence S_EXEMPLAIRE_MATERIELS;

create sequence S_FORMATIONS;

create sequence S_FORMULES;

create sequence S_INDISPONIBILITES_AN;

create sequence S_INDISPONIBILITES_EQ;

create sequence S_MATERIELS;

create sequence S_PERSONNES;

create sequence S_SEANCES;

create sequence S_TYPES_FORMULE;

create sequence S_TYPE_EQUIPEMENT;

/*==============================================================*/
/* Table : ACTIVITES                                            */
/*==============================================================*/
create table ACTIVITES 
(
   ID_ACT               NUMBER(6)            not null,
   ID_TPLIEUX           NUMBER(6)            not null,
   NOM_ACT              CLOB,
   PRIX_ACT             FLOAT,
   PRIXSEANCE_ACT       FLOAT,
   constraint PK_ACTIVITES primary key (ID_ACT)
);

/*==============================================================*/
/* Index : NECESSITER2_FK                                       */
/*==============================================================*/
create index NECESSITER2_FK on ACTIVITES (
   ID_TPLIEUX ASC
);

/*==============================================================*/
/* Table : ADHERENTS                                            */
/*==============================================================*/
create table ADHERENTS 
(
   ID_P                 NUMBER(6)            not null,
   MDP_P                CLOB,
   NOM_P                CLOB,
   PRNM_P               CLOB,
   AD_P                 CLOB,
   CP_P                 CLOB,
   VILLE_P              CLOB,
   TEL_P                CLOB,
   constraint PK_ADHERENTS primary key (ID_P)
);

/*==============================================================*/
/* Table : ANIMATEURS                                           */
/*==============================================================*/
create table ANIMATEURS 
(
   ID_P                 NUMBER(6)            not null,
   DATEEMB              DATE,
   MDP_P                CLOB,
   NOM_P                CLOB,
   PRNM_P               CLOB,
   AD_P                 CLOB,
   CP_P                 CLOB,
   VILLE_P              CLOB,
   TEL_P                CLOB,
   constraint PK_ANIMATEURS primary key (ID_P)
);

/*==============================================================*/
/* Table : EQUIPEMENTS                                          */
/*==============================================================*/
create table EQUIPEMENTS 
(
   ID_EQUI              NUMBER(6)            not null,
   ID_TPLIEUX           NUMBER(6)            not null,
   NOM_EQUI             CLOB,
   AD_EQUI              CLOB,
   PLACE_MAX_EQUI       INTEGER,
   constraint PK_EQUIPEMENTS primary key (ID_EQUI)
);

/*==============================================================*/
/* Index : APPARTENIR_FK                                        */
/*==============================================================*/
create index APPARTENIR_FK on EQUIPEMENTS (
   ID_TPLIEUX ASC
);

/*==============================================================*/
/* Table : EXEMPLAIRE_MATERIELS                                 */
/*==============================================================*/
create table EXEMPLAIRE_MATERIELS 
(
   ID_EXEM              NUMBER(6)            not null,
   ID_MAT               NUMBER(6)            not null,
   DATE_ACHAT           DATE,
   ETAT                 CLOB,
   constraint PK_EXEMPLAIRE_MATERIELS primary key (ID_EXEM)
);

/*==============================================================*/
/* Index : CORRESPONDRE_FK                                      */
/*==============================================================*/
create index CORRESPONDRE_FK on EXEMPLAIRE_MATERIELS (
   ID_MAT ASC
);

/*==============================================================*/
/* Table : EXIGER                                               */
/*==============================================================*/
create table EXIGER 
(
   ID_ACT               NUMBER(6)            not null,
   ID_MAT               NUMBER(6)            not null,
   QUANTITE             INTEGER,
   constraint PK_EXIGER primary key (ID_ACT, ID_MAT)
);

/*==============================================================*/
/* Index : EXIGER_FK                                            */
/*==============================================================*/
create index EXIGER_FK on EXIGER (
   ID_ACT ASC
);

/*==============================================================*/
/* Index : EXIGER2_FK                                           */
/*==============================================================*/
create index EXIGER2_FK on EXIGER (
   ID_MAT ASC
);

/*==============================================================*/
/* Table : FORMATIONS                                           */
/*==============================================================*/
create table FORMATIONS 
(
   ID_FORMATION         NUMBER(6)            not null,
   NOM_FORMATION        CLOB,
   constraint PK_FORMATIONS primary key (ID_FORMATION)
);

/*==============================================================*/
/* Table : FORMULES                                             */
/*==============================================================*/
create table FORMULES 
(
   ID_FORMULE           NUMBER(6)            not null,
   ID_TP_FORM           NUMBER(6)            not null,
   ID_SEANCE            NUMBER(6)            not null,
   ID_ACT               NUMBER(6)            not null,
   constraint PK_FORMULES primary key (ID_FORMULE)
);

/*==============================================================*/
/* Index : AUTORISER_FK                                         */
/*==============================================================*/
create index AUTORISER_FK on FORMULES (
   ID_SEANCE ASC
);

/*==============================================================*/
/* Index : LICENCIER_FK                                         */
/*==============================================================*/
create index LICENCIER_FK on FORMULES (
   ID_ACT ASC
);

/*==============================================================*/
/* Index : DEFINIR_FK                                           */
/*==============================================================*/
create index DEFINIR_FK on FORMULES (
   ID_TP_FORM ASC
);

/*==============================================================*/
/* Table : INDISPONIBILITES_AN                                  */
/*==============================================================*/
create table INDISPONIBILITES_AN 
(
   ID_INAN              NUMBER(6)            not null,
   ID_P                 NUMBER(6)            not null,
   DEB_INAN__           DATE,
   FIN_INAN__           DATE,
   INFORMATIONS_IDAN__  CLOB,
   constraint PK_INDISPONIBILITES_AN primary key (ID_INAN)
);

/*==============================================================*/
/* Index : DEVENIRAN_FK                                         */
/*==============================================================*/
create index DEVENIRAN_FK on INDISPONIBILITES_AN (
   ID_P ASC
);

/*==============================================================*/
/* Table : INDISPONIBILITES_EQ                                  */
/*==============================================================*/
create table INDISPONIBILITES_EQ 
(
   ID_INAN__            NUMBER(6)            not null,
   ID_EQUI              NUMBER(6)            not null,
   DEB_INEQ__           DATE,
   FIN_INEQ__           DATE,
   INFORMATIONS_INEQ__  CLOB,
   constraint PK_INDISPONIBILITES_EQ primary key (ID_INAN__)
);

/*==============================================================*/
/* Index : DEVENIR_FK                                           */
/*==============================================================*/
create index DEVENIR_FK on INDISPONIBILITES_EQ (
   ID_EQUI ASC
);

/*==============================================================*/
/* Table : MATERIELS                                            */
/*==============================================================*/
create table MATERIELS 
(
   ID_MAT               NUMBER(6)            not null,
   NOM_MAT              CLOB,
   constraint PK_MATERIELS primary key (ID_MAT)
);

/*==============================================================*/
/* Table : PERMETTRE2                                           */
/*==============================================================*/
create table PERMETTRE2 
(
   ID_FORMULE           NUMBER(6)            not null,
   ID_SEANCE            NUMBER(6)            not null,
   constraint PK_PERMETTRE2 primary key (ID_FORMULE, ID_SEANCE)
);

/*==============================================================*/
/* Index : PERMETTRE2_FK                                        */
/*==============================================================*/
create index PERMETTRE2_FK on PERMETTRE2 (
   ID_FORMULE ASC
);

/*==============================================================*/
/* Index : PERMETTRE3_FK                                        */
/*==============================================================*/
create index PERMETTRE3_FK on PERMETTRE2 (
   ID_SEANCE ASC
);

/*==============================================================*/
/* Table : POSSEDER                                             */
/*==============================================================*/
create table POSSEDER 
(
   ID_FORMATION         NUMBER(6)            not null,
   ID_P                 NUMBER(6)            not null,
   constraint PK_POSSEDER primary key (ID_FORMATION, ID_P)
);

/*==============================================================*/
/* Index : POSSEDER_FK                                          */
/*==============================================================*/
create index POSSEDER_FK on POSSEDER (
   ID_FORMATION ASC
);

/*==============================================================*/
/* Index : POSSEDER2_FK                                         */
/*==============================================================*/
create index POSSEDER2_FK on POSSEDER (
   ID_P ASC
);

/*==============================================================*/
/* Table : REQUERRIR                                            */
/*==============================================================*/
create table REQUERRIR 
(
   ID_ACT               NUMBER(6)            not null,
   ID_FORMATION         NUMBER(6)            not null,
   constraint PK_REQUERRIR primary key (ID_ACT, ID_FORMATION)
);

/*==============================================================*/
/* Index : REQUERRIR_FK                                         */
/*==============================================================*/
create index REQUERRIR_FK on REQUERRIR (
   ID_ACT ASC
);

/*==============================================================*/
/* Index : REQUERRIR2_FK                                        */
/*==============================================================*/
create index REQUERRIR2_FK on REQUERRIR (
   ID_FORMATION ASC
);

/*==============================================================*/
/* Table : RESERVER                                             */
/*==============================================================*/
create table RESERVER 
(
   ID_SEANCE            NUMBER(6)            not null,
   ID_EXEM              NUMBER(6)            not null,
   constraint PK_RESERVER primary key (ID_SEANCE, ID_EXEM)
);

/*==============================================================*/
/* Index : RESERVER_FK                                          */
/*==============================================================*/
create index RESERVER_FK on RESERVER (
   ID_SEANCE ASC
);

/*==============================================================*/
/* Index : RESERVER2_FK                                         */
/*==============================================================*/
create index RESERVER2_FK on RESERVER (
   ID_EXEM ASC
);

/*==============================================================*/
/* Table : SEANCES                                              */
/*==============================================================*/
create table SEANCES 
(
   ID_SEANCE            NUMBER(6)            not null,
   ID_EQUI              NUMBER(6)            not null,
   ID_ACT               NUMBER(6)            not null,
   ID_P                 NUMBER(6)            not null,
   DATE_SEANCE          DATE,
   HDEB                 DATE,
   HFIN                 DATE,
   constraint PK_SEANCES primary key (ID_SEANCE)
);

/*==============================================================*/
/* Index : ANIMER_FK                                            */
/*==============================================================*/
create index ANIMER_FK on SEANCES (
   ID_P ASC
);

/*==============================================================*/
/* Index : CONCERNER_FK                                         */
/*==============================================================*/
create index CONCERNER_FK on SEANCES (
   ID_ACT ASC
);

/*==============================================================*/
/* Index : LOUER_FK                                             */
/*==============================================================*/
create index LOUER_FK on SEANCES (
   ID_EQUI ASC
);

/*==============================================================*/
/* Table : SOUSCRIRE                                            */
/*==============================================================*/
create table SOUSCRIRE 
(
   ID_P                 NUMBER(6)            not null,
   ID_FORMULE           NUMBER(6)            not null,
   constraint PK_SOUSCRIRE primary key (ID_P, ID_FORMULE)
);

/*==============================================================*/
/* Index : SOUSCRIRE_FK                                         */
/*==============================================================*/
create index SOUSCRIRE_FK on SOUSCRIRE (
   ID_P ASC
);

/*==============================================================*/
/* Index : SOUSCRIRE2_FK                                        */
/*==============================================================*/
create index SOUSCRIRE2_FK on SOUSCRIRE (
   ID_FORMULE ASC
);

/*==============================================================*/
/* Table : TYPES_FORMULE                                        */
/*==============================================================*/
create table TYPES_FORMULE 
(
   ID_TP_FORM           NUMBER(6)            not null,
   NOM_TP_FORM          VARCHAR2(50),
   PRIX_TP_FORM         VARCHAR2(50),
   constraint PK_TYPES_FORMULE primary key (ID_TP_FORM)
);

/*==============================================================*/
/* Table : TYPE_EQUIPEMENT                                      */
/*==============================================================*/
create table TYPE_EQUIPEMENT 
(
   ID_TPLIEUX           NUMBER(6)            not null,
   NOM_TPLIEUX          CLOB,
   constraint PK_TYPE_EQUIPEMENT primary key (ID_TPLIEUX)
);

alter table ACTIVITES
   add constraint FK_ACTIVITE_NECESSITE_TYPE_EQU foreign key (ID_TPLIEUX)
      references TYPE_EQUIPEMENT (ID_TPLIEUX);

alter table EQUIPEMENTS
   add constraint FK_EQUIPEME_APPARTENI_TYPE_EQU foreign key (ID_TPLIEUX)
      references TYPE_EQUIPEMENT (ID_TPLIEUX);

alter table EXEMPLAIRE_MATERIELS
   add constraint FK_EXEMPLAI_CORRESPON_MATERIEL foreign key (ID_MAT)
      references MATERIELS (ID_MAT);

alter table EXIGER
   add constraint FK_EXIGER_EXIGER_ACTIVITE foreign key (ID_ACT)
      references ACTIVITES (ID_ACT);

alter table EXIGER
   add constraint FK_EXIGER_EXIGER2_MATERIEL foreign key (ID_MAT)
      references MATERIELS (ID_MAT);

alter table FORMULES
   add constraint FK_FORMULES_AUTORISER_SEANCES foreign key (ID_SEANCE)
      references SEANCES (ID_SEANCE);

alter table FORMULES
   add constraint FK_FORMULES_DEFINIR_TYPES_FO foreign key (ID_TP_FORM)
      references TYPES_FORMULE (ID_TP_FORM);

alter table FORMULES
   add constraint FK_FORMULES_LICENCIER_ACTIVITE foreign key (ID_ACT)
      references ACTIVITES (ID_ACT);

alter table INDISPONIBILITES_AN
   add constraint FK_INDISPON_DEVENIRAN_ANIMATEU foreign key (ID_P)
      references ANIMATEURS (ID_P);

alter table INDISPONIBILITES_EQ
   add constraint FK_INDISPON_DEVENIR_EQUIPEME foreign key (ID_EQUI)
      references EQUIPEMENTS (ID_EQUI);

alter table PERMETTRE2
   add constraint FK_PERMETTR_PERMETTRE_FORMULES foreign key (ID_FORMULE)
      references FORMULES (ID_FORMULE);

alter table PERMETTRE2
   add constraint FK_PERMETTR_PERMETTRE_SEANCES foreign key (ID_SEANCE)
      references SEANCES (ID_SEANCE);

alter table POSSEDER
   add constraint FK_POSSEDER_POSSEDER_FORMATIO foreign key (ID_FORMATION)
      references FORMATIONS (ID_FORMATION);

alter table POSSEDER
   add constraint FK_POSSEDER_POSSEDER2_ANIMATEU foreign key (ID_P)
      references ANIMATEURS (ID_P);

alter table REQUERRIR
   add constraint FK_REQUERRI_REQUERRIR_ACTIVITE foreign key (ID_ACT)
      references ACTIVITES (ID_ACT);

alter table REQUERRIR
   add constraint FK_REQUERRI_REQUERRIR_FORMATIO foreign key (ID_FORMATION)
      references FORMATIONS (ID_FORMATION);

alter table RESERVER
   add constraint FK_RESERVER_RESERVER_SEANCES foreign key (ID_SEANCE)
      references SEANCES (ID_SEANCE);

alter table RESERVER
   add constraint FK_RESERVER_RESERVER2_EXEMPLAI foreign key (ID_EXEM)
      references EXEMPLAIRE_MATERIELS (ID_EXEM);

alter table SEANCES
   add constraint FK_SEANCES_ANIMER_ANIMATEU foreign key (ID_P)
      references ANIMATEURS (ID_P);

alter table SEANCES
   add constraint FK_SEANCES_CONCERNER_ACTIVITE foreign key (ID_ACT)
      references ACTIVITES (ID_ACT);

alter table SEANCES
   add constraint FK_SEANCES_LOUER_EQUIPEME foreign key (ID_EQUI)
      references EQUIPEMENTS (ID_EQUI);

alter table SOUSCRIRE
   add constraint FK_SOUSCRIR_SOUSCRIRE_ADHERENT foreign key (ID_P)
      references ADHERENTS (ID_P);

alter table SOUSCRIRE
   add constraint FK_SOUSCRIR_SOUSCRIRE_FORMULES foreign key (ID_FORMULE)
      references FORMULES (ID_FORMULE);

