SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510511SI] (@BSSI_Capital_Call_ID char(25), @VENDORID char(15), @SEQNUMBR int, @LNITMSEQ int, @BSSI_Fee_ID char(15), @BSSI_Fee_Amount numeric(19,5), @CURNCYID char(15), @CURRNIDX smallint, @DUMYRCRD tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B0510511 (BSSI_Capital_Call_ID, VENDORID, SEQNUMBR, LNITMSEQ, BSSI_Fee_ID, BSSI_Fee_Amount, CURNCYID, CURRNIDX, DUMYRCRD) VALUES ( @BSSI_Capital_Call_ID, @VENDORID, @SEQNUMBR, @LNITMSEQ, @BSSI_Fee_ID, @BSSI_Fee_Amount, @CURNCYID, @CURRNIDX, @DUMYRCRD) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510511SI] TO [DYNGRP]
GO
