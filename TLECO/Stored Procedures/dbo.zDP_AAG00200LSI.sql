SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00200LSI] (@ACTINDX int, @ACTNUMBR_1 char(9), @ACTNUMBR_2 char(9), @ACTNUMBR_3 char(9), @ACTNUMBR_4 char(9), @ACTNUMBR_5 char(9), @ACTDESCR char(51), @aaAccountClass char(15), @aaAcctClassID int, @ACCTTYPE smallint, @PSTNGTYP smallint, @Status smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00200L (ACTINDX, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTNUMBR_5, ACTDESCR, aaAccountClass, aaAcctClassID, ACCTTYPE, PSTNGTYP, Status) VALUES ( @ACTINDX, @ACTNUMBR_1, @ACTNUMBR_2, @ACTNUMBR_3, @ACTNUMBR_4, @ACTNUMBR_5, @ACTDESCR, @aaAccountClass, @aaAcctClassID, @ACCTTYPE, @PSTNGTYP, @Status) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00200LSI] TO [DYNGRP]
GO
