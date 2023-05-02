-- Nathaniel Bevins
-- Select the team whose head coach is John Smith
SELECT team_name 
FROM coaches c
WHERE c.coaches_name = 'John Smith';

-- Nathaniel Bevins
-- Find the 3rd Baseman for the team coached by Vana White
SELECT player_number, player_name, p.position
FROM coaches c, players p
WHERE c.coaches_name = 'Vana White' AND c.team_name = p.team_name;

-- Nathaniel Bevins
-- Find all the games played in by Babe Ruth
SELECT g.start_time, g.game_date, g.home_team, g.away_team
FROM games g, players p, team_plays tp
WHERE p.player_name = 'Babe Ruth' AND p.team_name = tp.team_name 
    AND tp.game_start = g.start_time AND tp.game_loc = g.field_loc 
    AND tp.game_field = g.field_num AND tp.game_date = g.game_date;

-- Kaylee Marchese
-- Find a vendor who sells sandwiches
SELECT Vendor_name
FROM Vendors
WHERE product = 'sandwich';

-- Kaylee Marchese
-- Find the names of all head coaches in descending order
SELECT distinct Coaches_name
FROM Coaches
WHERE position = 'Head Coach'
ORDER BY Coaches_name desc;