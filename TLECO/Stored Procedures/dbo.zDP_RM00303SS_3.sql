SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM00303SS_3] (@SLTERDSC char(31), @SALSTERR char(15)) AS  set nocount on SELECT TOP 1  SALSTERR, SLTERDSC, INACTIVE, SLPRSNID, STMGRFNM, STMGRMNM, STMGRLNM, COUNTRY, COSTTODT, TTLCOMTD, TTLCOMLY, NCOMSLYR, COMSLLYR, CSTLSTYR, COMSLTDT, NCOMSLTD, KPCALHST, KPERHIST, NOTEINDX, MODIFDT, CREATDDT, DEX_ROW_TS, DEX_ROW_ID FROM .RM00303 WHERE SLTERDSC = @SLTERDSC AND SALSTERR = @SALSTERR ORDER BY SLTERDSC ASC, SALSTERR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM00303SS_3] TO [DYNGRP]
GO
