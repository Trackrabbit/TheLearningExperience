SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30600SI] (@IVDOCTYP smallint, @DOCNUMBR char(21), @LNSEQNBR numeric(19,5), @SLTSQNUM int, @LOTATRB1 char(11), @LOTATRB2 char(11), @LOTATRB3 char(11), @LOTATRB4 datetime, @LOTATRB5 datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .IV30600 (IVDOCTYP, DOCNUMBR, LNSEQNBR, SLTSQNUM, LOTATRB1, LOTATRB2, LOTATRB3, LOTATRB4, LOTATRB5) VALUES ( @IVDOCTYP, @DOCNUMBR, @LNSEQNBR, @SLTSQNUM, @LOTATRB1, @LOTATRB2, @LOTATRB3, @LOTATRB4, @LOTATRB5) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30600SI] TO [DYNGRP]
GO
