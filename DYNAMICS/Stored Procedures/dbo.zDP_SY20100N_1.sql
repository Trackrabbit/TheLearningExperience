SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY20100N_1] (@BS int, @EntityTypeID int, @EntityTypeID_RS int, @EntityTypeID_RE int) AS  set nocount on IF @EntityTypeID_RS IS NULL BEGIN SELECT TOP 25  EntityTypeID, MSGNUM, DEX_ROW_ID FROM .SY20100 WHERE ( EntityTypeID > @EntityTypeID ) ORDER BY EntityTypeID ASC END ELSE IF @EntityTypeID_RS = @EntityTypeID_RE BEGIN SELECT TOP 25  EntityTypeID, MSGNUM, DEX_ROW_ID FROM .SY20100 WHERE EntityTypeID = @EntityTypeID_RS AND ( EntityTypeID > @EntityTypeID ) ORDER BY EntityTypeID ASC END ELSE BEGIN SELECT TOP 25  EntityTypeID, MSGNUM, DEX_ROW_ID FROM .SY20100 WHERE EntityTypeID BETWEEN @EntityTypeID_RS AND @EntityTypeID_RE AND ( EntityTypeID > @EntityTypeID ) ORDER BY EntityTypeID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY20100N_1] TO [DYNGRP]
GO
