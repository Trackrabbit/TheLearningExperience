SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600900F_1] (@BSSI_ParentCompanyID_RS char(31), @BSSI_ParentCompanyID_RE char(31)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_ParentCompanyID_RS IS NULL BEGIN SELECT TOP 25  BSSI_ParentCompanyID, BSSI_Description, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, NOTEINDX, CRUSRID, CREATDDT, LSTUSRED, LSTEDTDT, DEX_ROW_ID FROM .B4600900 ORDER BY BSSI_ParentCompanyID ASC END ELSE IF @BSSI_ParentCompanyID_RS = @BSSI_ParentCompanyID_RE BEGIN SELECT TOP 25  BSSI_ParentCompanyID, BSSI_Description, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, NOTEINDX, CRUSRID, CREATDDT, LSTUSRED, LSTEDTDT, DEX_ROW_ID FROM .B4600900 WHERE BSSI_ParentCompanyID = @BSSI_ParentCompanyID_RS ORDER BY BSSI_ParentCompanyID ASC END ELSE BEGIN SELECT TOP 25  BSSI_ParentCompanyID, BSSI_Description, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, NOTEINDX, CRUSRID, CREATDDT, LSTUSRED, LSTEDTDT, DEX_ROW_ID FROM .B4600900 WHERE BSSI_ParentCompanyID BETWEEN @BSSI_ParentCompanyID_RS AND @BSSI_ParentCompanyID_RE ORDER BY BSSI_ParentCompanyID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600900F_1] TO [DYNGRP]
GO
