SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM81000UN_2] (@BS int, @USERID char(15), @CMPNYNAM char(65), @TIME1 datetime, @Change_Status smallint, @Stored_Account_Index int, @USERID_RS char(15), @CMPNYNAM_RS char(65), @TIME1_RS datetime, @Change_Status_RS smallint, @Stored_Account_Index_RS int, @USERID_RE char(15), @CMPNYNAM_RE char(65), @TIME1_RE datetime, @Change_Status_RE smallint, @Stored_Account_Index_RE int) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, TIME1, CMPNYNAM, Change_Status, SEQNUMBR, ACTINDX, Default_On_Trx, Stored_Account_Index, Stored_Default_On_Trx, DEX_ROW_ID FROM .PM81000 WHERE ( USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND TIME1 = @TIME1 AND Change_Status = @Change_Status AND Stored_Account_Index > @Stored_Account_Index OR USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND TIME1 = @TIME1 AND Change_Status > @Change_Status OR USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND TIME1 > @TIME1 OR USERID = @USERID AND CMPNYNAM > @CMPNYNAM OR USERID > @USERID ) ORDER BY USERID ASC, CMPNYNAM ASC, TIME1 ASC, Change_Status ASC, Stored_Account_Index ASC, DEX_ROW_ID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, TIME1, CMPNYNAM, Change_Status, SEQNUMBR, ACTINDX, Default_On_Trx, Stored_Account_Index, Stored_Default_On_Trx, DEX_ROW_ID FROM .PM81000 WHERE USERID = @USERID_RS AND CMPNYNAM BETWEEN @CMPNYNAM_RS AND @CMPNYNAM_RE AND TIME1 BETWEEN @TIME1_RS AND @TIME1_RE AND Change_Status BETWEEN @Change_Status_RS AND @Change_Status_RE AND Stored_Account_Index BETWEEN @Stored_Account_Index_RS AND @Stored_Account_Index_RE AND ( USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND TIME1 = @TIME1 AND Change_Status = @Change_Status AND Stored_Account_Index > @Stored_Account_Index OR USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND TIME1 = @TIME1 AND Change_Status > @Change_Status OR USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND TIME1 > @TIME1 OR USERID = @USERID AND CMPNYNAM > @CMPNYNAM OR USERID > @USERID ) ORDER BY USERID ASC, CMPNYNAM ASC, TIME1 ASC, Change_Status ASC, Stored_Account_Index ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  USERID, TIME1, CMPNYNAM, Change_Status, SEQNUMBR, ACTINDX, Default_On_Trx, Stored_Account_Index, Stored_Default_On_Trx, DEX_ROW_ID FROM .PM81000 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND CMPNYNAM BETWEEN @CMPNYNAM_RS AND @CMPNYNAM_RE AND TIME1 BETWEEN @TIME1_RS AND @TIME1_RE AND Change_Status BETWEEN @Change_Status_RS AND @Change_Status_RE AND Stored_Account_Index BETWEEN @Stored_Account_Index_RS AND @Stored_Account_Index_RE AND ( USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND TIME1 = @TIME1 AND Change_Status = @Change_Status AND Stored_Account_Index > @Stored_Account_Index OR USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND TIME1 = @TIME1 AND Change_Status > @Change_Status OR USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND TIME1 > @TIME1 OR USERID = @USERID AND CMPNYNAM > @CMPNYNAM OR USERID > @USERID ) ORDER BY USERID ASC, CMPNYNAM ASC, TIME1 ASC, Change_Status ASC, Stored_Account_Index ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM81000UN_2] TO [DYNGRP]
GO