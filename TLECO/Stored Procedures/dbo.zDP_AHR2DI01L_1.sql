SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHR2DI01L_1] (@EMPID_I_RS char(15), @ENTRYNUMBER_I_RS smallint, @EMPID_I_RE char(15), @ENTRYNUMBER_I_RE smallint) AS  set nocount on IF @EMPID_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, ENTRYNUMBER_I, OFFENSE_I, DATEOFOFFENSE_I, DATECLOSED_I, DATEOFLASTCHANGE_I, USERID, DISCTYPECOMBO_I, NOTESINDEX_I, DEX_ROW_ID FROM .AHR2DI01 ORDER BY EMPID_I DESC, ENTRYNUMBER_I DESC END ELSE IF @EMPID_I_RS = @EMPID_I_RE BEGIN SELECT TOP 25  EMPID_I, ENTRYNUMBER_I, OFFENSE_I, DATEOFOFFENSE_I, DATECLOSED_I, DATEOFLASTCHANGE_I, USERID, DISCTYPECOMBO_I, NOTESINDEX_I, DEX_ROW_ID FROM .AHR2DI01 WHERE EMPID_I = @EMPID_I_RS AND ENTRYNUMBER_I BETWEEN @ENTRYNUMBER_I_RS AND @ENTRYNUMBER_I_RE ORDER BY EMPID_I DESC, ENTRYNUMBER_I DESC END ELSE BEGIN SELECT TOP 25  EMPID_I, ENTRYNUMBER_I, OFFENSE_I, DATEOFOFFENSE_I, DATECLOSED_I, DATEOFLASTCHANGE_I, USERID, DISCTYPECOMBO_I, NOTESINDEX_I, DEX_ROW_ID FROM .AHR2DI01 WHERE EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND ENTRYNUMBER_I BETWEEN @ENTRYNUMBER_I_RS AND @ENTRYNUMBER_I_RE ORDER BY EMPID_I DESC, ENTRYNUMBER_I DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2DI01L_1] TO [DYNGRP]
GO
