SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME240447F_1] (@Queue_ID_RS smallint, @CHEKBKID_RS char(15), @BACHNUMB_RS char(15), @USERID_RS char(15), @MESEQNUMBR_RS int, @DOCNUMBR_RS char(21), @MECHKID_RS int, @SEQNUMBR_RS int, @Queue_ID_RE smallint, @CHEKBKID_RE char(15), @BACHNUMB_RE char(15), @USERID_RE char(15), @MESEQNUMBR_RE int, @DOCNUMBR_RE char(21), @MECHKID_RE int, @SEQNUMBR_RE int) AS /* 14.00.0084.000 */ set nocount on IF @Queue_ID_RS IS NULL BEGIN SELECT TOP 25  Queue_ID, CHEKBKID, BACHNUMB, USERID, DOCNUMBR, MECHKID, SEQNUMBR, Category_Name, MEFIELDNAME, Field_Value, DATE1, MESEQNUMBR, DEX_ROW_ID FROM .ME240447 ORDER BY Queue_ID ASC, CHEKBKID ASC, BACHNUMB ASC, USERID ASC, MESEQNUMBR ASC, DOCNUMBR ASC, MECHKID ASC, SEQNUMBR ASC END ELSE IF @Queue_ID_RS = @Queue_ID_RE BEGIN SELECT TOP 25  Queue_ID, CHEKBKID, BACHNUMB, USERID, DOCNUMBR, MECHKID, SEQNUMBR, Category_Name, MEFIELDNAME, Field_Value, DATE1, MESEQNUMBR, DEX_ROW_ID FROM .ME240447 WHERE Queue_ID = @Queue_ID_RS AND CHEKBKID BETWEEN @CHEKBKID_RS AND @CHEKBKID_RE AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND MESEQNUMBR BETWEEN @MESEQNUMBR_RS AND @MESEQNUMBR_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND MECHKID BETWEEN @MECHKID_RS AND @MECHKID_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY Queue_ID ASC, CHEKBKID ASC, BACHNUMB ASC, USERID ASC, MESEQNUMBR ASC, DOCNUMBR ASC, MECHKID ASC, SEQNUMBR ASC END ELSE BEGIN SELECT TOP 25  Queue_ID, CHEKBKID, BACHNUMB, USERID, DOCNUMBR, MECHKID, SEQNUMBR, Category_Name, MEFIELDNAME, Field_Value, DATE1, MESEQNUMBR, DEX_ROW_ID FROM .ME240447 WHERE Queue_ID BETWEEN @Queue_ID_RS AND @Queue_ID_RE AND CHEKBKID BETWEEN @CHEKBKID_RS AND @CHEKBKID_RE AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND MESEQNUMBR BETWEEN @MESEQNUMBR_RS AND @MESEQNUMBR_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND MECHKID BETWEEN @MECHKID_RS AND @MECHKID_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY Queue_ID ASC, CHEKBKID ASC, BACHNUMB ASC, USERID ASC, MESEQNUMBR ASC, DOCNUMBR ASC, MECHKID ASC, SEQNUMBR ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME240447F_1] TO [DYNGRP]
GO