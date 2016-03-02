SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MSO_Registration_CCESS_1] (@SEQNUMBR int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  ME_Key_Array_1, ME_Key_Array_2, ME_Key_Array_3, ME_Key_Array_4, ME_Key_Array_5, ME_Key_Array_6, ME_Key_Array_7, ME_Key_Array_8, ME_Key_Array_9, ME_Key_Array_10, SEQNUMBR, ME_Verification_Source, ME_User_Count_Array_1, ME_User_Count_Array_2, ME_User_Count_Array_3, ME_User_Count_Array_4, ME_User_Count_Array_5, ME_User_Count_Array_6, ME_User_Count_Array_7, ME_User_Count_Array_8, ME_User_Count_Array_9, ME_User_Count_Array_10, ME_Major_Version, ME_Minor_Version, ME_Build_Version, ME_Key_Expiration_Date, DEX_ROW_ID FROM .MSO_Registration_CCE WHERE SEQNUMBR = @SEQNUMBR ORDER BY SEQNUMBR ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MSO_Registration_CCESS_1] TO [DYNGRP]
GO
