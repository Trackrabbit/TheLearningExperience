SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00303UN_3] (@BS int, @SERLNMBR char(21), @ITEMNMBR char(31), @PARLEVEL smallint, @PARSEQ smallint, @SERLNMBR_RS char(21), @ITEMNMBR_RS char(31), @PARLEVEL_RS smallint, @PARSEQ_RS smallint, @SERLNMBR_RE char(21), @ITEMNMBR_RE char(31), @PARLEVEL_RE smallint, @PARSEQ_RE smallint) AS  set nocount on IF @SERLNMBR_RS IS NULL BEGIN SELECT TOP 25  CUSTNMBR, ADRSCODE, EQUIPID, SERLNMBR, ITEMNMBR, ITEMDESC, INSTDTE, QUANTITY, CNFGLVL, CNFGSEQ, PARLEVEL, PARSEQ, CHDFLAG, DEX_ROW_ID FROM .SVC00303 WHERE ( SERLNMBR = @SERLNMBR AND ITEMNMBR = @ITEMNMBR AND PARLEVEL = @PARLEVEL AND PARSEQ > @PARSEQ OR SERLNMBR = @SERLNMBR AND ITEMNMBR = @ITEMNMBR AND PARLEVEL > @PARLEVEL OR SERLNMBR = @SERLNMBR AND ITEMNMBR > @ITEMNMBR OR SERLNMBR > @SERLNMBR ) ORDER BY SERLNMBR ASC, ITEMNMBR ASC, PARLEVEL ASC, PARSEQ ASC, DEX_ROW_ID ASC END ELSE IF @SERLNMBR_RS = @SERLNMBR_RE BEGIN SELECT TOP 25  CUSTNMBR, ADRSCODE, EQUIPID, SERLNMBR, ITEMNMBR, ITEMDESC, INSTDTE, QUANTITY, CNFGLVL, CNFGSEQ, PARLEVEL, PARSEQ, CHDFLAG, DEX_ROW_ID FROM .SVC00303 WHERE SERLNMBR = @SERLNMBR_RS AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND PARLEVEL BETWEEN @PARLEVEL_RS AND @PARLEVEL_RE AND PARSEQ BETWEEN @PARSEQ_RS AND @PARSEQ_RE AND ( SERLNMBR = @SERLNMBR AND ITEMNMBR = @ITEMNMBR AND PARLEVEL = @PARLEVEL AND PARSEQ > @PARSEQ OR SERLNMBR = @SERLNMBR AND ITEMNMBR = @ITEMNMBR AND PARLEVEL > @PARLEVEL OR SERLNMBR = @SERLNMBR AND ITEMNMBR > @ITEMNMBR OR SERLNMBR > @SERLNMBR ) ORDER BY SERLNMBR ASC, ITEMNMBR ASC, PARLEVEL ASC, PARSEQ ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  CUSTNMBR, ADRSCODE, EQUIPID, SERLNMBR, ITEMNMBR, ITEMDESC, INSTDTE, QUANTITY, CNFGLVL, CNFGSEQ, PARLEVEL, PARSEQ, CHDFLAG, DEX_ROW_ID FROM .SVC00303 WHERE SERLNMBR BETWEEN @SERLNMBR_RS AND @SERLNMBR_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND PARLEVEL BETWEEN @PARLEVEL_RS AND @PARLEVEL_RE AND PARSEQ BETWEEN @PARSEQ_RS AND @PARSEQ_RE AND ( SERLNMBR = @SERLNMBR AND ITEMNMBR = @ITEMNMBR AND PARLEVEL = @PARLEVEL AND PARSEQ > @PARSEQ OR SERLNMBR = @SERLNMBR AND ITEMNMBR = @ITEMNMBR AND PARLEVEL > @PARLEVEL OR SERLNMBR = @SERLNMBR AND ITEMNMBR > @ITEMNMBR OR SERLNMBR > @SERLNMBR ) ORDER BY SERLNMBR ASC, ITEMNMBR ASC, PARLEVEL ASC, PARSEQ ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00303UN_3] TO [DYNGRP]
GO