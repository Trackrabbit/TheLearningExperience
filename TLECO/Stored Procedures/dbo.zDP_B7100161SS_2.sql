SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100161SS_2] (@VNDCLSID char(11)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MODULE1, VNDCLSID, DISTTYPE, BSSI_Recog_TemplateID, ACTINDX, BSSI_DistDeferralActIdx, DEX_ROW_ID FROM .B7100161 WHERE VNDCLSID = @VNDCLSID ORDER BY VNDCLSID ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100161SS_2] TO [DYNGRP]
GO
