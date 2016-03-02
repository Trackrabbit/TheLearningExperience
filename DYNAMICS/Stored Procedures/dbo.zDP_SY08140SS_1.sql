SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY08140SS_1] (@USERID char(15), @SEQNUMBR int) AS  set nocount on SELECT TOP 1  USERID, SEQNUMBR, TYPEID, CmdID, CmdFormID, CmdDictID, DSPLNAME, ScbTargetStringOne, ScbTargetStringTwo, ScbTargetStringThree, ScbTargetLongOne, ScbTargetLongTwo, ScbTargetLongThree, ScbTargetLongFour, ScbTargetLongFive, DEX_ROW_ID FROM .SY08140 WHERE USERID = @USERID AND SEQNUMBR = @SEQNUMBR ORDER BY USERID ASC, SEQNUMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY08140SS_1] TO [DYNGRP]
GO
