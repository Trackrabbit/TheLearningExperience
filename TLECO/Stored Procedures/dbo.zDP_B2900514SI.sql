SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900514SI] (@USERID char(15), @BSSI_ImportID char(15), @LNITMSEQ int, @DEDUCTON char(7), @BSSI_DeductionPercentage smallint, @ERRDESCR char(131), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B2900514 (USERID, BSSI_ImportID, LNITMSEQ, DEDUCTON, BSSI_DeductionPercentage, ERRDESCR) VALUES ( @USERID, @BSSI_ImportID, @LNITMSEQ, @DEDUCTON, @BSSI_DeductionPercentage, @ERRDESCR) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900514SI] TO [DYNGRP]
GO