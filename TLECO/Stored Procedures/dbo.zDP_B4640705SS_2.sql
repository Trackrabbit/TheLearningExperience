SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640705SS_2] (@LOCNCODE char(11), @BSSI_TitleIssueID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  LOCNCODE, LNITMSEQ, BSSI_TitleIssueID, NOTEINDX, DEX_ROW_ID FROM .B4640705 WHERE LOCNCODE = @LOCNCODE AND BSSI_TitleIssueID = @BSSI_TitleIssueID ORDER BY LOCNCODE ASC, BSSI_TitleIssueID ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640705SS_2] TO [DYNGRP]
GO