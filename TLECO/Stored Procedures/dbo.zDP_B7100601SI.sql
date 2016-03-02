SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100601SI] (@BSSI_EBTemplateID char(25), @BSSI_Description char(51), @BSSI_EBRecog_Methods smallint, @BSSI_EBOnQty tinyint, @BSSI_Recog_Acct_Index1 int, @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B7100601 (BSSI_EBTemplateID, BSSI_Description, BSSI_EBRecog_Methods, BSSI_EBOnQty, BSSI_Recog_Acct_Index1, NOTEINDX) VALUES ( @BSSI_EBTemplateID, @BSSI_Description, @BSSI_EBRecog_Methods, @BSSI_EBOnQty, @BSSI_Recog_Acct_Index1, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100601SI] TO [DYNGRP]
GO
