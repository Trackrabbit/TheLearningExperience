SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4601500SI] (@BSSI_TitleIssueID char(25), @BSSI_Description char(51), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4601500 (BSSI_TitleIssueID, BSSI_Description, NOTEINDX) VALUES ( @BSSI_TitleIssueID, @BSSI_Description, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4601500SI] TO [DYNGRP]
GO
