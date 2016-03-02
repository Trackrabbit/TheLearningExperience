SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM00303F_1] (@SALSTERR_RS char(15), @SALSTERR_RE char(15)) AS  set nocount on IF @SALSTERR_RS IS NULL BEGIN SELECT TOP 25  SALSTERR, SLTERDSC, INACTIVE, SLPRSNID, STMGRFNM, STMGRMNM, STMGRLNM, COUNTRY, COSTTODT, TTLCOMTD, TTLCOMLY, NCOMSLYR, COMSLLYR, CSTLSTYR, COMSLTDT, NCOMSLTD, KPCALHST, KPERHIST, NOTEINDX, MODIFDT, CREATDDT, DEX_ROW_TS, DEX_ROW_ID FROM .RM00303 ORDER BY SALSTERR ASC END ELSE IF @SALSTERR_RS = @SALSTERR_RE BEGIN SELECT TOP 25  SALSTERR, SLTERDSC, INACTIVE, SLPRSNID, STMGRFNM, STMGRMNM, STMGRLNM, COUNTRY, COSTTODT, TTLCOMTD, TTLCOMLY, NCOMSLYR, COMSLLYR, CSTLSTYR, COMSLTDT, NCOMSLTD, KPCALHST, KPERHIST, NOTEINDX, MODIFDT, CREATDDT, DEX_ROW_TS, DEX_ROW_ID FROM .RM00303 WHERE SALSTERR = @SALSTERR_RS ORDER BY SALSTERR ASC END ELSE BEGIN SELECT TOP 25  SALSTERR, SLTERDSC, INACTIVE, SLPRSNID, STMGRFNM, STMGRMNM, STMGRLNM, COUNTRY, COSTTODT, TTLCOMTD, TTLCOMLY, NCOMSLYR, COMSLLYR, CSTLSTYR, COMSLTDT, NCOMSLTD, KPCALHST, KPERHIST, NOTEINDX, MODIFDT, CREATDDT, DEX_ROW_TS, DEX_ROW_ID FROM .RM00303 WHERE SALSTERR BETWEEN @SALSTERR_RS AND @SALSTERR_RE ORDER BY SALSTERR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM00303F_1] TO [DYNGRP]
GO