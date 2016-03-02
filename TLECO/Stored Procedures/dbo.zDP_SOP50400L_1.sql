SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP50400L_1] (@USERID_RS char(15), @ITEMNMBR_RS char(31), @UOFM_RS char(9), @PRCSHID_RS char(15), @EPITMTYP_RS char(1), @STRTDATE_RS datetime, @ENDDATE_RS datetime, @QTYFROM_RS numeric(19,5), @QTYTO_RS numeric(19,5), @USERID_RE char(15), @ITEMNMBR_RE char(31), @UOFM_RE char(9), @PRCSHID_RE char(15), @EPITMTYP_RE char(1), @STRTDATE_RE datetime, @ENDDATE_RE datetime, @QTYFROM_RE numeric(19,5), @QTYTO_RE numeric(19,5)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, ITEMNMBR, UOFM, PRCSHID, EPITMTYP, STRTDATE, ENDDATE, QTYFROM, QTYTO, PSITMVAL, EQUOMQTY, BASEUOFM, PROMOLVL, PROMOTYP, PRCGRPID, PRODTCOD, ACTIVE, DEX_ROW_ID FROM .SOP50400 ORDER BY USERID DESC, ITEMNMBR DESC, UOFM DESC, PRCSHID DESC, EPITMTYP DESC, STRTDATE DESC, ENDDATE DESC, QTYFROM DESC, QTYTO DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, ITEMNMBR, UOFM, PRCSHID, EPITMTYP, STRTDATE, ENDDATE, QTYFROM, QTYTO, PSITMVAL, EQUOMQTY, BASEUOFM, PROMOLVL, PROMOTYP, PRCGRPID, PRODTCOD, ACTIVE, DEX_ROW_ID FROM .SOP50400 WHERE USERID = @USERID_RS AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND UOFM BETWEEN @UOFM_RS AND @UOFM_RE AND PRCSHID BETWEEN @PRCSHID_RS AND @PRCSHID_RE AND EPITMTYP BETWEEN @EPITMTYP_RS AND @EPITMTYP_RE AND STRTDATE BETWEEN @STRTDATE_RS AND @STRTDATE_RE AND ENDDATE BETWEEN @ENDDATE_RS AND @ENDDATE_RE AND QTYFROM BETWEEN @QTYFROM_RS AND @QTYFROM_RE AND QTYTO BETWEEN @QTYTO_RS AND @QTYTO_RE ORDER BY USERID DESC, ITEMNMBR DESC, UOFM DESC, PRCSHID DESC, EPITMTYP DESC, STRTDATE DESC, ENDDATE DESC, QTYFROM DESC, QTYTO DESC END ELSE BEGIN SELECT TOP 25  USERID, ITEMNMBR, UOFM, PRCSHID, EPITMTYP, STRTDATE, ENDDATE, QTYFROM, QTYTO, PSITMVAL, EQUOMQTY, BASEUOFM, PROMOLVL, PROMOTYP, PRCGRPID, PRODTCOD, ACTIVE, DEX_ROW_ID FROM .SOP50400 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND UOFM BETWEEN @UOFM_RS AND @UOFM_RE AND PRCSHID BETWEEN @PRCSHID_RS AND @PRCSHID_RE AND EPITMTYP BETWEEN @EPITMTYP_RS AND @EPITMTYP_RE AND STRTDATE BETWEEN @STRTDATE_RS AND @STRTDATE_RE AND ENDDATE BETWEEN @ENDDATE_RS AND @ENDDATE_RE AND QTYFROM BETWEEN @QTYFROM_RS AND @QTYFROM_RE AND QTYTO BETWEEN @QTYTO_RS AND @QTYTO_RE ORDER BY USERID DESC, ITEMNMBR DESC, UOFM DESC, PRCSHID DESC, EPITMTYP DESC, STRTDATE DESC, ENDDATE DESC, QTYFROM DESC, QTYTO DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP50400L_1] TO [DYNGRP]
GO
