-- Kaylee Marchese
-- Games Table
CREATE TABLE Games(
    Start_time  varchar2(5),
    Field_loc   varchar2(50),
    Field_num   int, 
    Game_date   date,
    Time_limit  int,
    Umpire      varchar2(50),
    Home_team   varchar2(50),
    Away_team   varchar2(50),
    primary key (Start_time, Field_loc, Field_num, Game_date)
);

-- Kaylee Marchese
-- Teams Table
CREATE TABLE Teams(
    Team_name     varchar2(50),
    Mascot        varchar2(50),
    No_of_players int,
    Hometown      varchar2(50),
    No_of_coahces int,
    primary key (Team_name)
);

-- Coaches Table
CREATE TABLE Coaches(
    Coaches_name varchar2(50),
    Years_exper  int,
    Position     varchar2(50),
    Team_name    varchar2(50),
    primary key (Coaches_name),
    foreign key(Team_name) references Teams(Team_name)
);

-- Vendors Table
CREATE TABLE Vendors(
    Vendor_name     varchar2(50),
    Price           int,
    Product         varchar2(50),
    Vendor_location varchar2(50), 
    Game_start      varchar2(5),
    Game_loc        varchar2(50),
    Game_field      int,
    Game_date       date,
    primary key (Vendor_name),
    foreign key (Game_start, Game_loc, Game_field, Game_date) references Games(Start_time, Field_loc, Field_num, Game_date)
);

-- Nathaniel Bevins
-- Create Player Table
CREATE TABLE Players(
    Player_number   number not null,
    Team_Name       varchar2(50),
    Player_name     varchar2(50),
    Age             number,
    Position        varchar2(50),
    primary key (Player_number, Team_Name),
    foreign key (Team_Name) references Teams(Team_name)
);

-- Nathaniel Bevins
-- Create Team_Plays Table
CREATE TABLE Team_Plays (
    Team_name   varchar2(50),
    Game_start  varchar2(50),
    Game_loc    varchar2(50),
    Game_field  int,
    Game_date   date,
    primary key (Team_name, Game_start, Game_loc, Game_field, Game_date),
    foreign key (Team_name) references Teams(Team_name),
    foreign key (Game_start, Game_loc, Game_field, Game_date) references Games(Start_time, Field_loc, Field_num, Game_date)
);