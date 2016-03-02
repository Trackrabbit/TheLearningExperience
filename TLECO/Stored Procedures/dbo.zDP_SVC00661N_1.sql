SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00661N_1] (@BS int, @SOPTYPE smallint, @SOPNUMBE char(21), @SOPTYPE_RS smallint, @SOPNUMBE_RS char(21), @SOPTYPE_RE smallint, @SOPNUMBE_RE char(21)) AS  set nocount on IF @SOPTYPE_RS IS NULL BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, CONSTS, CONTNBR, USERID, DEX_ROW_ID FROM .SVC00661 WHERE ( SOPTYPE = @SOPTYPE AND SOPNUMBE > @SOPNUMBE OR SOPTYPE > @SOPTYPE ) ORDER BY SOPTYPE ASC, SOPNUMBE ASC END ELSE IF @SOPTYPE_RS = @SOPTYPE_RE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, CONSTS, CONTNBR, USERID, DEX_ROW_ID FROM .SVC00661 WHERE SOPTYPE = @SOPTYPE_RS AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND ( SOPTYPE = @SOPTYPE AND SOPNUMBE > @SOPNUMBE OR SOPTYPE > @SOPTYPE ) ORDER BY SOPTYPE ASC, SOPNUMBE ASC END ELSE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, CONSTS, CONTNBR, USERID, DEX_ROW_ID FROM .SVC00661 WHERE SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND ( SOPTYPE = @SOPTYPE AND SOPNUMBE > @SOPNUMBE OR SOPTYPE > @SOPTYPE ) ORDER BY SOPTYPE ASC, SOPNUMBE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00661N_1] TO [DYNGRP]
GO
