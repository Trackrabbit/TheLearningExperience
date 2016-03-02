SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10106L_3] (@RPTNGYR_RS smallint, @LOCLCODE_RS char(7), @RPTNGYR_RE smallint, @LOCLCODE_RE char(7)) AS  set nocount on IF @RPTNGYR_RS IS NULL BEGIN SELECT TOP 25  RPTNGYR, EMPLOYID, SEQNUMBR, LOCLCODE, LOCLWGES, LCLINTAX, W2PRINTD, TAXTYPE, DEX_ROW_ID FROM .UPR10106 ORDER BY RPTNGYR DESC, LOCLCODE DESC, DEX_ROW_ID DESC END ELSE IF @RPTNGYR_RS = @RPTNGYR_RE BEGIN SELECT TOP 25  RPTNGYR, EMPLOYID, SEQNUMBR, LOCLCODE, LOCLWGES, LCLINTAX, W2PRINTD, TAXTYPE, DEX_ROW_ID FROM .UPR10106 WHERE RPTNGYR = @RPTNGYR_RS AND LOCLCODE BETWEEN @LOCLCODE_RS AND @LOCLCODE_RE ORDER BY RPTNGYR DESC, LOCLCODE DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  RPTNGYR, EMPLOYID, SEQNUMBR, LOCLCODE, LOCLWGES, LCLINTAX, W2PRINTD, TAXTYPE, DEX_ROW_ID FROM .UPR10106 WHERE RPTNGYR BETWEEN @RPTNGYR_RS AND @RPTNGYR_RE AND LOCLCODE BETWEEN @LOCLCODE_RS AND @LOCLCODE_RE ORDER BY RPTNGYR DESC, LOCLCODE DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10106L_3] TO [DYNGRP]
GO
