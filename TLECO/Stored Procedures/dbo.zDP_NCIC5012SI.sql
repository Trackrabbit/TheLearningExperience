SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC5012SI] (@USERID char(15), @JRNENTRY int, @NC_Source_IC_Journal_Ent int, @NC_Source_IC_Sequence int, @NC_Source_IC_Posted tinyint, @NC_Source_IC_Account_Ind int, @TRXAMNT numeric(19,5), @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .NCIC5012 (USERID, JRNENTRY, NC_Source_IC_Journal_Ent, NC_Source_IC_Sequence, NC_Source_IC_Posted, NC_Source_IC_Account_Ind, TRXAMNT) VALUES ( @USERID, @JRNENTRY, @NC_Source_IC_Journal_Ent, @NC_Source_IC_Sequence, @NC_Source_IC_Posted, @NC_Source_IC_Account_Ind, @TRXAMNT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5012SI] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5012SI] TO [public]
GO
