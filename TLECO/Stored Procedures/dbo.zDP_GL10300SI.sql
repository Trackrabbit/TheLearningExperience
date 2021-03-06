SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL10300SI] (@JRNENTRY int, @RCTRXSEQ numeric(19,5), @SQNCLINE numeric(19,5), @SQNCLINE2 numeric(19,5), @TAXDTLID char(15), @DOCDATE datetime, @Tax_Date datetime, @PSTGDATE datetime, @TAXAMNT numeric(19,5), @ORTAXAMT numeric(19,5), @Taxable_Amount numeric(19,5), @Originating_Taxable_Amt numeric(19,5), @DOCAMNT numeric(19,5), @ORDOCAMT numeric(19,5), @TXDTLPCT numeric(19,5), @TXDTLAMT numeric(19,5), @TXDTLTYP smallint, @ACTINDX int, @CURRNIDX smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .GL10300 (JRNENTRY, RCTRXSEQ, SQNCLINE, SQNCLINE2, TAXDTLID, DOCDATE, Tax_Date, PSTGDATE, TAXAMNT, ORTAXAMT, Taxable_Amount, Originating_Taxable_Amt, DOCAMNT, ORDOCAMT, TXDTLPCT, TXDTLAMT, TXDTLTYP, ACTINDX, CURRNIDX) VALUES ( @JRNENTRY, @RCTRXSEQ, @SQNCLINE, @SQNCLINE2, @TAXDTLID, @DOCDATE, @Tax_Date, @PSTGDATE, @TAXAMNT, @ORTAXAMT, @Taxable_Amount, @Originating_Taxable_Amt, @DOCAMNT, @ORDOCAMT, @TXDTLPCT, @TXDTLAMT, @TXDTLTYP, @ACTINDX, @CURRNIDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL10300SI] TO [DYNGRP]
GO
