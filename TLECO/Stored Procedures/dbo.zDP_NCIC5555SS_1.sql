SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC5555SS_1] (@RPRTNAME char(31), @Option_Name char(31)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  RPRTNAME, Option_Name, PRNTOFIL, PRTOPRTR, PRTOSCRN, ASKECHTM, EXPTTYPE, FILEXPNM, IFFILXST, NC_Start_Template, NC_End_Template, DEX_ROW_ID FROM .NCIC5555 WHERE RPRTNAME = @RPRTNAME AND Option_Name = @Option_Name ORDER BY RPRTNAME ASC, Option_Name ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5555SS_1] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5555SS_1] TO [public]
GO
