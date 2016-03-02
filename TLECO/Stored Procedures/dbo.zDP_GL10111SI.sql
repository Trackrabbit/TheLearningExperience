SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_GL10111SI] (@ACTINDX int, @YEAR1 smallint, @PERIODID smallint, @Ledger_ID smallint, @ACTNUMBR_1 char(5), @ACTNUMBR_2 char(5), @ACTNUMBR_3 char(3), @ACTNUMBR_4 char(3), @ACCATNUM smallint, @PERDBLNC numeric(19,5), @DEBITAMT numeric(19,5), @CRDTAMNT numeric(19,5), @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .GL10111 (ACTINDX, YEAR1, PERIODID, Ledger_ID, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACCATNUM, PERDBLNC, DEBITAMT, CRDTAMNT) VALUES ( @ACTINDX, @YEAR1, @PERIODID, @Ledger_ID, @ACTNUMBR_1, @ACTNUMBR_2, @ACTNUMBR_3, @ACTNUMBR_4, @ACCATNUM, @PERDBLNC, @DEBITAMT, @CRDTAMNT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_GL10111SI] TO [DYNGRP]
GO
