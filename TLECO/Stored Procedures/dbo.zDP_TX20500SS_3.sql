SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TX20500SS_3] (@APFRDCNM char(21), @APFRDCTY smallint, @SERIES smallint, @TaxRebateType smallint, @TAXDTLID char(15)) AS  set nocount on SELECT TOP 1  DOCNUMBR, DOCTYPE, APFRDCNM, APFRDCTY, SERIES, TaxRebateType, SEQNUMBR, TAXDTLID, TAXAMNT, ORTAXAMT, Taxable_Amount, Originating_Taxable_Amt, DOCAMNT, ORDOCAMT, ACTINDX, ECTRX, TRXSORCE, POSTED, CustomerVendor_ID, DOCDATE, Tax_Date, PSTGDATE, CURRNIDX, DEX_ROW_ID FROM .TX20500 WHERE APFRDCNM = @APFRDCNM AND APFRDCTY = @APFRDCTY AND SERIES = @SERIES AND TaxRebateType = @TaxRebateType AND TAXDTLID = @TAXDTLID ORDER BY APFRDCNM ASC, APFRDCTY ASC, SERIES ASC, TaxRebateType ASC, TAXDTLID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TX20500SS_3] TO [DYNGRP]
GO
