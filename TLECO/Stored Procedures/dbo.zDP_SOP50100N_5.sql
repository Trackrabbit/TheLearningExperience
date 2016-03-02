SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP50100N_5] (@BS int, @PROCORIG smallint, @USERID char(15), @SOPTYPE smallint, @DOCID char(15), @SOPNUMBE char(21), @PROCORIG_RS smallint, @USERID_RS char(15), @SOPTYPE_RS smallint, @DOCID_RS char(15), @SOPNUMBE_RS char(21), @PROCORIG_RE smallint, @USERID_RE char(15), @SOPTYPE_RE smallint, @DOCID_RE char(15), @SOPNUMBE_RE char(21)) AS  set nocount on IF @PROCORIG_RS IS NULL BEGIN SELECT TOP 25  PROCORIG, USERID, MKTOPROC, SOPNUMBE, SOPTYPE, DOCDATE, CUSTNMBR, CUSTNAME, CSTPONBR, BACHNUMB, DOCID, ERROR, DEX_ROW_ID FROM .SOP50100 WHERE ( PROCORIG = @PROCORIG AND USERID = @USERID AND SOPTYPE = @SOPTYPE AND DOCID = @DOCID AND SOPNUMBE > @SOPNUMBE OR PROCORIG = @PROCORIG AND USERID = @USERID AND SOPTYPE = @SOPTYPE AND DOCID > @DOCID OR PROCORIG = @PROCORIG AND USERID = @USERID AND SOPTYPE > @SOPTYPE OR PROCORIG = @PROCORIG AND USERID > @USERID OR PROCORIG > @PROCORIG ) ORDER BY PROCORIG ASC, USERID ASC, SOPTYPE ASC, DOCID ASC, SOPNUMBE ASC END ELSE IF @PROCORIG_RS = @PROCORIG_RE BEGIN SELECT TOP 25  PROCORIG, USERID, MKTOPROC, SOPNUMBE, SOPTYPE, DOCDATE, CUSTNMBR, CUSTNAME, CSTPONBR, BACHNUMB, DOCID, ERROR, DEX_ROW_ID FROM .SOP50100 WHERE PROCORIG = @PROCORIG_RS AND USERID BETWEEN @USERID_RS AND @USERID_RE AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND DOCID BETWEEN @DOCID_RS AND @DOCID_RE AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND ( PROCORIG = @PROCORIG AND USERID = @USERID AND SOPTYPE = @SOPTYPE AND DOCID = @DOCID AND SOPNUMBE > @SOPNUMBE OR PROCORIG = @PROCORIG AND USERID = @USERID AND SOPTYPE = @SOPTYPE AND DOCID > @DOCID OR PROCORIG = @PROCORIG AND USERID = @USERID AND SOPTYPE > @SOPTYPE OR PROCORIG = @PROCORIG AND USERID > @USERID OR PROCORIG > @PROCORIG ) ORDER BY PROCORIG ASC, USERID ASC, SOPTYPE ASC, DOCID ASC, SOPNUMBE ASC END ELSE BEGIN SELECT TOP 25  PROCORIG, USERID, MKTOPROC, SOPNUMBE, SOPTYPE, DOCDATE, CUSTNMBR, CUSTNAME, CSTPONBR, BACHNUMB, DOCID, ERROR, DEX_ROW_ID FROM .SOP50100 WHERE PROCORIG BETWEEN @PROCORIG_RS AND @PROCORIG_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND DOCID BETWEEN @DOCID_RS AND @DOCID_RE AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND ( PROCORIG = @PROCORIG AND USERID = @USERID AND SOPTYPE = @SOPTYPE AND DOCID = @DOCID AND SOPNUMBE > @SOPNUMBE OR PROCORIG = @PROCORIG AND USERID = @USERID AND SOPTYPE = @SOPTYPE AND DOCID > @DOCID OR PROCORIG = @PROCORIG AND USERID = @USERID AND SOPTYPE > @SOPTYPE OR PROCORIG = @PROCORIG AND USERID > @USERID OR PROCORIG > @PROCORIG ) ORDER BY PROCORIG ASC, USERID ASC, SOPTYPE ASC, DOCID ASC, SOPNUMBE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP50100N_5] TO [DYNGRP]
GO
