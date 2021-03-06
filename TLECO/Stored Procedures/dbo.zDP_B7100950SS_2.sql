SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100950SS_2] (@USERID char(15), @INTERID char(5)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BACHNUMB, JRNENTRY, SQNCLINE, INTERID, ACTINDX, USERID, TRXDATE, ORCRDAMT, DEX_ROW_ID FROM .B7100950 WHERE USERID = @USERID AND INTERID = @INTERID ORDER BY USERID ASC, INTERID ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100950SS_2] TO [DYNGRP]
GO
