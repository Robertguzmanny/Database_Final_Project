
DROP TABLE IF EXISTS `game`;

CREATE TABLE `game` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `Game_ID` mediumint,
  `HomeTeam_ID` mediumint default NULL,
  `AwayTeam_ID` mediumint default NULL,
  `date` varchar(255),
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `game` (`Game_ID`,`HomeTeam_ID`,`AwayTeam_ID`,`date`)
VALUES
  (1,1,2,"Aug 31, 2023"),
  (2,1,4,"Aug 21, 2023"),
  (3,1,1,"Aug 13, 2022"),
  (4,6,5,"Oct 26, 2022"),
  (5,2,7,"Apr 25, 2023");
  
 CREATE TABLE `League` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `Divion` TEXT default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `League` (`Divion`)
VALUES
  ("National League"),
  ("American League"),
  ("League National"),
  ("League National"),
  ("League National");

select * from players;
select * from game;
select * from League;
select * from Stadium;
select * from sport;

DROP TABLE IF EXISTS `Stadium`;

CREATE TABLE `Stadium` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `stadium_id` VARCHAR(255),
  `name` TEXT default NULL,
  `capacity` mediumint default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `Stadium` (`stadium_id`,`name`,`capacity`)
VALUES
  ("2i","Phasellus vitae",39421),
  ("6i","eget metus.",25224),
  ("10i","tellus. Aenean",46867),
  ("14i","pharetra sed,",42140),
  ("18i","nec luctus",41008);

 ALTER TABLE Stadium MODIFY stadium_id VARCHAR(255);

DROP TABLE IF EXISTS `sport`;

CREATE TABLE `sport` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `Pay_Scale` varchar(100) default NULL,
  `Sport_id` mediumint,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `sport` (`Pay_Scale`,`Sport_id`)
VALUES
  ("$2041.22",0),
  ("$1975.09",2),
  ("$5458.78",4),
  ("$5102.21",6),
  ("$9179.23",8);

 create table players;

CREATE TABLE `players` (
  `player_id` mediumint(8) unsigned NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `Position` TEXT default NULL,
  `dob` varchar(255),
  `date_drafted` varchar(255),
  `years_play` mediumint default NULL,
  PRIMARY KEY (`player_id`)
) AUTO_INCREMENT=1;

INSERT INTO `players` (`name`,`Position`,`dob`,`date_drafted`,`years_play`)
VALUES
  ("Guy Ford","SHORTSTOP,","Mar 8, 1988","Jan 20, 2024",7),
  ("Rina Rogers","SMALLF","Jun 27, 1988","Aug 26, 2022",0),
  ("Micah Foster","CATCHER","Feb 10, 1993","Dec 14, 2022",10),
  ("Lewis Robles","PITCHER,","Dec 20, 1991","Oct 9, 2022",5),
  ("Kasimir Frank","SHOOTINGG,","Sep 14, 1989","Aug 21, 2022",2);
  
  select * from players;
  
  DROP TABLE IF EXISTS `teams`;
  
  CREATE TABLE `teams` (
  `team_id` mediumint(8) unsigned NOT NULL auto_increment,
  `games_play` mediumint default NULL,
  `team_name` TEXT default NULL,
  `name` TEXT default NULL,
  PRIMARY KEY (`team_id`)
) AUTO_INCREMENT=1;

INSERT INTO `teams` (`games_play`,`team_name`,`name`)
VALUES
  (201,"Marlins","Chicago"),
  (175,"Angeles","Arizona"),
  (152,"Clippers","Chicago"),
  (58,"Phillies","Chicago"),
  (27,"Golden","Baltimore");
  
    select * from teams;
    
    Select MAX(games_play) from teams;
    
Select games_play from teams
order by games_play desc;