SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CAM40004F_1] (@CAMAccountType_RS smallint, @CAMAccountType_RE smallint) AS  set nocount on IF @CAMAccountType_RS IS NULL BEGIN SELECT TOP 25  REFRENCE, SOURCDOC, CAMAccountType, BCHCOMNT, BACHNUMB, DEX_ROW_ID FROM .CAM40004 ORDER BY CAMAccountType ASC END ELSE IF @CAMAccountType_RS = @CAMAccountType_RE BEGIN SELECT TOP 25  REFRENCE, SOURCDOC, CAMAccountType, BCHCOMNT, BACHNUMB, DEX_ROW_ID FROM .CAM40004 WHERE CAMAccountType = @CAMAccountType_RS ORDER BY CAMAccountType ASC END ELSE BEGIN SELECT TOP 25  REFRENCE, SOURCDOC, CAMAccountType, BCHCOMNT, BACHNUMB, DEX_ROW_ID FROM .CAM40004 WHERE CAMAccountType BETWEEN @CAMAccountType_RS AND @CAMAccountType_RE ORDER BY CAMAccountType ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CAM40004F_1] TO [DYNGRP]
GO
