SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00902SI] (@EMPLOYID char(15), @YEAR1 smallint, @PERIODID smallint, @LPCHKNUM char(21), @LSTPCKDT datetime, @LPCHKAMT numeric(19,5), @Gross_Wages_Fiscal numeric(19,5), @Federal_Withholding_Fisc numeric(19,5), @FICASS_Wages_Fiscal numeric(19,5), @FICAMED_Wages_Fiscal numeric(19,5), @FICASS_Withholding_Fisca numeric(19,5), @FICAMED_Withholding_Fisc numeric(19,5), @Suta_Wages_Fiscal numeric(19,5), @Futa_Wages_Fiscal numeric(19,5), @Net_Wages_Fiscal numeric(19,5), @Federal_Wages_Fiscal numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPR00902 (EMPLOYID, YEAR1, PERIODID, LPCHKNUM, LSTPCKDT, LPCHKAMT, Gross_Wages_Fiscal, Federal_Withholding_Fisc, FICASS_Wages_Fiscal, FICAMED_Wages_Fiscal, FICASS_Withholding_Fisca, FICAMED_Withholding_Fisc, Suta_Wages_Fiscal, Futa_Wages_Fiscal, Net_Wages_Fiscal, Federal_Wages_Fiscal) VALUES ( @EMPLOYID, @YEAR1, @PERIODID, @LPCHKNUM, @LSTPCKDT, @LPCHKAMT, @Gross_Wages_Fiscal, @Federal_Withholding_Fisc, @FICASS_Wages_Fiscal, @FICAMED_Wages_Fiscal, @FICASS_Withholding_Fisca, @FICAMED_Withholding_Fisc, @Suta_Wages_Fiscal, @Futa_Wages_Fiscal, @Net_Wages_Fiscal, @Federal_Wages_Fiscal) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00902SI] TO [DYNGRP]
GO
