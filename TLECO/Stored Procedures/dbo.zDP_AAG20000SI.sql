SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG20000SI] (@aaSubLedgerHdrID int, @SERIES smallint, @DOCTYPE smallint, @DOCNUMBR char(21), @Master_ID char(31), @PYRNTYPE smallint, @aaHdrErrors binary(4), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG20000 (aaSubLedgerHdrID, SERIES, DOCTYPE, DOCNUMBR, Master_ID, PYRNTYPE, aaHdrErrors) VALUES ( @aaSubLedgerHdrID, @SERIES, @DOCTYPE, @DOCNUMBR, @Master_ID, @PYRNTYPE, @aaHdrErrors) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG20000SI] TO [DYNGRP]
GO
