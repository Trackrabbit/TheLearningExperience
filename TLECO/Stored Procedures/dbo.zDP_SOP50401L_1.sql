SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP50401L_1] (@ITEMNMBR_RS char(31), @EPITMTYP_RS char(1), @STRTDATE_RS datetime, @ENDDATE_RS datetime, @PRCSHID_RS char(15), @BASEUOFM_RS char(9), @ITEMNMBR_RE char(31), @EPITMTYP_RE char(1), @STRTDATE_RE datetime, @ENDDATE_RE datetime, @PRCSHID_RE char(15), @BASEUOFM_RE char(9)) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, EPITMTYP, STRTDATE, ENDDATE, PRCSHID, BASEUOFM, ACTIVE, PRODTCOD, QTYFROM, PSITMVAL, FREEITEM, FREEUOFM, DEX_ROW_ID FROM .SOP50401 ORDER BY ITEMNMBR DESC, EPITMTYP DESC, STRTDATE DESC, ENDDATE DESC, PRCSHID DESC, BASEUOFM DESC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  ITEMNMBR, EPITMTYP, STRTDATE, ENDDATE, PRCSHID, BASEUOFM, ACTIVE, PRODTCOD, QTYFROM, PSITMVAL, FREEITEM, FREEUOFM, DEX_ROW_ID FROM .SOP50401 WHERE ITEMNMBR = @ITEMNMBR_RS AND EPITMTYP BETWEEN @EPITMTYP_RS AND @EPITMTYP_RE AND STRTDATE BETWEEN @STRTDATE_RS AND @STRTDATE_RE AND ENDDATE BETWEEN @ENDDATE_RS AND @ENDDATE_RE AND PRCSHID BETWEEN @PRCSHID_RS AND @PRCSHID_RE AND BASEUOFM BETWEEN @BASEUOFM_RS AND @BASEUOFM_RE ORDER BY ITEMNMBR DESC, EPITMTYP DESC, STRTDATE DESC, ENDDATE DESC, PRCSHID DESC, BASEUOFM DESC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, EPITMTYP, STRTDATE, ENDDATE, PRCSHID, BASEUOFM, ACTIVE, PRODTCOD, QTYFROM, PSITMVAL, FREEITEM, FREEUOFM, DEX_ROW_ID FROM .SOP50401 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND EPITMTYP BETWEEN @EPITMTYP_RS AND @EPITMTYP_RE AND STRTDATE BETWEEN @STRTDATE_RS AND @STRTDATE_RE AND ENDDATE BETWEEN @ENDDATE_RS AND @ENDDATE_RE AND PRCSHID BETWEEN @PRCSHID_RS AND @PRCSHID_RE AND BASEUOFM BETWEEN @BASEUOFM_RS AND @BASEUOFM_RE ORDER BY ITEMNMBR DESC, EPITMTYP DESC, STRTDATE DESC, ENDDATE DESC, PRCSHID DESC, BASEUOFM DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP50401L_1] TO [DYNGRP]
GO
