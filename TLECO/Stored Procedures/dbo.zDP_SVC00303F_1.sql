SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00303F_1] (@CUSTNMBR_RS char(15), @ADRSCODE_RS char(15), @CNFGLVL_RS smallint, @CNFGSEQ_RS smallint, @CUSTNMBR_RE char(15), @ADRSCODE_RE char(15), @CNFGLVL_RE smallint, @CNFGSEQ_RE smallint) AS  set nocount on IF @CUSTNMBR_RS IS NULL BEGIN SELECT TOP 25  CUSTNMBR, ADRSCODE, EQUIPID, SERLNMBR, ITEMNMBR, ITEMDESC, INSTDTE, QUANTITY, CNFGLVL, CNFGSEQ, PARLEVEL, PARSEQ, CHDFLAG, DEX_ROW_ID FROM .SVC00303 ORDER BY CUSTNMBR ASC, ADRSCODE ASC, CNFGLVL ASC, CNFGSEQ ASC END ELSE IF @CUSTNMBR_RS = @CUSTNMBR_RE BEGIN SELECT TOP 25  CUSTNMBR, ADRSCODE, EQUIPID, SERLNMBR, ITEMNMBR, ITEMDESC, INSTDTE, QUANTITY, CNFGLVL, CNFGSEQ, PARLEVEL, PARSEQ, CHDFLAG, DEX_ROW_ID FROM .SVC00303 WHERE CUSTNMBR = @CUSTNMBR_RS AND ADRSCODE BETWEEN @ADRSCODE_RS AND @ADRSCODE_RE AND CNFGLVL BETWEEN @CNFGLVL_RS AND @CNFGLVL_RE AND CNFGSEQ BETWEEN @CNFGSEQ_RS AND @CNFGSEQ_RE ORDER BY CUSTNMBR ASC, ADRSCODE ASC, CNFGLVL ASC, CNFGSEQ ASC END ELSE BEGIN SELECT TOP 25  CUSTNMBR, ADRSCODE, EQUIPID, SERLNMBR, ITEMNMBR, ITEMDESC, INSTDTE, QUANTITY, CNFGLVL, CNFGSEQ, PARLEVEL, PARSEQ, CHDFLAG, DEX_ROW_ID FROM .SVC00303 WHERE CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND ADRSCODE BETWEEN @ADRSCODE_RS AND @ADRSCODE_RE AND CNFGLVL BETWEEN @CNFGLVL_RS AND @CNFGLVL_RE AND CNFGSEQ BETWEEN @CNFGSEQ_RS AND @CNFGSEQ_RE ORDER BY CUSTNMBR ASC, ADRSCODE ASC, CNFGLVL ASC, CNFGSEQ ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00303F_1] TO [DYNGRP]
GO