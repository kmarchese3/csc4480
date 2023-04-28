-- Games Table
CREATE TABLE Games(
    Start_time  varchar2(5),
    Field_loc   varchar2(25),
    Field_num   int, 
    Game_date   date,
    Time_limit  int,
    Umpire      varchar2(25),
    Home_team   varchar2(25),
    Away_team   varchar2(25),
    primary key (Start_time, Field_loc, Field_num, Game_date)
);

-- Teams Table
CREATE TABLE Teams(
    Team_name     varchar2(25),
    Mascot        varchar2(25),
    No_of_players int,
    Hometown      varchar2(25),
    No_of_coahces int,
    Manager_name  varchar2(25),
    primary key (Team_name),
);

-- Coaches Table
CREATE TABLE Coaches(
    Coaches_name varchar2(25),
    Years_exper  int,
    Team_name    varchar2(25),
    Position     varchar2(25),
    primary key (Coaches_name),
    foreign key(Team_name) references Teams(Team_name)
);

--Add foreign key to Teams
ALTER TABLE Teams ADD (
    foreign key (Manager_name) references Coaches(Coaches_name)
);

-- Vendors Table
CREATE TABLE Vendors(
    Vendor_name     varchar2(25),
    Price           int,
    Product         varchar2(25),
    Vendor_location varchar2(25), 
    Game_start      varchar2(5),
    Game_loc        varchar2(25),
    Game_field      int,
    Game_date       date,
    primary key (Vendor_name),
    foreign key (Game_start, Game_loc, Game_field, Game_date) references Games(Start_time, Field_loc, Field_num, Game_date)
);

-- Nathaniel Bevins
-- Create Player Table
CREATE TABLE Players(
    Player_number   number(1) not null,
    Team_Name       varchar2(25),
    Player_name     varchar2(25),
    Age             number(1),
    Position        varchar2(25),
    primary key (PNumber, Team_Name),
    foreign key (Team_Name) references Teams(Team_name)
);

-- Nathaniel Bevins
-- Create Team_Plays Table
CREATE TABLE Team_Plays (
    Team_name   varchar2(25),
    Game_start  varchar2(25),
    Game_loc    varchar2(25),
    Game_field  int,
    Game_date   date,
    primary key (Team_name, Game_start, Game_loc, Game_field, Game_date),
    foreign key (Team_name) references Teams(Team_name),
    foreign key (Game_start, Game_loc, Game_field, Game_date) references Games(Start_time, Field_loc, Field_num, Game_date)
);