SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_TACHANGESI] (@TATYPE smallint, @PSTNGTYP smallint, @TA_Posting_Type smallint, @ACCTTYPE smallint, @TA_Account_Type smallint, @TAFROMINDX int, @TATOINDX int, @ACTNUMBR_1 char(5), @ACTNUMBR_2 char(5), @ACTNUMBR_3 char(3), @ACTNUMBR_4 char(3), @Omnesa_1 char(5), @Omnesa_2 char(5), @Omnesa_3 char(3), @Omnesa_4 char(3), @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .TACHANGE (TATYPE, PSTNGTYP, TA_Posting_Type, ACCTTYPE, TA_Account_Type, TAFROMINDX, TATOINDX, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, Omnesa_1, Omnesa_2, Omnesa_3, Omnesa_4) VALUES ( @TATYPE, @PSTNGTYP, @TA_Posting_Type, @ACCTTYPE, @TA_Account_Type, @TAFROMINDX, @TATOINDX, @ACTNUMBR_1, @ACTNUMBR_2, @ACTNUMBR_3, @ACTNUMBR_4, @Omnesa_1, @Omnesa_2, @Omnesa_3, @Omnesa_4) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_TACHANGESI] TO [DYNGRP]
GO
