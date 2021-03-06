SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2DIS01L_3] (@OFFENSE_I_RS char(31), @EMPID_I_RS char(15), @OFFENSE_I_RE char(31), @EMPID_I_RE char(15)) AS  set nocount on IF @OFFENSE_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, ENTRYNUMBER_I, OFFENSE_I, DATEOFOFFENSE_I, DATECLOSED_I, DATEOFLASTCHANGE_I, USERID, DISCTYPECOMBO_I, NOTESINDEX_I, DEX_ROW_ID FROM .HR2DIS01 ORDER BY OFFENSE_I DESC, EMPID_I DESC, DEX_ROW_ID DESC END ELSE IF @OFFENSE_I_RS = @OFFENSE_I_RE BEGIN SELECT TOP 25  EMPID_I, ENTRYNUMBER_I, OFFENSE_I, DATEOFOFFENSE_I, DATECLOSED_I, DATEOFLASTCHANGE_I, USERID, DISCTYPECOMBO_I, NOTESINDEX_I, DEX_ROW_ID FROM .HR2DIS01 WHERE OFFENSE_I = @OFFENSE_I_RS AND EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE ORDER BY OFFENSE_I DESC, EMPID_I DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  EMPID_I, ENTRYNUMBER_I, OFFENSE_I, DATEOFOFFENSE_I, DATECLOSED_I, DATEOFLASTCHANGE_I, USERID, DISCTYPECOMBO_I, NOTESINDEX_I, DEX_ROW_ID FROM .HR2DIS01 WHERE OFFENSE_I BETWEEN @OFFENSE_I_RS AND @OFFENSE_I_RE AND EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE ORDER BY OFFENSE_I DESC, EMPID_I DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2DIS01L_3] TO [DYNGRP]
GO
