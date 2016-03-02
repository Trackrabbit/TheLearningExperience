SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00661N_2] (@BS int, @USERID char(15), @SOPTYPE smallint, @SOPNUMBE char(21), @USERID_RS char(15), @SOPTYPE_RS smallint, @SOPNUMBE_RS char(21), @USERID_RE char(15), @SOPTYPE_RE smallint, @SOPNUMBE_RE char(21)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, CONSTS, CONTNBR, USERID, DEX_ROW_ID FROM .SVC00661 WHERE ( USERID = @USERID AND SOPTYPE = @SOPTYPE AND SOPNUMBE > @SOPNUMBE OR USERID = @USERID AND SOPTYPE > @SOPTYPE OR USERID > @USERID ) ORDER BY USERID ASC, SOPTYPE ASC, SOPNUMBE ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, CONSTS, CONTNBR, USERID, DEX_ROW_ID FROM .SVC00661 WHERE USERID = @USERID_RS AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND ( USERID = @USERID AND SOPTYPE = @SOPTYPE AND SOPNUMBE > @SOPNUMBE OR USERID = @USERID AND SOPTYPE > @SOPTYPE OR USERID > @USERID ) ORDER BY USERID ASC, SOPTYPE ASC, SOPNUMBE ASC END ELSE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, CONSTS, CONTNBR, USERID, DEX_ROW_ID FROM .SVC00661 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND ( USERID = @USERID AND SOPTYPE = @SOPTYPE AND SOPNUMBE > @SOPNUMBE OR USERID = @USERID AND SOPTYPE > @SOPTYPE OR USERID > @USERID ) ORDER BY USERID ASC, SOPTYPE ASC, SOPNUMBE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00661N_2] TO [DYNGRP]
GO