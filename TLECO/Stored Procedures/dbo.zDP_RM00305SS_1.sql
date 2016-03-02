SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM00305SS_1] (@HISTTYPE smallint, @SALSTERR char(15), @YEAR1 smallint, @PERIODID smallint) AS  set nocount on SELECT TOP 1  SALSTERR, HISTTYPE, PERIODID, YEAR1, SMRYDATE, COSTAMNT, TTLCOMAM, COMSLTDT, NCOMAMNT, DEX_ROW_ID FROM .RM00305 WHERE HISTTYPE = @HISTTYPE AND SALSTERR = @SALSTERR AND YEAR1 = @YEAR1 AND PERIODID = @PERIODID ORDER BY HISTTYPE ASC, SALSTERR ASC, YEAR1 ASC, PERIODID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM00305SS_1] TO [DYNGRP]
GO
