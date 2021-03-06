SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100130F_1] (@MODULE1_RS smallint, @DISTTYPE_RS smallint, @BSSI_DistDeferralActIdx_RS int, @MODULE1_RE smallint, @DISTTYPE_RE smallint, @BSSI_DistDeferralActIdx_RE int) AS /* 12.00.0270.000 */ set nocount on IF @MODULE1_RS IS NULL BEGIN SELECT TOP 25  MODULE1, DISTTYPE, BSSI_DistDeferralActIdx, BSSI_Recog_TemplateID, ACTINDX, DEX_ROW_ID FROM .B7100130 ORDER BY MODULE1 ASC, DISTTYPE ASC, BSSI_DistDeferralActIdx ASC END ELSE IF @MODULE1_RS = @MODULE1_RE BEGIN SELECT TOP 25  MODULE1, DISTTYPE, BSSI_DistDeferralActIdx, BSSI_Recog_TemplateID, ACTINDX, DEX_ROW_ID FROM .B7100130 WHERE MODULE1 = @MODULE1_RS AND DISTTYPE BETWEEN @DISTTYPE_RS AND @DISTTYPE_RE AND BSSI_DistDeferralActIdx BETWEEN @BSSI_DistDeferralActIdx_RS AND @BSSI_DistDeferralActIdx_RE ORDER BY MODULE1 ASC, DISTTYPE ASC, BSSI_DistDeferralActIdx ASC END ELSE BEGIN SELECT TOP 25  MODULE1, DISTTYPE, BSSI_DistDeferralActIdx, BSSI_Recog_TemplateID, ACTINDX, DEX_ROW_ID FROM .B7100130 WHERE MODULE1 BETWEEN @MODULE1_RS AND @MODULE1_RE AND DISTTYPE BETWEEN @DISTTYPE_RS AND @DISTTYPE_RE AND BSSI_DistDeferralActIdx BETWEEN @BSSI_DistDeferralActIdx_RS AND @BSSI_DistDeferralActIdx_RE ORDER BY MODULE1 ASC, DISTTYPE ASC, BSSI_DistDeferralActIdx ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100130F_1] TO [DYNGRP]
GO
