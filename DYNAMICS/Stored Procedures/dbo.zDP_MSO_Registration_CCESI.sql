SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MSO_Registration_CCESI] (@ME_Key_Array_1 char(21), @ME_Key_Array_2 char(21), @ME_Key_Array_3 char(21), @ME_Key_Array_4 char(21), @ME_Key_Array_5 char(21), @ME_Key_Array_6 char(21), @ME_Key_Array_7 char(21), @ME_Key_Array_8 char(21), @ME_Key_Array_9 char(21), @ME_Key_Array_10 char(21), @SEQNUMBR int, @ME_Verification_Source smallint, @ME_User_Count_Array_1 smallint, @ME_User_Count_Array_2 smallint, @ME_User_Count_Array_3 smallint, @ME_User_Count_Array_4 smallint, @ME_User_Count_Array_5 smallint, @ME_User_Count_Array_6 smallint, @ME_User_Count_Array_7 smallint, @ME_User_Count_Array_8 smallint, @ME_User_Count_Array_9 smallint, @ME_User_Count_Array_10 smallint, @ME_Major_Version smallint, @ME_Minor_Version smallint, @ME_Build_Version smallint, @ME_Key_Expiration_Date datetime, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .MSO_Registration_CCE (ME_Key_Array_1, ME_Key_Array_2, ME_Key_Array_3, ME_Key_Array_4, ME_Key_Array_5, ME_Key_Array_6, ME_Key_Array_7, ME_Key_Array_8, ME_Key_Array_9, ME_Key_Array_10, SEQNUMBR, ME_Verification_Source, ME_User_Count_Array_1, ME_User_Count_Array_2, ME_User_Count_Array_3, ME_User_Count_Array_4, ME_User_Count_Array_5, ME_User_Count_Array_6, ME_User_Count_Array_7, ME_User_Count_Array_8, ME_User_Count_Array_9, ME_User_Count_Array_10, ME_Major_Version, ME_Minor_Version, ME_Build_Version, ME_Key_Expiration_Date) VALUES ( @ME_Key_Array_1, @ME_Key_Array_2, @ME_Key_Array_3, @ME_Key_Array_4, @ME_Key_Array_5, @ME_Key_Array_6, @ME_Key_Array_7, @ME_Key_Array_8, @ME_Key_Array_9, @ME_Key_Array_10, @SEQNUMBR, @ME_Verification_Source, @ME_User_Count_Array_1, @ME_User_Count_Array_2, @ME_User_Count_Array_3, @ME_User_Count_Array_4, @ME_User_Count_Array_5, @ME_User_Count_Array_6, @ME_User_Count_Array_7, @ME_User_Count_Array_8, @ME_User_Count_Array_9, @ME_User_Count_Array_10, @ME_Major_Version, @ME_Minor_Version, @ME_Build_Version, @ME_Key_Expiration_Date) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MSO_Registration_CCESI] TO [DYNGRP]
GO