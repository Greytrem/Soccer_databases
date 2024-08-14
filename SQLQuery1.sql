-- 1. Write a query in SQL to find the number of venues for EURO cup 2016. (soccer_venue)
select COUNT(*) as number_of_venues from soccer_venue

-- 2. Write a query in SQL to find the number countries participated in the EURO cup 2016. (player_mast)
select count(*) as number_of_players from player_mast

-- 3. Write a query in SQL to find the number goals scored in EURO cup 2016 within normal play schedule.(goal_details)
select count(*) as number_of_goals from goal_details where goal_schedule = 'NT'

-- 4. Write a query in SQL to find the number of matches ended with a result. (match_mast)
select count(*) as 'number of matches ended with a result' from match_mast where results = 'WIN'

-- 5. Write a query in SQL to find the number of matches ended with draws. (match_mast)
select count(*) as 'number of matches ended with a draw' from match_mast where results = 'DRAW'

--6. Write a query in SQL to find the date when did Football EURO cup 2016 begin.(match_mast)
select MIN(play_date) as 'Beginning date' from match_mast

-- 7. Write a query in SQL to find the number of self-goals scored in EURO cup 2016.( goal_details)
select count(*) as 'Number of self-goals' from goal_details where goal_type = 'O'

--8. Write a query in SQL to count the number of matches ended with a results in group stage. (match_mast)
select count(*) as 'number of matches ended with a results in group stage'  from match_mast where play_stage = 'G'

--9. Write a query in SQL to find the number of matches got a result by penalty shootout. (penalty_shootout)
select count(*) as 'number of matches got a result by penalty shootout' from penalty_shootout where score_goal = 'Y'

--10. Write a query in SQL to find the number of matches were decided on penalties in the Round of 16. (match_mast)
select count(*) as 'number of matches were decided on penalties in the Round of 16' from match_mast where decided_by = 'P' AND play_stage = 'R'

--11. Write a query in SQL to find the number of goal scored in every match within normal play schedule. (goal_details)
select count(*) as 'number of goal scored in every match within normal play schedule' from goal_details where goal_schedule = 'NT'

--12. Write a query in SQL to find the match no, date of play, and goal scored for that match in which no stoppage time have been added in 1st half of play. (match_mast)
select match_no, play_date, goal_score from match_mast where stop1_sec = 0

--13. Write a query in SQL to find the number of matches ending with a goalless draw in group stage of play. (match_details)
select count(DISTINCT(match_no)) as 'number of matches ending with a goalless draw in group stage of play.' from match_details where play_stage = 'G' and win_lose = 'D' and goal_score = 0

--14. Write a query in SQL to find the number of matches ending with only one goal win except those matches which was decided by penalty shootout.(match_details)
select count(*) as 'number of matches ending with only one goal win except those matches which was decided by penalty shootout' from match_details where win_lose = 'W' and goal_score = 1 and decided_by != 'P'

--15. Write a query in SQL to find the total number of players replaced in the tournament. (player_in_out)
select count(*) as 'number of players replaced in the tournament' from player_in_out where in_out = 'I'

--16. Write a query in SQL to find the total number of palyers replaced within normal time of play.(player_in_out)
select count(*) as 'number of palyers replaced within normal time of play' from player_in_out where in_out = 'I' and play_schedule = 'NT'

--17. Write a query in SQL to find the number of players replaced in the stoppage time. (player_in_out)
select count(*) as 'number of players replaced in the stoppage time' from player_in_out where in_out = 'I' and play_schedule = 'ST'


--18. Write a query in SQL to find the total number of players replaced in the first half of play. (player_in_out)
select count(*) as 'number of players replaced in the first half of play' from player_in_out where in_out = 'I' and play_half = 1


--19. Write a query in SQL to find the total number of goalless draws have there in the entire tournament. (match_details)
select count(*) as 'number of goalless draws have there in the entire tournament' from match_details where goal_score = 0 and win_lose = 'D'


--20. Write a query in SQL to fine the total number of players replaced in the extra time of play. (player_in_out)
select count(*) as 'number of players replaced in the extra time of play' from player_in_out where in_out = 'I' and play_schedule = 'ET'


--21. Write a query in SQL to compute a list to show the number of substitute happened in various stage of play for the entire tournament. (player_in_out)
select play_half, play_schedule, count(*) as 'Substitutes' from player_in_out where in_out = 'I' group by play_half, play_schedule ORDER BY play_half, play_schedule



--22. Write a query in SQL to find the number of shots taken in penalty shootout matches.(penalty_shootout)
select count(*) as 'number of shots taken in penalty shootout matches' from penalty_shootout 

--23. Write a query in SQL to find the number of shots socred goal in penalty shootout matches. (penalty_shootout)
select count(*) as 'number of shots scored goal in penalty shootout matches' from penalty_shootout where score_goal = 'Y'

--24. Write a query in SQL to find the number of shots missed or saved in penalty shootout matches. (penalty_shootout)
select count(*) as 'number of shots missed or saved in penalty shootout matches' from penalty_shootout where score_goal = 'N'
