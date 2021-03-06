SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_STN41300SS_3] (@Machine_ID char(15), @PRNMODE smallint, @USERID char(15), @CMPANYID smallint, @PRNSER smallint, @PRNTASK char(15)) AS  set nocount on SELECT TOP 1  Machine_ID, PRNSER, PRNTASK, LOCNCODE, PRNMODE, USERID, CMPANYID, PRNCODE, CREATDDT, MODIFDT, LSTUSRED, DEX_ROW_ID FROM .STN41300 WHERE Machine_ID = @Machine_ID AND PRNMODE = @PRNMODE AND USERID = @USERID AND CMPANYID = @CMPANYID AND PRNSER = @PRNSER AND PRNTASK = @PRNTASK ORDER BY Machine_ID ASC, PRNMODE ASC, USERID ASC, CMPANYID ASC, PRNSER ASC, PRNTASK ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_STN41300SS_3] TO [DYNGRP]
GO
