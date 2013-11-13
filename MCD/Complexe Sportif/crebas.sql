/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de création :  12/11/2013 11:06:54                      */
/*==============================================================*/


drop table if exists ACTIVITES;

drop table if exists ADHERENTS;

drop table if exists ANIMATEURS;

drop table if exists EQUIPEMENTS;

drop table if exists EXEMPLAIRE_MATERIELS;

drop table if exists EXIGER;

drop table if exists FORMATIONS;

drop table if exists FORMULES;

drop table if exists FORMULE_ESSENTIELLE;

drop table if exists FORMULE_OCCASIONNELLE;

drop table if exists FORMULE_PREMIUM;

drop table if exists INDISPONIBILITES;

drop table if exists MATERIELS;

drop table if exists PARTICIPER;

drop table if exists PERMETTRE2;

drop table if exists PERSONNES;

drop table if exists POSSEDER;

drop table if exists REQUERRIR;

drop table if exists SEANCES;

drop table if exists SOUSCRIRE;

drop table if exists TYPE_EQUIPEMENT;

/*==============================================================*/
/* Table : ACTIVITES                                            */
/*==============================================================*/
create table ACTIVITES
(
   ID_ACT               int not null auto_increment,
   ID_TPLIEUX           int not null,
   NOM_ACT              longtext,
   PRIX_ACT             float,
   PRIXSEANCE_ACT       float,
   primary key (ID_ACT)
);

/*==============================================================*/
/* Table : ADHERENTS                                            */
/*==============================================================*/
create table ADHERENTS
(
   ID_P                 int not null,
   NOM_P                longtext,
   PRNM_P               longtext,
   AD_P                 longtext,
   CP_P                 longtext,
   VILLE_P              longtext,
   TEL_P                longtext,
   MDP_P                SHA1,
   primary key (ID_P)
);

/*==============================================================*/
/* Table : ANIMATEURS                                           */
/*==============================================================*/
create table ANIMATEURS
(
   ID_P                 int not null,
   NOM_P                longtext,
   PRNM_P               longtext,
   AD_P                 longtext,
   CP_P                 longtext,
   VILLE_P              longtext,
   TEL_P                longtext,
   MDP_P                SHA1,
   DATEEMB              date,
   primary key (ID_P)
);

/*==============================================================*/
/* Table : EQUIPEMENTS                                          */
/*==============================================================*/
create table EQUIPEMENTS
(
   ID_EQUI              int not null auto_increment,
   ID_TPLIEUX           int not null,
   NOM_EQUI             longtext,
   AD_EQUI              longtext,
   PLACE_MAX_EQUI       int,
   primary key (ID_EQUI)
);

/*==============================================================*/
/* Table : EXEMPLAIRE_MATERIELS                                 */
/*==============================================================*/
create table EXEMPLAIRE_MATERIELS
(
   ID_EXEM              int not null auto_increment,
   ID_SEANCE            int not null,
   ID_MAT               int not null,
   DATE_ACHAT           date,
   ETAT                 longtext,
   primary key (ID_EXEM)
);

/*==============================================================*/
/* Table : EXIGER                                               */
/*==============================================================*/
create table EXIGER
(
   ID_ACT               int not null,
   ID_MAT               int not null,
   QUANTITE             int,
   primary key (ID_ACT, ID_MAT)
);

/*==============================================================*/
/* Table : FORMATIONS                                           */
/*==============================================================*/
create table FORMATIONS
(
   ID_FORMATION         int not null auto_increment,
   NOM_FORMATION        longtext,
   primary key (ID_FORMATION)
);

/*==============================================================*/
/* Table : FORMULES                                             */
/*==============================================================*/
create table FORMULES
(
   ID_FORMULE           int not null auto_increment,
   primary key (ID_FORMULE)
);

/*==============================================================*/
/* Table : FORMULE_ESSENTIELLE                                  */
/*==============================================================*/
create table FORMULE_ESSENTIELLE
(
   ID_FORMULE           int not null,
   ID_ACT               int not null,
   primary key (ID_FORMULE)
);

/*==============================================================*/
/* Table : FORMULE_OCCASIONNELLE                                */
/*==============================================================*/
create table FORMULE_OCCASIONNELLE
(
   ID_FORMULE           int not null,
   ID_SEANCE            int not null,
   primary key (ID_FORMULE)
);

/*==============================================================*/
/* Table : FORMULE_PREMIUM                                      */
/*==============================================================*/
create table FORMULE_PREMIUM
(
   ID_FORMULE           int not null,
   primary key (ID_FORMULE)
);

/*==============================================================*/
/* Table : INDISPONIBILITES                                     */
/*==============================================================*/
create table INDISPONIBILITES
(
   ID_IND               int not null auto_increment,
   ID_EQUI              int not null,
   DATE_DEB_IND         date,
   DATE_FIN_IND         date,
   INFORMATIONS         text,
   primary key (ID_IND)
);

/*==============================================================*/
/* Table : MATERIELS                                            */
/*==============================================================*/
create table MATERIELS
(
   ID_MAT               int not null auto_increment,
   NOM_MAT              longtext,
   primary key (ID_MAT)
);

/*==============================================================*/
/* Table : PARTICIPER                                           */
/*==============================================================*/
create table PARTICIPER
(
   ID_P                 int not null,
   ID_SEANCE            int not null,
   primary key (ID_P, ID_SEANCE)
);

/*==============================================================*/
/* Table : PERMETTRE2                                           */
/*==============================================================*/
create table PERMETTRE2
(
   ID_FORMULE           int not null,
   ID_SEANCE            int not null,
   primary key (ID_FORMULE, ID_SEANCE)
);

/*==============================================================*/
/* Table : PERSONNES                                            */
/*==============================================================*/
create table PERSONNES
(
   ID_P                 int not null auto_increment,
   NOM_P                longtext,
   PRNM_P               longtext,
   AD_P                 longtext,
   CP_P                 longtext,
   VILLE_P              longtext,
   TEL_P                longtext,
   MDP_P                SHA1,
   primary key (ID_P)
);

/*==============================================================*/
/* Table : POSSEDER                                             */
/*==============================================================*/
create table POSSEDER
(
   ID_FORMATION         int not null,
   ID_P                 int not null,
   primary key (ID_FORMATION, ID_P)
);

/*==============================================================*/
/* Table : REQUERRIR                                            */
/*==============================================================*/
create table REQUERRIR
(
   ID_ACT               int not null,
   ID_FORMATION         int not null,
   primary key (ID_ACT, ID_FORMATION)
);

/*==============================================================*/
/* Table : SEANCES                                              */
/*==============================================================*/
create table SEANCES
(
   ID_SEANCE            int not null auto_increment,
   ID_EQUI              int not null,
   ID_ACT               int not null,
   ID_P                 int not null,
   DATE_SEANCE          date,
   HDEB                 time,
   HFIN                 time,
   primary key (ID_SEANCE)
);

/*==============================================================*/
/* Table : SOUSCRIRE                                            */
/*==============================================================*/
create table SOUSCRIRE
(
   ID_P                 int not null,
   ID_FORMULE           int not null,
   primary key (ID_P, ID_FORMULE)
);

/*==============================================================*/
/* Table : TYPE_EQUIPEMENT                                      */
/*==============================================================*/
create table TYPE_EQUIPEMENT
(
   ID_TPLIEUX           int not null auto_increment,
   NOM_TPLIEUX          longtext,
   primary key (ID_TPLIEUX)
);

alter table ACTIVITES add constraint FK_NECESSITER2 foreign key (ID_TPLIEUX)
      references TYPE_EQUIPEMENT (ID_TPLIEUX) on delete restrict on update restrict;

alter table ADHERENTS add constraint FK_PERS2 foreign key (ID_P)
      references PERSONNES (ID_P) on delete restrict on update restrict;

alter table ANIMATEURS add constraint FK_PERS foreign key (ID_P)
      references PERSONNES (ID_P) on delete restrict on update restrict;

alter table EQUIPEMENTS add constraint FK_APPARTENIR foreign key (ID_TPLIEUX)
      references TYPE_EQUIPEMENT (ID_TPLIEUX) on delete restrict on update restrict;

alter table EXEMPLAIRE_MATERIELS add constraint FK_CORRESPONDRE foreign key (ID_MAT)
      references MATERIELS (ID_MAT) on delete restrict on update restrict;

alter table EXEMPLAIRE_MATERIELS add constraint FK_RESERVER foreign key (ID_SEANCE)
      references SEANCES (ID_SEANCE) on delete restrict on update restrict;

alter table EXIGER add constraint FK_EXIGER foreign key (ID_ACT)
      references ACTIVITES (ID_ACT) on delete restrict on update restrict;

alter table EXIGER add constraint FK_EXIGER2 foreign key (ID_MAT)
      references MATERIELS (ID_MAT) on delete restrict on update restrict;

alter table FORMULE_ESSENTIELLE add constraint FK_FORMU2 foreign key (ID_FORMULE)
      references FORMULES (ID_FORMULE) on delete restrict on update restrict;

alter table FORMULE_ESSENTIELLE add constraint FK_LICENCIER foreign key (ID_ACT)
      references ACTIVITES (ID_ACT) on delete restrict on update restrict;

alter table FORMULE_OCCASIONNELLE add constraint FK_FORMU3 foreign key (ID_FORMULE)
      references FORMULES (ID_FORMULE) on delete restrict on update restrict;

alter table FORMULE_OCCASIONNELLE add constraint FK_PERMETTRE foreign key (ID_SEANCE)
      references SEANCES (ID_SEANCE) on delete restrict on update restrict;

alter table FORMULE_PREMIUM add constraint FK_FORMU foreign key (ID_FORMULE)
      references FORMULES (ID_FORMULE) on delete restrict on update restrict;

alter table INDISPONIBILITES add constraint FK_DEVENIR foreign key (ID_EQUI)
      references EQUIPEMENTS (ID_EQUI) on delete restrict on update restrict;

alter table PARTICIPER add constraint FK_PARTICIPER foreign key (ID_P)
      references ADHERENTS (ID_P) on delete restrict on update restrict;

alter table PARTICIPER add constraint FK_PARTICIPER2 foreign key (ID_SEANCE)
      references SEANCES (ID_SEANCE) on delete restrict on update restrict;

alter table PERMETTRE2 add constraint FK_PERMETTRE2 foreign key (ID_FORMULE)
      references FORMULE_PREMIUM (ID_FORMULE) on delete restrict on update restrict;

alter table PERMETTRE2 add constraint FK_PERMETTRE3 foreign key (ID_SEANCE)
      references SEANCES (ID_SEANCE) on delete restrict on update restrict;

alter table POSSEDER add constraint FK_POSSEDER foreign key (ID_FORMATION)
      references FORMATIONS (ID_FORMATION) on delete restrict on update restrict;

alter table POSSEDER add constraint FK_POSSEDER2 foreign key (ID_P)
      references ANIMATEURS (ID_P) on delete restrict on update restrict;

alter table REQUERRIR add constraint FK_REQUERRIR foreign key (ID_ACT)
      references ACTIVITES (ID_ACT) on delete restrict on update restrict;

alter table REQUERRIR add constraint FK_REQUERRIR2 foreign key (ID_FORMATION)
      references FORMATIONS (ID_FORMATION) on delete restrict on update restrict;

alter table SEANCES add constraint FK_ANIMER foreign key (ID_P)
      references ANIMATEURS (ID_P) on delete restrict on update restrict;

alter table SEANCES add constraint FK_CONCERNER foreign key (ID_ACT)
      references ACTIVITES (ID_ACT) on delete restrict on update restrict;

alter table SEANCES add constraint FK_LOUER foreign key (ID_EQUI)
      references EQUIPEMENTS (ID_EQUI) on delete restrict on update restrict;

alter table SOUSCRIRE add constraint FK_SOUSCRIRE foreign key (ID_P)
      references ADHERENTS (ID_P) on delete restrict on update restrict;

alter table SOUSCRIRE add constraint FK_SOUSCRIRE2 foreign key (ID_FORMULE)
      references FORMULES (ID_FORMULE) on delete restrict on update restrict;

