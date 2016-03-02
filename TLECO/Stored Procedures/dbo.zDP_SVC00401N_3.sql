SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00401N_3] (@BS int, @CONFGREF char(21), @PARLEVEL smallint, @PARSEQ smallint, @CNFGSEQ smallint, @CONFGREF_RS char(21), @PARLEVEL_RS smallint, @PARSEQ_RS smallint, @CNFGSEQ_RS smallint, @CONFGREF_RE char(21), @PARLEVEL_RE smallint, @PARSEQ_RE smallint, @CNFGSEQ_RE smallint) AS  set nocount on IF @CONFGREF_RS IS NULL BEGIN SELECT TOP 25  CONFGREF, CNFGLVL, CNFGSEQ, EQUIPID, QUANTITY, ITEMNMBR, PARLEVEL, PARSEQ, INSTDTE, DSCRIPTN, DEX_ROW_ID FROM .SVC00401 WHERE ( CONFGREF = @CONFGREF AND PARLEVEL = @PARLEVEL AND PARSEQ = @PARSEQ AND CNFGSEQ > @CNFGSEQ OR CONFGREF = @CONFGREF AND PARLEVEL = @PARLEVEL AND PARSEQ > @PARSEQ OR CONFGREF = @CONFGREF AND PARLEVEL > @PARLEVEL OR CONFGREF > @CONFGREF ) ORDER BY CONFGREF ASC, PARLEVEL ASC, PARSEQ ASC, CNFGSEQ ASC END ELSE IF @CONFGREF_RS = @CONFGREF_RE BEGIN SELECT TOP 25  CONFGREF, CNFGLVL, CNFGSEQ, EQUIPID, QUANTITY, ITEMNMBR, PARLEVEL, PARSEQ, INSTDTE, DSCRIPTN, DEX_ROW_ID FROM .SVC00401 WHERE CONFGREF = @CONFGREF_RS AND PARLEVEL BETWEEN @PARLEVEL_RS AND @PARLEVEL_RE AND PARSEQ BETWEEN @PARSEQ_RS AND @PARSEQ_RE AND CNFGSEQ BETWEEN @CNFGSEQ_RS AND @CNFGSEQ_RE AND ( CONFGREF = @CONFGREF AND PARLEVEL = @PARLEVEL AND PARSEQ = @PARSEQ AND CNFGSEQ > @CNFGSEQ OR CONFGREF = @CONFGREF AND PARLEVEL = @PARLEVEL AND PARSEQ > @PARSEQ OR CONFGREF = @CONFGREF AND PARLEVEL > @PARLEVEL OR CONFGREF > @CONFGREF ) ORDER BY CONFGREF ASC, PARLEVEL ASC, PARSEQ ASC, CNFGSEQ ASC END ELSE BEGIN SELECT TOP 25  CONFGREF, CNFGLVL, CNFGSEQ, EQUIPID, QUANTITY, ITEMNMBR, PARLEVEL, PARSEQ, INSTDTE, DSCRIPTN, DEX_ROW_ID FROM .SVC00401 WHERE CONFGREF BETWEEN @CONFGREF_RS AND @CONFGREF_RE AND PARLEVEL BETWEEN @PARLEVEL_RS AND @PARLEVEL_RE AND PARSEQ BETWEEN @PARSEQ_RS AND @PARSEQ_RE AND CNFGSEQ BETWEEN @CNFGSEQ_RS AND @CNFGSEQ_RE AND ( CONFGREF = @CONFGREF AND PARLEVEL = @PARLEVEL AND PARSEQ = @PARSEQ AND CNFGSEQ > @CNFGSEQ OR CONFGREF = @CONFGREF AND PARLEVEL = @PARLEVEL AND PARSEQ > @PARSEQ OR CONFGREF = @CONFGREF AND PARLEVEL > @PARLEVEL OR CONFGREF > @CONFGREF ) ORDER BY CONFGREF ASC, PARLEVEL ASC, PARSEQ ASC, CNFGSEQ ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00401N_3] TO [DYNGRP]
GO
