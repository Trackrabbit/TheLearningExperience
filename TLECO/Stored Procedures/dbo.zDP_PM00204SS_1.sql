SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM00204SS_1] (@VENDORID char(15), @TEN99TYPE smallint, @YEAR1 smallint, @PERIODID smallint, @TEN99BOXNUMBER smallint) AS  set nocount on SELECT TOP 1  VENDORID, TEN99TYPE, YEAR1, PERIODID, TEN99BOXNUMBER, TEN99AMNT, TEN99FRNORUSDTL, TEN99STATECD, TEN99STATIDNUM, TEN99TAXEXMTCUSIPNUM, TEN99DIRSALECB, TEN99STATNMBR, DEX_ROW_ID FROM .PM00204 WHERE VENDORID = @VENDORID AND TEN99TYPE = @TEN99TYPE AND YEAR1 = @YEAR1 AND PERIODID = @PERIODID AND TEN99BOXNUMBER = @TEN99BOXNUMBER ORDER BY VENDORID ASC, TEN99TYPE ASC, YEAR1 ASC, PERIODID ASC, TEN99BOXNUMBER ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM00204SS_1] TO [DYNGRP]
GO