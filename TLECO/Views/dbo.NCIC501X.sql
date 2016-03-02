SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[NCIC501X] AS SELECT     * FROM         (SELECT     USERID, JRNENTRY, 1 RCRDTYPE, ACTINDX, TRXAMNT, '' NC_Dest_IC_Company_DB, JRNENTRY NC_Dest_IC_Journal_Entry,                                                0 NC_Dest_IC_Posted, '' NC_Dest_IC_Account_Numbe, DEX_ROW_ID                        FROM          dbo.NCIC5011                        UNION                        SELECT     USERID, JRNENTRY, 2 RCRDTYPE, NC_Source_IC_Account_Ind ACTINDX, TRXAMNT, '' NC_Dest_IC_Company_DB,                                               NC_Source_IC_Journal_Ent NC_Dest_IC_Journal_Entry, NC_Source_IC_Posted NC_Dest_IC_Posted, '' NC_Dest_IC_Account_Numbe,                                               DEX_ROW_ID                        FROM         dbo.NCIC5012                        UNION                        SELECT     USERID, JRNENTRY, 3 RCRDTYPE, 0 ACTINDX, TRXAMNT, NC_Dest_IC_Company_DB NC_Dest_IC_Company_DB,                                               NC_Dest_IC_Journal_Entry NC_Dest_IC_Journal_Entry, NC_Dest_IC_Posted NC_Dest_IC_Posted,                                               NC_Dest_IC_Account_Numbe NC_Dest_IC_Account_Numbe, DEX_ROW_ID                        FROM         dbo.NCIC5013) GLTrx  
GO
GRANT REFERENCES ON  [dbo].[NCIC501X] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCIC501X] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NCIC501X] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NCIC501X] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NCIC501X] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCIC501X] TO [public]
GO
GRANT INSERT ON  [dbo].[NCIC501X] TO [public]
GO
GRANT DELETE ON  [dbo].[NCIC501X] TO [public]
GO
GRANT UPDATE ON  [dbo].[NCIC501X] TO [public]
GO
