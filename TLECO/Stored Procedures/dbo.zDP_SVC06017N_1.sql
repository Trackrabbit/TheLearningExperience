SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06017N_1] (@BS int, @ROUTEID char(11), @ITEMNMBR char(31), @SEQUENCE1 numeric(19,5), @LNITMSEQ int, @ROUTEID_RS char(11), @ITEMNMBR_RS char(31), @SEQUENCE1_RS numeric(19,5), @LNITMSEQ_RS int, @ROUTEID_RE char(11), @ITEMNMBR_RE char(31), @SEQUENCE1_RE numeric(19,5), @LNITMSEQ_RE int) AS  set nocount on IF @ROUTEID_RS IS NULL BEGIN SELECT TOP 25  ROUTEID, ITEMNMBR, SEQUENCE1, LNITMSEQ, CMPTITNM, CMPITQTY, DEX_ROW_ID FROM .SVC06017 WHERE ( ROUTEID = @ROUTEID AND ITEMNMBR = @ITEMNMBR AND SEQUENCE1 = @SEQUENCE1 AND LNITMSEQ > @LNITMSEQ OR ROUTEID = @ROUTEID AND ITEMNMBR = @ITEMNMBR AND SEQUENCE1 > @SEQUENCE1 OR ROUTEID = @ROUTEID AND ITEMNMBR > @ITEMNMBR OR ROUTEID > @ROUTEID ) ORDER BY ROUTEID ASC, ITEMNMBR ASC, SEQUENCE1 ASC, LNITMSEQ ASC END ELSE IF @ROUTEID_RS = @ROUTEID_RE BEGIN SELECT TOP 25  ROUTEID, ITEMNMBR, SEQUENCE1, LNITMSEQ, CMPTITNM, CMPITQTY, DEX_ROW_ID FROM .SVC06017 WHERE ROUTEID = @ROUTEID_RS AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND SEQUENCE1 BETWEEN @SEQUENCE1_RS AND @SEQUENCE1_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( ROUTEID = @ROUTEID AND ITEMNMBR = @ITEMNMBR AND SEQUENCE1 = @SEQUENCE1 AND LNITMSEQ > @LNITMSEQ OR ROUTEID = @ROUTEID AND ITEMNMBR = @ITEMNMBR AND SEQUENCE1 > @SEQUENCE1 OR ROUTEID = @ROUTEID AND ITEMNMBR > @ITEMNMBR OR ROUTEID > @ROUTEID ) ORDER BY ROUTEID ASC, ITEMNMBR ASC, SEQUENCE1 ASC, LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  ROUTEID, ITEMNMBR, SEQUENCE1, LNITMSEQ, CMPTITNM, CMPITQTY, DEX_ROW_ID FROM .SVC06017 WHERE ROUTEID BETWEEN @ROUTEID_RS AND @ROUTEID_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND SEQUENCE1 BETWEEN @SEQUENCE1_RS AND @SEQUENCE1_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( ROUTEID = @ROUTEID AND ITEMNMBR = @ITEMNMBR AND SEQUENCE1 = @SEQUENCE1 AND LNITMSEQ > @LNITMSEQ OR ROUTEID = @ROUTEID AND ITEMNMBR = @ITEMNMBR AND SEQUENCE1 > @SEQUENCE1 OR ROUTEID = @ROUTEID AND ITEMNMBR > @ITEMNMBR OR ROUTEID > @ROUTEID ) ORDER BY ROUTEID ASC, ITEMNMBR ASC, SEQUENCE1 ASC, LNITMSEQ ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06017N_1] TO [DYNGRP]
GO
