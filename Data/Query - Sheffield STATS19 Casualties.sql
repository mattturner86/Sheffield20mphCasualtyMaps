SELECT a.Accident_Index,c.Casualty_Reference, a.[Date], c.Casualty_Severity, c.Casualty_Type_Category, a.Location_Easting_OSGR, a.Location_Northing_OSGR
FROM STATS19.vw_Accidents a
LEFT JOIN STATS19.vw_Casualties c ON c.Accident_Index = a.Accident_Index
WHERE a.[Local_Authority_(Highway)] = 'Sheffield';