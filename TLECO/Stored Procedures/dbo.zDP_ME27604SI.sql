SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME27604SI] (@ME_Signature_ID char(15), @DSCRIPTN char(31), @ME_Signature_Line1 smallint, @ME_Signature_Line2 smallint, @ME_Signature1 smallint, @ME_Signature2 smallint, @ME_CB_Print_Without_Sign tinyint, @ME_CB_Print_Without_Sig2 tinyint, @ME_Ask_Password1 smallint, @ME_Ask_Password2 smallint, @ME_Filename char(255), @ME_Filename2 char(255), @ME_Scaling smallint, @ME_Scaling2 smallint, @ME_Signature_Threshhold1 numeric(19,5), @ME_Signature_Threshhold2 numeric(19,5), @ME_Signature_Password1 char(11), @ME_Signature_Password2 char(11), @ME_Signature_Queryfile1 tinyint, @ME_Signature_Queryfile2 tinyint, @ME_Sort_Checks tinyint, @ME_Password1_Set_By_Whom char(15), @ME_Password1_Set_Date datetime, @ME_Password2_Set_By_Whom char(15), @ME_Password2_Set_Date datetime, @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .ME27604 (ME_Signature_ID, DSCRIPTN, ME_Signature_Line1, ME_Signature_Line2, ME_Signature1, ME_Signature2, ME_CB_Print_Without_Sign, ME_CB_Print_Without_Sig2, ME_Ask_Password1, ME_Ask_Password2, ME_Filename, ME_Filename2, ME_Scaling, ME_Scaling2, ME_Signature_Threshhold1, ME_Signature_Threshhold2, ME_Signature_Password1, ME_Signature_Password2, ME_Signature_Queryfile1, ME_Signature_Queryfile2, ME_Sort_Checks, ME_Password1_Set_By_Whom, ME_Password1_Set_Date, ME_Password2_Set_By_Whom, ME_Password2_Set_Date, NOTEINDX) VALUES ( @ME_Signature_ID, @DSCRIPTN, @ME_Signature_Line1, @ME_Signature_Line2, @ME_Signature1, @ME_Signature2, @ME_CB_Print_Without_Sign, @ME_CB_Print_Without_Sig2, @ME_Ask_Password1, @ME_Ask_Password2, @ME_Filename, @ME_Filename2, @ME_Scaling, @ME_Scaling2, @ME_Signature_Threshhold1, @ME_Signature_Threshhold2, @ME_Signature_Password1, @ME_Signature_Password2, @ME_Signature_Queryfile1, @ME_Signature_Queryfile2, @ME_Sort_Checks, @ME_Password1_Set_By_Whom, @ME_Password1_Set_Date, @ME_Password2_Set_By_Whom, @ME_Password2_Set_Date, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME27604SI] TO [DYNGRP]
GO
