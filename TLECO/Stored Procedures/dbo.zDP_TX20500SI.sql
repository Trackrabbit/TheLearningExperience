SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TX20500SI] (@DOCNUMBR char(21), @DOCTYPE smallint, @APFRDCNM char(21), @APFRDCTY smallint, @SERIES smallint, @TaxRebateType smallint, @SEQNUMBR int, @TAXDTLID char(15), @TAXAMNT numeric(19,5), @ORTAXAMT numeric(19,5), @Taxable_Amount numeric(19,5), @Originating_Taxable_Amt numeric(19,5), @DOCAMNT numeric(19,5), @ORDOCAMT numeric(19,5), @ACTINDX int, @ECTRX tinyint, @TRXSORCE char(13), @POSTED tinyint, @CustomerVendor_ID char(15), @DOCDATE datetime, @Tax_Date datetime, @PSTGDATE datetime, @CURRNIDX smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .TX20500 (DOCNUMBR, DOCTYPE, APFRDCNM, APFRDCTY, SERIES, TaxRebateType, SEQNUMBR, TAXDTLID, TAXAMNT, ORTAXAMT, Taxable_Amount, Originating_Taxable_Amt, DOCAMNT, ORDOCAMT, ACTINDX, ECTRX, TRXSORCE, POSTED, CustomerVendor_ID, DOCDATE, Tax_Date, PSTGDATE, CURRNIDX) VALUES ( @DOCNUMBR, @DOCTYPE, @APFRDCNM, @APFRDCTY, @SERIES, @TaxRebateType, @SEQNUMBR, @TAXDTLID, @TAXAMNT, @ORTAXAMT, @Taxable_Amount, @Originating_Taxable_Amt, @DOCAMNT, @ORDOCAMT, @ACTINDX, @ECTRX, @TRXSORCE, @POSTED, @CustomerVendor_ID, @DOCDATE, @Tax_Date, @PSTGDATE, @CURRNIDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TX20500SI] TO [DYNGRP]
GO
