SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00200VSS_1] (@ACTINDX int) AS  set nocount on SELECT TOP 1  ACTINDX, ACTNUMST, ACTDESCR, ACCTTYPE, DEX_ROW_ID FROM .AAG00200V WHERE ACTINDX = @ACTINDX ORDER BY ACTINDX ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00200VSS_1] TO [DYNGRP]
GO
