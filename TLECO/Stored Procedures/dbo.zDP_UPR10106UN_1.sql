SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10106UN_1] (@BS int, @RPTNGYR smallint, @EMPLOYID char(15), @RPTNGYR_RS smallint, @EMPLOYID_RS char(15), @RPTNGYR_RE smallint, @EMPLOYID_RE char(15)) AS  set nocount on IF @RPTNGYR_RS IS NULL BEGIN SELECT TOP 25  RPTNGYR, EMPLOYID, SEQNUMBR, LOCLCODE, LOCLWGES, LCLINTAX, W2PRINTD, TAXTYPE, DEX_ROW_ID FROM .UPR10106 WHERE ( RPTNGYR = @RPTNGYR AND EMPLOYID > @EMPLOYID OR RPTNGYR > @RPTNGYR ) ORDER BY RPTNGYR ASC, EMPLOYID ASC, DEX_ROW_ID ASC END ELSE IF @RPTNGYR_RS = @RPTNGYR_RE BEGIN SELECT TOP 25  RPTNGYR, EMPLOYID, SEQNUMBR, LOCLCODE, LOCLWGES, LCLINTAX, W2PRINTD, TAXTYPE, DEX_ROW_ID FROM .UPR10106 WHERE RPTNGYR = @RPTNGYR_RS AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND ( RPTNGYR = @RPTNGYR AND EMPLOYID > @EMPLOYID OR RPTNGYR > @RPTNGYR ) ORDER BY RPTNGYR ASC, EMPLOYID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  RPTNGYR, EMPLOYID, SEQNUMBR, LOCLCODE, LOCLWGES, LCLINTAX, W2PRINTD, TAXTYPE, DEX_ROW_ID FROM .UPR10106 WHERE RPTNGYR BETWEEN @RPTNGYR_RS AND @RPTNGYR_RE AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND ( RPTNGYR = @RPTNGYR AND EMPLOYID > @EMPLOYID OR RPTNGYR > @RPTNGYR ) ORDER BY RPTNGYR ASC, EMPLOYID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10106UN_1] TO [DYNGRP]
GO
