SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602944SI] (@BSSI_Ground_Lease_Number char(25), @LNITMSEQ int, @LNSEQNBR numeric(19,5), @DOCTYPE smallint, @VCHNUMWK char(17), @VENDORID char(15), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4602944 (BSSI_Ground_Lease_Number, LNITMSEQ, LNSEQNBR, DOCTYPE, VCHNUMWK, VENDORID) VALUES ( @BSSI_Ground_Lease_Number, @LNITMSEQ, @LNSEQNBR, @DOCTYPE, @VCHNUMWK, @VENDORID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602944SI] TO [DYNGRP]
GO
