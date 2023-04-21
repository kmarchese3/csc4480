-- Create Games Table
CREATE TABLE Games(
    Start_time varchar2(5),
    Field_loc varchar2(25),
    Field_num varchar2(25), 
    Game_date Date,
    Time_limit int,
    Umpire varchar2(25),
    Score varchar2(10),
    Home_team varchar2(25),
    Away_team varchar2(25),
    primary key (Start_time, Field_lod, FIeld_num)
);

-- Teams Table
CREATE TABLE Teams(
    Team_name varchar2(25),
    Mascot varchar2(25),
    No_of_players int,
    Hometown varchar2(25),
    No_of_coahces int,
    primary key (Team_name),
);

-- Coaches Table
-- Vendors Table

-- Nathaniel Bevins
-- Create Player Table
CREATE TABLE Players(
    PNumber   number(1) not null,
    PName     varchar2(25),
    Age       number(1),
    Position  varchar2(25),
    Team_Name varchar2(25),
    primary key (PNumber),
    foreign key (Team_Name) references Teams(Team_Name),
);

-- Nathaniel Bevins
-- Create Team_Plays Table
CREATE TABLE Team_Plays (
    Team_Name   varchar2(25),
    Game_start  date,
    Game_loc    varchar2(25),
    Game_field  varchar2(25),
primary key (Team_Name, Game_start, Game_loc, Game_field),
foreign key (Team_Name) references Teams(Team_Name),
foreign key (Game_start, Game_loc, Game_field) references Games(Game_start, Game_loc, Game_field)
);