SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM81000SS_2] (@USERID char(15), @CMPNYNAM char(65), @TIME1 datetime, @Change_Status smallint, @Stored_Account_Index int) AS  set nocount on SELECT TOP 1  USERID, TIME1, CMPNYNAM, Change_Status, SEQNUMBR, ACTINDX, Default_On_Trx, Stored_Account_Index, Stored_Default_On_Trx, DEX_ROW_ID FROM .PM81000 WHERE USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND TIME1 = @TIME1 AND Change_Status = @Change_Status AND Stored_Account_Index = @Stored_Account_Index ORDER BY USERID ASC, CMPNYNAM ASC, TIME1 ASC, Change_Status ASC, Stored_Account_Index ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM81000SS_2] TO [DYNGRP]
GO
