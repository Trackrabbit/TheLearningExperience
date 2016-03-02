SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP000013SS_2] (@PP_Profile_Name char(21), @DistRef char(31)) AS  set nocount on SELECT TOP 1  PP_Profile_Name, SEQNUMBR, DistRef, DEX_ROW_ID FROM .PP000013 WHERE PP_Profile_Name = @PP_Profile_Name AND DistRef = @DistRef ORDER BY PP_Profile_Name ASC, DistRef ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP000013SS_2] TO [DYNGRP]
GO
