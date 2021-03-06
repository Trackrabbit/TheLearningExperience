SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IVC50100L_1] (@USERID_RS char(15), @SEQNUMBR_RS int, @Restrict_Type_RS smallint, @DOCTYPE_RS smallint, @INVCNMBR_RS char(21), @USERID_RE char(15), @SEQNUMBR_RE int, @Restrict_Type_RE smallint, @DOCTYPE_RE smallint, @INVCNMBR_RE char(21)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  Restrict_Type, DOCTYPE, INVCNMBR, USERID, SEQNUMBR, DEX_ROW_ID FROM .IVC50100 ORDER BY USERID DESC, SEQNUMBR DESC, Restrict_Type DESC, DOCTYPE DESC, INVCNMBR DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  Restrict_Type, DOCTYPE, INVCNMBR, USERID, SEQNUMBR, DEX_ROW_ID FROM .IVC50100 WHERE USERID = @USERID_RS AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND Restrict_Type BETWEEN @Restrict_Type_RS AND @Restrict_Type_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND INVCNMBR BETWEEN @INVCNMBR_RS AND @INVCNMBR_RE ORDER BY USERID DESC, SEQNUMBR DESC, Restrict_Type DESC, DOCTYPE DESC, INVCNMBR DESC END ELSE BEGIN SELECT TOP 25  Restrict_Type, DOCTYPE, INVCNMBR, USERID, SEQNUMBR, DEX_ROW_ID FROM .IVC50100 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND Restrict_Type BETWEEN @Restrict_Type_RS AND @Restrict_Type_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND INVCNMBR BETWEEN @INVCNMBR_RS AND @INVCNMBR_RE ORDER BY USERID DESC, SEQNUMBR DESC, Restrict_Type DESC, DOCTYPE DESC, INVCNMBR DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IVC50100L_1] TO [DYNGRP]
GO
