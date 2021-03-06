SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP50100L_1] (@PROCORIG_RS smallint, @USERID_RS char(15), @SOPNUMBE_RS char(21), @SOPTYPE_RS smallint, @PROCORIG_RE smallint, @USERID_RE char(15), @SOPNUMBE_RE char(21), @SOPTYPE_RE smallint) AS  set nocount on IF @PROCORIG_RS IS NULL BEGIN SELECT TOP 25  PROCORIG, USERID, MKTOPROC, SOPNUMBE, SOPTYPE, DOCDATE, CUSTNMBR, CUSTNAME, CSTPONBR, BACHNUMB, DOCID, ERROR, DEX_ROW_ID FROM .SOP50100 ORDER BY PROCORIG DESC, USERID DESC, SOPNUMBE DESC, SOPTYPE DESC END ELSE IF @PROCORIG_RS = @PROCORIG_RE BEGIN SELECT TOP 25  PROCORIG, USERID, MKTOPROC, SOPNUMBE, SOPTYPE, DOCDATE, CUSTNMBR, CUSTNAME, CSTPONBR, BACHNUMB, DOCID, ERROR, DEX_ROW_ID FROM .SOP50100 WHERE PROCORIG = @PROCORIG_RS AND USERID BETWEEN @USERID_RS AND @USERID_RE AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE ORDER BY PROCORIG DESC, USERID DESC, SOPNUMBE DESC, SOPTYPE DESC END ELSE BEGIN SELECT TOP 25  PROCORIG, USERID, MKTOPROC, SOPNUMBE, SOPTYPE, DOCDATE, CUSTNMBR, CUSTNAME, CSTPONBR, BACHNUMB, DOCID, ERROR, DEX_ROW_ID FROM .SOP50100 WHERE PROCORIG BETWEEN @PROCORIG_RS AND @PROCORIG_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE ORDER BY PROCORIG DESC, USERID DESC, SOPNUMBE DESC, SOPTYPE DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP50100L_1] TO [DYNGRP]
GO
