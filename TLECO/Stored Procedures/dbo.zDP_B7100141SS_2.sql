SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100141SS_2] (@CLASSID char(15)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MODULE1, CLASSID, DISTTYPE, BSSI_Recog_TemplateID, ACTINDX, BSSI_DistDeferralActIdx, DEX_ROW_ID FROM .B7100141 WHERE CLASSID = @CLASSID ORDER BY CLASSID ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100141SS_2] TO [DYNGRP]
GO
