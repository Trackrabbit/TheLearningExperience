SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640703SS_2] (@LOCNCODE char(11), @BSSI_Contact_ID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  LOCNCODE, LNITMSEQ, BSSI_Contact_Option, BSSI_Contact_ID, ADRSCODE, NOTEINDX, DEX_ROW_ID FROM .B4640703 WHERE LOCNCODE = @LOCNCODE AND BSSI_Contact_ID = @BSSI_Contact_ID ORDER BY LOCNCODE ASC, BSSI_Contact_ID ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640703SS_2] TO [DYNGRP]
GO
