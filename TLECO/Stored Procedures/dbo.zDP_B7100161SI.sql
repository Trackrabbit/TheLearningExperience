SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100161SI] (@MODULE1 smallint, @VNDCLSID char(11), @DISTTYPE smallint, @BSSI_Recog_TemplateID char(25), @ACTINDX int, @BSSI_DistDeferralActIdx int, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B7100161 (MODULE1, VNDCLSID, DISTTYPE, BSSI_Recog_TemplateID, ACTINDX, BSSI_DistDeferralActIdx) VALUES ( @MODULE1, @VNDCLSID, @DISTTYPE, @BSSI_Recog_TemplateID, @ACTINDX, @BSSI_DistDeferralActIdx) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100161SI] TO [DYNGRP]
GO
