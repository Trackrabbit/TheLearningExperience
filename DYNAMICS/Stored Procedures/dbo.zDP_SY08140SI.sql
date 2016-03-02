SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY08140SI] (@USERID char(15), @SEQNUMBR int, @TYPEID smallint, @CmdID smallint, @CmdFormID smallint, @CmdDictID smallint, @DSPLNAME char(81), @ScbTargetStringOne char(255), @ScbTargetStringTwo char(255), @ScbTargetStringThree char(255), @ScbTargetLongOne int, @ScbTargetLongTwo int, @ScbTargetLongThree int, @ScbTargetLongFour int, @ScbTargetLongFive int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY08140 (USERID, SEQNUMBR, TYPEID, CmdID, CmdFormID, CmdDictID, DSPLNAME, ScbTargetStringOne, ScbTargetStringTwo, ScbTargetStringThree, ScbTargetLongOne, ScbTargetLongTwo, ScbTargetLongThree, ScbTargetLongFour, ScbTargetLongFive) VALUES ( @USERID, @SEQNUMBR, @TYPEID, @CmdID, @CmdFormID, @CmdDictID, @DSPLNAME, @ScbTargetStringOne, @ScbTargetStringTwo, @ScbTargetStringThree, @ScbTargetLongOne, @ScbTargetLongTwo, @ScbTargetLongThree, @ScbTargetLongFour, @ScbTargetLongFive) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY08140SI] TO [DYNGRP]
GO
