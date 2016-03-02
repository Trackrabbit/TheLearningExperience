SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_UPR10202SS_2] (@USERID char(15), @PYRNTYPE smallint, @PYSTLTEX tinyint, @EMPLOYID char(15)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  USERID, PYRNTYPE, EMPLOYID, POSTED, PYSTLTEX, CHEKNMBR, CHEKDATE, CHEKBKID, PYADNMBR, ACTINDX, ADFDWHDG, ESTFEDWH, HWKVCACR, HWKSKACR, VACTMACC, SKTMACCR, VACTMLBL, SKTMLBTY, VACAVLBL, SIKTIMAV, GRWGPRN, NTWPYRN, FEDWGARR_1, FEDWGARR_2, FEDWGARR_3, FEDWGARR_4, FEDWGARR_5, FEDWGARR_6, FEDWGARR_7, FEDWGARR_8, Federal_Tips_Array_1, Federal_Tips_Array_2, Federal_Tips_Array_3, Federal_Tips_Array_4, Federal_Tips_Array_5, Federal_Tips_Array_6, Federal_Tips_Array_7, Federal_Tips_Array_8, FDWGPYRN, Federal_TipsPay_Run, ANFDWHDG, FDWDGPRN, FDTXTIPS, FICASSWP, FICASS_TipsPay_Run, FCASWPR, FICSTPTX, Uncollected_FICASS_TaxP, FICAMWGP, FICAMed_TipsPay_Run, FICAMWPR, FICMTPTX, Uncollected_FICAMed_TaxP, EICWPYRN, EPFICASS, EFICAMCR, Charged_Receipts, Reported_Receipts, Hours_Worked_For_Minimum, Min_Wage_Bal_Applicable, Reported_Tips, Charged_Tips, ALOCTIPS, TipType, POSTEDDT, GRWGFREIC, CALCCHKERRS, EFICASSWH, EFICASS_Tax_On_Tips, EFICAMWPR, EFICAMed_Tax_On_Tips, PayPeriodBeginDate, PayPeriodEndDate, DEX_ROW_ID FROM .UPR10202 WHERE USERID = @USERID AND PYRNTYPE = @PYRNTYPE AND PYSTLTEX = @PYSTLTEX AND EMPLOYID = @EMPLOYID ORDER BY USERID ASC, PYRNTYPE ASC, PYSTLTEX ASC, EMPLOYID ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10202SS_2] TO [DYNGRP]
GO
