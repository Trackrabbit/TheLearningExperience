SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP50401UN_2] (@BS int, @STRTDATE datetime, @ENDDATE datetime, @ITEMNMBR char(31), @EPITMTYP char(1), @PRCSHID char(15), @BASEUOFM char(9), @STRTDATE_RS datetime, @ENDDATE_RS datetime, @ITEMNMBR_RS char(31), @EPITMTYP_RS char(1), @PRCSHID_RS char(15), @BASEUOFM_RS char(9), @STRTDATE_RE datetime, @ENDDATE_RE datetime, @ITEMNMBR_RE char(31), @EPITMTYP_RE char(1), @PRCSHID_RE char(15), @BASEUOFM_RE char(9)) AS  set nocount on IF @STRTDATE_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, EPITMTYP, STRTDATE, ENDDATE, PRCSHID, BASEUOFM, ACTIVE, PRODTCOD, QTYFROM, PSITMVAL, FREEITEM, FREEUOFM, DEX_ROW_ID FROM .SOP50401 WHERE ( STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND ITEMNMBR = @ITEMNMBR AND EPITMTYP = @EPITMTYP AND PRCSHID = @PRCSHID AND BASEUOFM > @BASEUOFM OR STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND ITEMNMBR = @ITEMNMBR AND EPITMTYP = @EPITMTYP AND PRCSHID > @PRCSHID OR STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND ITEMNMBR = @ITEMNMBR AND EPITMTYP > @EPITMTYP OR STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND ITEMNMBR > @ITEMNMBR OR STRTDATE = @STRTDATE AND ENDDATE > @ENDDATE OR STRTDATE > @STRTDATE ) ORDER BY STRTDATE ASC, ENDDATE ASC, ITEMNMBR ASC, EPITMTYP ASC, PRCSHID ASC, BASEUOFM ASC, DEX_ROW_ID ASC END ELSE IF @STRTDATE_RS = @STRTDATE_RE BEGIN SELECT TOP 25  ITEMNMBR, EPITMTYP, STRTDATE, ENDDATE, PRCSHID, BASEUOFM, ACTIVE, PRODTCOD, QTYFROM, PSITMVAL, FREEITEM, FREEUOFM, DEX_ROW_ID FROM .SOP50401 WHERE STRTDATE = @STRTDATE_RS AND ENDDATE BETWEEN @ENDDATE_RS AND @ENDDATE_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND EPITMTYP BETWEEN @EPITMTYP_RS AND @EPITMTYP_RE AND PRCSHID BETWEEN @PRCSHID_RS AND @PRCSHID_RE AND BASEUOFM BETWEEN @BASEUOFM_RS AND @BASEUOFM_RE AND ( STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND ITEMNMBR = @ITEMNMBR AND EPITMTYP = @EPITMTYP AND PRCSHID = @PRCSHID AND BASEUOFM > @BASEUOFM OR STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND ITEMNMBR = @ITEMNMBR AND EPITMTYP = @EPITMTYP AND PRCSHID > @PRCSHID OR STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND ITEMNMBR = @ITEMNMBR AND EPITMTYP > @EPITMTYP OR STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND ITEMNMBR > @ITEMNMBR OR STRTDATE = @STRTDATE AND ENDDATE > @ENDDATE OR STRTDATE > @STRTDATE ) ORDER BY STRTDATE ASC, ENDDATE ASC, ITEMNMBR ASC, EPITMTYP ASC, PRCSHID ASC, BASEUOFM ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, EPITMTYP, STRTDATE, ENDDATE, PRCSHID, BASEUOFM, ACTIVE, PRODTCOD, QTYFROM, PSITMVAL, FREEITEM, FREEUOFM, DEX_ROW_ID FROM .SOP50401 WHERE STRTDATE BETWEEN @STRTDATE_RS AND @STRTDATE_RE AND ENDDATE BETWEEN @ENDDATE_RS AND @ENDDATE_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND EPITMTYP BETWEEN @EPITMTYP_RS AND @EPITMTYP_RE AND PRCSHID BETWEEN @PRCSHID_RS AND @PRCSHID_RE AND BASEUOFM BETWEEN @BASEUOFM_RS AND @BASEUOFM_RE AND ( STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND ITEMNMBR = @ITEMNMBR AND EPITMTYP = @EPITMTYP AND PRCSHID = @PRCSHID AND BASEUOFM > @BASEUOFM OR STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND ITEMNMBR = @ITEMNMBR AND EPITMTYP = @EPITMTYP AND PRCSHID > @PRCSHID OR STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND ITEMNMBR = @ITEMNMBR AND EPITMTYP > @EPITMTYP OR STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND ITEMNMBR > @ITEMNMBR OR STRTDATE = @STRTDATE AND ENDDATE > @ENDDATE OR STRTDATE > @STRTDATE ) ORDER BY STRTDATE ASC, ENDDATE ASC, ITEMNMBR ASC, EPITMTYP ASC, PRCSHID ASC, BASEUOFM ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP50401UN_2] TO [DYNGRP]
GO
