SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100701SI] (@BSSI_EBTemplateID char(25), @LNITMSEQ int, @BSSI_EventID char(25), @BSSI_Description char(51), @BSSI_Event_Percent smallint, @BSSI_ExpiryPeriod smallint, @BSSI_ATExpiryPeriod smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B7100701 (BSSI_EBTemplateID, LNITMSEQ, BSSI_EventID, BSSI_Description, BSSI_Event_Percent, BSSI_ExpiryPeriod, BSSI_ATExpiryPeriod) VALUES ( @BSSI_EBTemplateID, @LNITMSEQ, @BSSI_EventID, @BSSI_Description, @BSSI_Event_Percent, @BSSI_ExpiryPeriod, @BSSI_ATExpiryPeriod) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100701SI] TO [DYNGRP]
GO
