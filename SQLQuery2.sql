--25. Write a query in SQL to prepare a list of players with number of shots they taken in penalty shootout matches. 
--(Sample table: soccer_country, penalty_shootout, player_mast)

select * from [Soccer Country] 
select * from penalty_shootout
select * from player_mast

select country_name, player_name, kick_no, score_goal from player_mast inner join penalty_shootout on player_mast.player_id = penalty_shootout.player_id inner join [Soccer Country] on player_mast.team_id = [Soccer Country].country_id 

--26. Write a query in SQL to find the number of penalty shots taken by the teams. (soccer_country, penalty_shootout)	

select b.country_name, a.team_id, COUNT(a.kick_no) as 'number of penalty shots taken by the teams' from penalty_shootout a, [Soccer Country] b where a.team_id = b.country_id group by a.team_id, b.Country_id, b.country_name

--27. Write a query in SQL to find the number of booking happened in each half of play within normal play schedule. (player_booked)
select play_half, count(*) as 'number of booking happened in each half of play within normal play schedule' from player_booked where play_schedule = 'NT' group by play_half

--28. Write a query in SQL to find the number of booking happened in stoppage time. (player_booked)

select count(*) as 'number of booking happened in stoppage time' from player_booked where play_schedule = 'ST' 


--29. Write a query in SQL to find the number of booking happened in extra time. (player_booked)

select count(*) as 'number of booking happened in extra time' from player_booked where play_schedule = 'ET' 