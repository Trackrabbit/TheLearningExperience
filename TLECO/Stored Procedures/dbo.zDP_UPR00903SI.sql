SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00903SI] (@EMPLOYID char(15), @PERIODID smallint, @YEAR1 smallint, @Reported_Tips numeric(19,5), @Charged_Tips numeric(19,5), @FDTXTIPS numeric(19,5), @FICASS_Tips_Fiscal numeric(19,5), @FICSTPTX numeric(19,5), @Uncollected_FICASS_Tax_F numeric(19,5), @FICAMed_Tips_Fiscal numeric(19,5), @FICMTPTX numeric(19,5), @Uncollect_FICAMed_Tx_Fis numeric(19,5), @Reported_Receipts numeric(19,5), @Charged_Receipts numeric(19,5), @Allocated_Tips_Fiscal numeric(19,5), @Federal_Tips_Fiscal numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPR00903 (EMPLOYID, PERIODID, YEAR1, Reported_Tips, Charged_Tips, FDTXTIPS, FICASS_Tips_Fiscal, FICSTPTX, Uncollected_FICASS_Tax_F, FICAMed_Tips_Fiscal, FICMTPTX, Uncollect_FICAMed_Tx_Fis, Reported_Receipts, Charged_Receipts, Allocated_Tips_Fiscal, Federal_Tips_Fiscal) VALUES ( @EMPLOYID, @PERIODID, @YEAR1, @Reported_Tips, @Charged_Tips, @FDTXTIPS, @FICASS_Tips_Fiscal, @FICSTPTX, @Uncollected_FICASS_Tax_F, @FICAMed_Tips_Fiscal, @FICMTPTX, @Uncollect_FICAMed_Tx_Fis, @Reported_Receipts, @Charged_Receipts, @Allocated_Tips_Fiscal, @Federal_Tips_Fiscal) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00903SI] TO [DYNGRP]
GO
