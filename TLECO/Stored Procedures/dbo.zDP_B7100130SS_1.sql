SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100130SS_1] (@MODULE1 smallint, @DISTTYPE smallint, @BSSI_DistDeferralActIdx int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MODULE1, DISTTYPE, BSSI_DistDeferralActIdx, BSSI_Recog_TemplateID, ACTINDX, DEX_ROW_ID FROM .B7100130 WHERE MODULE1 = @MODULE1 AND DISTTYPE = @DISTTYPE AND BSSI_DistDeferralActIdx = @BSSI_DistDeferralActIdx ORDER BY MODULE1 ASC, DISTTYPE ASC, BSSI_DistDeferralActIdx ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100130SS_1] TO [DYNGRP]
GO