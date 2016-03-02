SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP50100UN_3] (@BS int, @PROCORIG smallint, @USERID char(15), @DOCDATE datetime, @PROCORIG_RS smallint, @USERID_RS char(15), @DOCDATE_RS datetime, @PROCORIG_RE smallint, @USERID_RE char(15), @DOCDATE_RE datetime) AS  set nocount on IF @PROCORIG_RS IS NULL BEGIN SELECT TOP 25  PROCORIG, USERID, MKTOPROC, SOPNUMBE, SOPTYPE, DOCDATE, CUSTNMBR, CUSTNAME, CSTPONBR, BACHNUMB, DOCID, ERROR, DEX_ROW_ID FROM .SOP50100 WHERE ( PROCORIG = @PROCORIG AND USERID = @USERID AND DOCDATE > @DOCDATE OR PROCORIG = @PROCORIG AND USERID > @USERID OR PROCORIG > @PROCORIG ) ORDER BY PROCORIG ASC, USERID ASC, DOCDATE ASC, DEX_ROW_ID ASC END ELSE IF @PROCORIG_RS = @PROCORIG_RE BEGIN SELECT TOP 25  PROCORIG, USERID, MKTOPROC, SOPNUMBE, SOPTYPE, DOCDATE, CUSTNMBR, CUSTNAME, CSTPONBR, BACHNUMB, DOCID, ERROR, DEX_ROW_ID FROM .SOP50100 WHERE PROCORIG = @PROCORIG_RS AND USERID BETWEEN @USERID_RS AND @USERID_RE AND DOCDATE BETWEEN @DOCDATE_RS AND @DOCDATE_RE AND ( PROCORIG = @PROCORIG AND USERID = @USERID AND DOCDATE > @DOCDATE OR PROCORIG = @PROCORIG AND USERID > @USERID OR PROCORIG > @PROCORIG ) ORDER BY PROCORIG ASC, USERID ASC, DOCDATE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  PROCORIG, USERID, MKTOPROC, SOPNUMBE, SOPTYPE, DOCDATE, CUSTNMBR, CUSTNAME, CSTPONBR, BACHNUMB, DOCID, ERROR, DEX_ROW_ID FROM .SOP50100 WHERE PROCORIG BETWEEN @PROCORIG_RS AND @PROCORIG_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND DOCDATE BETWEEN @DOCDATE_RS AND @DOCDATE_RE AND ( PROCORIG = @PROCORIG AND USERID = @USERID AND DOCDATE > @DOCDATE OR PROCORIG = @PROCORIG AND USERID > @USERID OR PROCORIG > @PROCORIG ) ORDER BY PROCORIG ASC, USERID ASC, DOCDATE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP50100UN_3] TO [DYNGRP]
GO
