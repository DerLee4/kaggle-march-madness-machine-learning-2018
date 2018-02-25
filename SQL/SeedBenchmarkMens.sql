SELECT STRING(S1.Season) + '_' + STRING(S1.TeamID) + '_' + STRING(S2.TeamID) as ID 
, (50 + 3*(INTEGER(SUBSTRING(S2.Seed,2,2)) - INTEGER(SUBSTRING(S1.Seed,2,2))))/100.0 as Pred 
FROM [kaggle-161607:mens_hist.ncaatourneyseeds] S1 
JOIN [kaggle-161607:mens_hist.ncaatourneyseeds] S2 ON S1.Season = S2.Season 
WHERE S1.Season BETWEEN 2014 AND 2017 
 AND S1.TeamID < S2.TeamID 
ORDER BY 1;