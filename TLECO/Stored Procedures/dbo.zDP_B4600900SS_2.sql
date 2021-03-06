SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600900SS_2] (@BSSI_Description char(51)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_ParentCompanyID, BSSI_Description, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, NOTEINDX, CRUSRID, CREATDDT, LSTUSRED, LSTEDTDT, DEX_ROW_ID FROM .B4600900 WHERE BSSI_Description = @BSSI_Description ORDER BY BSSI_Description ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600900SS_2] TO [DYNGRP]
GO
