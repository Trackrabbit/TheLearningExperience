SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC5004SI] (@CMPANYID smallint, @Xfr_Record_Number numeric(19,5), @NC_Src_Account_Index int, @NC_Dest_IC_Account_Index int, @NC_Source_Company_ID smallint, @CURNCYID char(15), @CHEKBKID char(15), @ACTINDX int, @DistRef char(31), @NC_Xfr_Record_Number numeric(19,5), @NC_Currency_ID char(15), @NC_Checkbook_ID char(15), @NC_Account_Index int, @NC_Distribution_Referenc char(31), @FUNCTAMT numeric(19,5), @ORIGAMT numeric(19,5), @CMXFTDATE datetime, @NC_FunctionalOriginating smallint, @VOIDED tinyint, @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .NCIC5004 (CMPANYID, Xfr_Record_Number, NC_Src_Account_Index, NC_Dest_IC_Account_Index, NC_Source_Company_ID, CURNCYID, CHEKBKID, ACTINDX, DistRef, NC_Xfr_Record_Number, NC_Currency_ID, NC_Checkbook_ID, NC_Account_Index, NC_Distribution_Referenc, FUNCTAMT, ORIGAMT, CMXFTDATE, NC_FunctionalOriginating, VOIDED) VALUES ( @CMPANYID, @Xfr_Record_Number, @NC_Src_Account_Index, @NC_Dest_IC_Account_Index, @NC_Source_Company_ID, @CURNCYID, @CHEKBKID, @ACTINDX, @DistRef, @NC_Xfr_Record_Number, @NC_Currency_ID, @NC_Checkbook_ID, @NC_Account_Index, @NC_Distribution_Referenc, @FUNCTAMT, @ORIGAMT, @CMXFTDATE, @NC_FunctionalOriginating, @VOIDED) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5004SI] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5004SI] TO [public]
GO
