SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP10106N_1] (@BS int, @SOPTYPE smallint, @SOPNUMBE char(21), @SOPTYPE_RS smallint, @SOPNUMBE_RS char(21), @SOPTYPE_RE smallint, @SOPNUMBE_RE char(21)) AS  set nocount on IF @SOPTYPE_RS IS NULL BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, USRDAT01, USRDAT02, USRTAB01, USRTAB09, USRTAB03, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, DEX_ROW_ID, CMMTTEXT FROM .SOP10106 WHERE ( SOPTYPE = @SOPTYPE AND SOPNUMBE > @SOPNUMBE OR SOPTYPE > @SOPTYPE ) ORDER BY SOPTYPE ASC, SOPNUMBE ASC END ELSE IF @SOPTYPE_RS = @SOPTYPE_RE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, USRDAT01, USRDAT02, USRTAB01, USRTAB09, USRTAB03, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, DEX_ROW_ID, CMMTTEXT FROM .SOP10106 WHERE SOPTYPE = @SOPTYPE_RS AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND ( SOPTYPE = @SOPTYPE AND SOPNUMBE > @SOPNUMBE OR SOPTYPE > @SOPTYPE ) ORDER BY SOPTYPE ASC, SOPNUMBE ASC END ELSE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, USRDAT01, USRDAT02, USRTAB01, USRTAB09, USRTAB03, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, DEX_ROW_ID, CMMTTEXT FROM .SOP10106 WHERE SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND ( SOPTYPE = @SOPTYPE AND SOPNUMBE > @SOPNUMBE OR SOPTYPE > @SOPTYPE ) ORDER BY SOPTYPE ASC, SOPNUMBE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP10106N_1] TO [DYNGRP]
GO
