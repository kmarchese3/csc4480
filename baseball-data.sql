-- Games Table
-- Teams Table
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