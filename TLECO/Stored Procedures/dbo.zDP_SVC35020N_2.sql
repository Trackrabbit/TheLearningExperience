SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC35020N_2] (@BS int, @RETDOCID char(15), @LNSEQNBR numeric(19,5), @LNITMSEQ int, @RETDOCID_RS char(15), @LNSEQNBR_RS numeric(19,5), @LNITMSEQ_RS int, @RETDOCID_RE char(15), @LNSEQNBR_RE numeric(19,5), @LNITMSEQ_RE int) AS  set nocount on IF @RETDOCID_RS IS NULL BEGIN SELECT TOP 25  RETDOCID, LNSEQNBR, LNITMSEQ, SVCFRMSTAT, SVCTOSTAT, DSCRPTION, USERID, CREATDDT, CREATETIME, DEX_ROW_ID FROM .SVC35020 WHERE ( RETDOCID = @RETDOCID AND LNSEQNBR = @LNSEQNBR AND LNITMSEQ > @LNITMSEQ OR RETDOCID = @RETDOCID AND LNSEQNBR > @LNSEQNBR OR RETDOCID > @RETDOCID ) ORDER BY RETDOCID ASC, LNSEQNBR ASC, LNITMSEQ ASC END ELSE IF @RETDOCID_RS = @RETDOCID_RE BEGIN SELECT TOP 25  RETDOCID, LNSEQNBR, LNITMSEQ, SVCFRMSTAT, SVCTOSTAT, DSCRPTION, USERID, CREATDDT, CREATETIME, DEX_ROW_ID FROM .SVC35020 WHERE RETDOCID = @RETDOCID_RS AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( RETDOCID = @RETDOCID AND LNSEQNBR = @LNSEQNBR AND LNITMSEQ > @LNITMSEQ OR RETDOCID = @RETDOCID AND LNSEQNBR > @LNSEQNBR OR RETDOCID > @RETDOCID ) ORDER BY RETDOCID ASC, LNSEQNBR ASC, LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  RETDOCID, LNSEQNBR, LNITMSEQ, SVCFRMSTAT, SVCTOSTAT, DSCRPTION, USERID, CREATDDT, CREATETIME, DEX_ROW_ID FROM .SVC35020 WHERE RETDOCID BETWEEN @RETDOCID_RS AND @RETDOCID_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( RETDOCID = @RETDOCID AND LNSEQNBR = @LNSEQNBR AND LNITMSEQ > @LNITMSEQ OR RETDOCID = @RETDOCID AND LNSEQNBR > @LNSEQNBR OR RETDOCID > @RETDOCID ) ORDER BY RETDOCID ASC, LNSEQNBR ASC, LNITMSEQ ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC35020N_2] TO [DYNGRP]
GO
