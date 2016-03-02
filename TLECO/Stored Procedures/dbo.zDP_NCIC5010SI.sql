SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC5010SI] (@USERID char(15), @JRNENTRY int, @PSTGDATE datetime, @SOURCDOC char(11), @REFRENCE char(31), @DCSTATUS smallint, @NC_Original_IC_Missing tinyint, @NC_Source_IC_Missing tinyint, @NC_Source_IC_Posted tinyint, @NC_Dest_IC_Missing tinyint, @NC_Dest_IC_Posted tinyint, @NC_Marked_Gen_Source_IC tinyint, @NC_Marked_Gen_Dest_IC tinyint, @ACTINDX int, @NC_Source_IC_Journal_Ent int, @NC_Dest_IC_Journal_Entry int, @NC_Dest_IC_Company_DB char(31), @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .NCIC5010 (USERID, JRNENTRY, PSTGDATE, SOURCDOC, REFRENCE, DCSTATUS, NC_Original_IC_Missing, NC_Source_IC_Missing, NC_Source_IC_Posted, NC_Dest_IC_Missing, NC_Dest_IC_Posted, NC_Marked_Gen_Source_IC, NC_Marked_Gen_Dest_IC, ACTINDX, NC_Source_IC_Journal_Ent, NC_Dest_IC_Journal_Entry, NC_Dest_IC_Company_DB) VALUES ( @USERID, @JRNENTRY, @PSTGDATE, @SOURCDOC, @REFRENCE, @DCSTATUS, @NC_Original_IC_Missing, @NC_Source_IC_Missing, @NC_Source_IC_Posted, @NC_Dest_IC_Missing, @NC_Dest_IC_Posted, @NC_Marked_Gen_Source_IC, @NC_Marked_Gen_Dest_IC, @ACTINDX, @NC_Source_IC_Journal_Ent, @NC_Dest_IC_Journal_Entry, @NC_Dest_IC_Company_DB) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5010SI] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5010SI] TO [public]
GO
