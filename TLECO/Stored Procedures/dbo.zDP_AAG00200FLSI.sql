SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00200FLSI] (@ACTINDX int, @ACTNUMBR_1 char(9), @ACTNUMBR_2 char(9), @ACTNUMBR_3 char(9), @ACTNUMBR_4 char(9), @ACTNUMBR_5 char(9), @strAccountNumber char(75), @ACTDESCR char(51), @ACCTTYPE smallint, @ACTIVE tinyint, @DSCRIPTN char(31), @aaAcctClassID int, @aaAccountClass char(15), @aaAcctClassDescr char(51), @aaNode char(51), @aaDescr char(51), @aaTreeMain tinyint, @PSTNGTYP smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00200FL (ACTINDX, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTNUMBR_5, strAccountNumber, ACTDESCR, ACCTTYPE, ACTIVE, DSCRIPTN, aaAcctClassID, aaAccountClass, aaAcctClassDescr, aaNode, aaDescr, aaTreeMain, PSTNGTYP) VALUES ( @ACTINDX, @ACTNUMBR_1, @ACTNUMBR_2, @ACTNUMBR_3, @ACTNUMBR_4, @ACTNUMBR_5, @strAccountNumber, @ACTDESCR, @ACCTTYPE, @ACTIVE, @DSCRIPTN, @aaAcctClassID, @aaAccountClass, @aaAcctClassDescr, @aaNode, @aaDescr, @aaTreeMain, @PSTNGTYP) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00200FLSI] TO [DYNGRP]
GO
