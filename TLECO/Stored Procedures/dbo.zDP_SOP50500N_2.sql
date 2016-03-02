SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP50500N_2] (@BS int, @USERID char(15), @SEQNUMBR int, @MKTOPROC tinyint, @PRCHLDID char(15), @USERID_RS char(15), @SEQNUMBR_RS int, @MKTOPROC_RS tinyint, @PRCHLDID_RS char(15), @USERID_RE char(15), @SEQNUMBR_RE int, @MKTOPROC_RE tinyint, @PRCHLDID_RE char(15)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, SEQNUMBR, PRCHLDID, Password_Required, PASSWORD, DUMYPSWD, Password_Valid, MKTOPROC, DEX_ROW_ID FROM .SOP50500 WHERE ( USERID = @USERID AND SEQNUMBR = @SEQNUMBR AND MKTOPROC = @MKTOPROC AND PRCHLDID > @PRCHLDID OR USERID = @USERID AND SEQNUMBR = @SEQNUMBR AND MKTOPROC > @MKTOPROC OR USERID = @USERID AND SEQNUMBR > @SEQNUMBR OR USERID > @USERID ) ORDER BY USERID ASC, SEQNUMBR ASC, MKTOPROC ASC, PRCHLDID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, SEQNUMBR, PRCHLDID, Password_Required, PASSWORD, DUMYPSWD, Password_Valid, MKTOPROC, DEX_ROW_ID FROM .SOP50500 WHERE USERID = @USERID_RS AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND MKTOPROC BETWEEN @MKTOPROC_RS AND @MKTOPROC_RE AND PRCHLDID BETWEEN @PRCHLDID_RS AND @PRCHLDID_RE AND ( USERID = @USERID AND SEQNUMBR = @SEQNUMBR AND MKTOPROC = @MKTOPROC AND PRCHLDID > @PRCHLDID OR USERID = @USERID AND SEQNUMBR = @SEQNUMBR AND MKTOPROC > @MKTOPROC OR USERID = @USERID AND SEQNUMBR > @SEQNUMBR OR USERID > @USERID ) ORDER BY USERID ASC, SEQNUMBR ASC, MKTOPROC ASC, PRCHLDID ASC END ELSE BEGIN SELECT TOP 25  USERID, SEQNUMBR, PRCHLDID, Password_Required, PASSWORD, DUMYPSWD, Password_Valid, MKTOPROC, DEX_ROW_ID FROM .SOP50500 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND MKTOPROC BETWEEN @MKTOPROC_RS AND @MKTOPROC_RE AND PRCHLDID BETWEEN @PRCHLDID_RS AND @PRCHLDID_RE AND ( USERID = @USERID AND SEQNUMBR = @SEQNUMBR AND MKTOPROC = @MKTOPROC AND PRCHLDID > @PRCHLDID OR USERID = @USERID AND SEQNUMBR = @SEQNUMBR AND MKTOPROC > @MKTOPROC OR USERID = @USERID AND SEQNUMBR > @SEQNUMBR OR USERID > @USERID ) ORDER BY USERID ASC, SEQNUMBR ASC, MKTOPROC ASC, PRCHLDID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP50500N_2] TO [DYNGRP]
GO