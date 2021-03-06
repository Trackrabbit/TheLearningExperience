SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00210F_1] (@CALLNBR_RS char(11), @SRVRECTYPE_RS smallint, @LNITMSEQ_RS int, @CALLNBR_RE char(11), @SRVRECTYPE_RE smallint, @LNITMSEQ_RE int) AS  set nocount on IF @CALLNBR_RS IS NULL BEGIN SELECT TOP 25  CALLNBR, SRVRECTYPE, LNITMSEQ, FRMSTAT, TOSTAT, TECHID, DSCRIPTN, USERID, CREATDDT, CREATETIME, DEX_ROW_ID FROM .SVC00210 ORDER BY CALLNBR ASC, SRVRECTYPE ASC, LNITMSEQ ASC END ELSE IF @CALLNBR_RS = @CALLNBR_RE BEGIN SELECT TOP 25  CALLNBR, SRVRECTYPE, LNITMSEQ, FRMSTAT, TOSTAT, TECHID, DSCRIPTN, USERID, CREATDDT, CREATETIME, DEX_ROW_ID FROM .SVC00210 WHERE CALLNBR = @CALLNBR_RS AND SRVRECTYPE BETWEEN @SRVRECTYPE_RS AND @SRVRECTYPE_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY CALLNBR ASC, SRVRECTYPE ASC, LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  CALLNBR, SRVRECTYPE, LNITMSEQ, FRMSTAT, TOSTAT, TECHID, DSCRIPTN, USERID, CREATDDT, CREATETIME, DEX_ROW_ID FROM .SVC00210 WHERE CALLNBR BETWEEN @CALLNBR_RS AND @CALLNBR_RE AND SRVRECTYPE BETWEEN @SRVRECTYPE_RS AND @SRVRECTYPE_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY CALLNBR ASC, SRVRECTYPE ASC, LNITMSEQ ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00210F_1] TO [DYNGRP]
GO
