SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640709SS_2] (@LOCNCODE char(11), @BSSI_Insurance_Type_ID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  LOCNCODE, LNITMSEQ, BSSI_Insurance_Type_ID, BSSI_Required_Amount, BSSI_Certificate_Number, BSSI_Policy_Number, BSSI_Insurer, BSSI_Policy_Cost, BSSI_Commencement_Date, BSSI_Termination_Date, BSSI_Policy_Amount, NOTEINDX, DEX_ROW_ID FROM .B4640709 WHERE LOCNCODE = @LOCNCODE AND BSSI_Insurance_Type_ID = @BSSI_Insurance_Type_ID ORDER BY LOCNCODE ASC, BSSI_Insurance_Type_ID ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640709SS_2] TO [DYNGRP]
GO
