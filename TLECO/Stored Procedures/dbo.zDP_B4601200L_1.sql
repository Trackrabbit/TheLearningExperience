SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4601200L_1] (@BSSI_LeaseTypeID_RS char(25), @BSSI_LeaseTypeID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_LeaseTypeID_RS IS NULL BEGIN SELECT TOP 25  BSSI_LeaseTypeID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B4601200 ORDER BY BSSI_LeaseTypeID DESC END ELSE IF @BSSI_LeaseTypeID_RS = @BSSI_LeaseTypeID_RE BEGIN SELECT TOP 25  BSSI_LeaseTypeID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B4601200 WHERE BSSI_LeaseTypeID = @BSSI_LeaseTypeID_RS ORDER BY BSSI_LeaseTypeID DESC END ELSE BEGIN SELECT TOP 25  BSSI_LeaseTypeID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B4601200 WHERE BSSI_LeaseTypeID BETWEEN @BSSI_LeaseTypeID_RS AND @BSSI_LeaseTypeID_RE ORDER BY BSSI_LeaseTypeID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4601200L_1] TO [DYNGRP]
GO
