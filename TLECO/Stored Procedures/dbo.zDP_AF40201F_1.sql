SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_AF40201F_1] (@REPORTID_RS smallint, @RptOptID_RS numeric(19,5), @ROWNMBR_RS smallint, @SEQNUMBR_RS int, @REPORTID_RE smallint, @RptOptID_RE numeric(19,5), @ROWNMBR_RE smallint, @SEQNUMBR_RE int) AS /* 14.00.0084.000 */ set nocount on IF @REPORTID_RS IS NULL BEGIN SELECT TOP 25  REPORTID, RptOptID, ROWNMBR, SEQNUMBR, ACTARR1_1_1, ACTARR1_1_2, ACTARR1_1_3, ACTARR1_1_4, ACTARR1_2_1, ACTARR1_2_2, ACTARR1_2_3, ACTARR1_2_4, ACTARR1_3_1, ACTARR1_3_2, ACTARR1_3_3, ACTARR1_3_4, ACTARR1_4_1, ACTARR1_4_2, ACTARR1_4_3, ACTARR1_4_4, ACTARR2_1_1, ACTARR2_1_2, ACTARR2_1_3, ACTARR2_1_4, ACTARR2_2_1, ACTARR2_2_2, ACTARR2_2_3, ACTARR2_2_4, ACTARR2_3_1, ACTARR2_3_2, ACTARR2_3_3, ACTARR2_3_4, ACTARR2_4_1, ACTARR2_4_2, ACTARR2_4_3, ACTARR2_4_4, DEX_ROW_ID FROM .AF40201 ORDER BY REPORTID ASC, RptOptID ASC, ROWNMBR ASC, SEQNUMBR ASC END ELSE IF @REPORTID_RS = @REPORTID_RE BEGIN SELECT TOP 25  REPORTID, RptOptID, ROWNMBR, SEQNUMBR, ACTARR1_1_1, ACTARR1_1_2, ACTARR1_1_3, ACTARR1_1_4, ACTARR1_2_1, ACTARR1_2_2, ACTARR1_2_3, ACTARR1_2_4, ACTARR1_3_1, ACTARR1_3_2, ACTARR1_3_3, ACTARR1_3_4, ACTARR1_4_1, ACTARR1_4_2, ACTARR1_4_3, ACTARR1_4_4, ACTARR2_1_1, ACTARR2_1_2, ACTARR2_1_3, ACTARR2_1_4, ACTARR2_2_1, ACTARR2_2_2, ACTARR2_2_3, ACTARR2_2_4, ACTARR2_3_1, ACTARR2_3_2, ACTARR2_3_3, ACTARR2_3_4, ACTARR2_4_1, ACTARR2_4_2, ACTARR2_4_3, ACTARR2_4_4, DEX_ROW_ID FROM .AF40201 WHERE REPORTID = @REPORTID_RS AND RptOptID BETWEEN @RptOptID_RS AND @RptOptID_RE AND ROWNMBR BETWEEN @ROWNMBR_RS AND @ROWNMBR_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY REPORTID ASC, RptOptID ASC, ROWNMBR ASC, SEQNUMBR ASC END ELSE BEGIN SELECT TOP 25  REPORTID, RptOptID, ROWNMBR, SEQNUMBR, ACTARR1_1_1, ACTARR1_1_2, ACTARR1_1_3, ACTARR1_1_4, ACTARR1_2_1, ACTARR1_2_2, ACTARR1_2_3, ACTARR1_2_4, ACTARR1_3_1, ACTARR1_3_2, ACTARR1_3_3, ACTARR1_3_4, ACTARR1_4_1, ACTARR1_4_2, ACTARR1_4_3, ACTARR1_4_4, ACTARR2_1_1, ACTARR2_1_2, ACTARR2_1_3, ACTARR2_1_4, ACTARR2_2_1, ACTARR2_2_2, ACTARR2_2_3, ACTARR2_2_4, ACTARR2_3_1, ACTARR2_3_2, ACTARR2_3_3, ACTARR2_3_4, ACTARR2_4_1, ACTARR2_4_2, ACTARR2_4_3, ACTARR2_4_4, DEX_ROW_ID FROM .AF40201 WHERE REPORTID BETWEEN @REPORTID_RS AND @REPORTID_RE AND RptOptID BETWEEN @RptOptID_RS AND @RptOptID_RE AND ROWNMBR BETWEEN @ROWNMBR_RS AND @ROWNMBR_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY REPORTID ASC, RptOptID ASC, ROWNMBR ASC, SEQNUMBR ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_AF40201F_1] TO [DYNGRP]
GO