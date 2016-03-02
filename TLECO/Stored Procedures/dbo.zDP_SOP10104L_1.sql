SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP10104L_1] (@SOPTYPE_RS smallint, @SOPNUMBE_RS char(21), @PRCHLDID_RS char(15), @SOPTYPE_RE smallint, @SOPNUMBE_RE char(21), @PRCHLDID_RE char(15)) AS  set nocount on IF @SOPTYPE_RS IS NULL BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, PRCHLDID, DELETE1, USERID, HOLDDATE, TIME1, TRXSORCE, DEX_ROW_ID FROM .SOP10104 ORDER BY SOPTYPE DESC, SOPNUMBE DESC, PRCHLDID DESC END ELSE IF @SOPTYPE_RS = @SOPTYPE_RE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, PRCHLDID, DELETE1, USERID, HOLDDATE, TIME1, TRXSORCE, DEX_ROW_ID FROM .SOP10104 WHERE SOPTYPE = @SOPTYPE_RS AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND PRCHLDID BETWEEN @PRCHLDID_RS AND @PRCHLDID_RE ORDER BY SOPTYPE DESC, SOPNUMBE DESC, PRCHLDID DESC END ELSE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, PRCHLDID, DELETE1, USERID, HOLDDATE, TIME1, TRXSORCE, DEX_ROW_ID FROM .SOP10104 WHERE SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND PRCHLDID BETWEEN @PRCHLDID_RS AND @PRCHLDID_RE ORDER BY SOPTYPE DESC, SOPNUMBE DESC, PRCHLDID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP10104L_1] TO [DYNGRP]
GO