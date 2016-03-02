SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC5013SI] (@USERID char(15), @JRNENTRY int, @NC_Dest_IC_Company_DB char(31), @NC_Dest_IC_Journal_Entry int, @NC_Dest_IC_Sequence int, @NC_Dest_IC_Posted tinyint, @NC_Dest_IC_Account_Numbe char(67), @NC_Dest_IC_Account_Index int, @CURRNIDX smallint, @TRXAMNT numeric(19,5), @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .NCIC5013 (USERID, JRNENTRY, NC_Dest_IC_Company_DB, NC_Dest_IC_Journal_Entry, NC_Dest_IC_Sequence, NC_Dest_IC_Posted, NC_Dest_IC_Account_Numbe, NC_Dest_IC_Account_Index, CURRNIDX, TRXAMNT) VALUES ( @USERID, @JRNENTRY, @NC_Dest_IC_Company_DB, @NC_Dest_IC_Journal_Entry, @NC_Dest_IC_Sequence, @NC_Dest_IC_Posted, @NC_Dest_IC_Account_Numbe, @NC_Dest_IC_Account_Index, @CURRNIDX, @TRXAMNT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5013SI] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5013SI] TO [public]
GO
