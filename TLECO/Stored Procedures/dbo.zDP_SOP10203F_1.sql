SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP10203F_1] (@SOPNUMBE_RS char(21), @SOPTYPE_RS smallint, @LNITMSEQ_RS int, @CMPNTSEQ_RS int, @SEQNUMBR_RS int, @SOPNUMBE_RE char(21), @SOPTYPE_RE smallint, @LNITMSEQ_RE int, @CMPNTSEQ_RE int, @SEQNUMBR_RE int) AS  set nocount on IF @SOPNUMBE_RS IS NULL BEGIN SELECT TOP 25  SOPNUMBE, SOPTYPE, LNITMSEQ, CMPNTSEQ, SEQNUMBR, ITEMNMBR, LOCNCODE, BIN, QTYTYPE, QUANTITY, POSTED, DEX_ROW_ID FROM .SOP10203 ORDER BY SOPNUMBE ASC, SOPTYPE ASC, LNITMSEQ ASC, CMPNTSEQ ASC, SEQNUMBR ASC END ELSE IF @SOPNUMBE_RS = @SOPNUMBE_RE BEGIN SELECT TOP 25  SOPNUMBE, SOPTYPE, LNITMSEQ, CMPNTSEQ, SEQNUMBR, ITEMNMBR, LOCNCODE, BIN, QTYTYPE, QUANTITY, POSTED, DEX_ROW_ID FROM .SOP10203 WHERE SOPNUMBE = @SOPNUMBE_RS AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND CMPNTSEQ BETWEEN @CMPNTSEQ_RS AND @CMPNTSEQ_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY SOPNUMBE ASC, SOPTYPE ASC, LNITMSEQ ASC, CMPNTSEQ ASC, SEQNUMBR ASC END ELSE BEGIN SELECT TOP 25  SOPNUMBE, SOPTYPE, LNITMSEQ, CMPNTSEQ, SEQNUMBR, ITEMNMBR, LOCNCODE, BIN, QTYTYPE, QUANTITY, POSTED, DEX_ROW_ID FROM .SOP10203 WHERE SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND CMPNTSEQ BETWEEN @CMPNTSEQ_RS AND @CMPNTSEQ_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY SOPNUMBE ASC, SOPTYPE ASC, LNITMSEQ ASC, CMPNTSEQ ASC, SEQNUMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP10203F_1] TO [DYNGRP]
GO
