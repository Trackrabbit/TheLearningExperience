SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME27604SS_1] (@ME_Signature_ID char(15)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  ME_Signature_ID, DSCRIPTN, ME_Signature_Line1, ME_Signature_Line2, ME_Signature1, ME_Signature2, ME_CB_Print_Without_Sign, ME_CB_Print_Without_Sig2, ME_Ask_Password1, ME_Ask_Password2, ME_Filename, ME_Filename2, ME_Scaling, ME_Scaling2, ME_Signature_Threshhold1, ME_Signature_Threshhold2, ME_Signature_Password1, ME_Signature_Password2, ME_Signature_Queryfile1, ME_Signature_Queryfile2, ME_Sort_Checks, ME_Password1_Set_By_Whom, ME_Password1_Set_Date, ME_Password2_Set_By_Whom, ME_Password2_Set_Date, NOTEINDX, DEX_ROW_ID FROM .ME27604 WHERE ME_Signature_ID = @ME_Signature_ID ORDER BY ME_Signature_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME27604SS_1] TO [DYNGRP]
GO
