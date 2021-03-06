SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM00302SS_2] (@SLPRSNID char(15), @HISTTYPE smallint, @YEAR1 smallint, @PERIODID smallint) AS  set nocount on SELECT TOP 1  SLPRSNID, HISTTYPE, PERIODID, YEAR1, COSTAMNT, TTLCOMAM, COMSLTDT, NCOMAMNT, DEX_ROW_ID FROM .RM00302 WHERE SLPRSNID = @SLPRSNID AND HISTTYPE = @HISTTYPE AND YEAR1 = @YEAR1 AND PERIODID = @PERIODID ORDER BY SLPRSNID ASC, HISTTYPE ASC, YEAR1 ASC, PERIODID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM00302SS_2] TO [DYNGRP]
GO
