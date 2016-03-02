SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM81000SI] (@USERID char(15), @TIME1 datetime, @CMPNYNAM char(65), @Change_Status smallint, @SEQNUMBR int, @ACTINDX int, @Default_On_Trx tinyint, @Stored_Account_Index int, @Stored_Default_On_Trx tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PM81000 (USERID, TIME1, CMPNYNAM, Change_Status, SEQNUMBR, ACTINDX, Default_On_Trx, Stored_Account_Index, Stored_Default_On_Trx) VALUES ( @USERID, @TIME1, @CMPNYNAM, @Change_Status, @SEQNUMBR, @ACTINDX, @Default_On_Trx, @Stored_Account_Index, @Stored_Default_On_Trx) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM81000SI] TO [DYNGRP]
GO
