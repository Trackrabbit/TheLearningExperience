SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP10360SI] (@POPRCTNM char(17), @RCPTLNNM int, @TAXDTLID char(15), @ACTINDX int, @BKOUTTAX tinyint, @TAXAMNT numeric(19,5), @ORTAXAMT numeric(19,5), @TAXPURCH numeric(19,5), @ORGTXPCH numeric(19,5), @TOTPURCH numeric(19,5), @ORTOTPUR numeric(19,5), @FRTTXAMT numeric(19,5), @ORFRTTAX numeric(19,5), @MSCTXAMT numeric(19,5), @ORMSCTAX numeric(19,5), @TXDTOTTX numeric(19,5), @OTTAXPON numeric(19,5), @TRXSORCE char(13), @POP_Tax_Note_ID_Array_1 numeric(19,5), @POP_Tax_Note_ID_Array_2 numeric(19,5), @CURRNIDX smallint, @DELETE1 tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .POP10360 (POPRCTNM, RCPTLNNM, TAXDTLID, ACTINDX, BKOUTTAX, TAXAMNT, ORTAXAMT, TAXPURCH, ORGTXPCH, TOTPURCH, ORTOTPUR, FRTTXAMT, ORFRTTAX, MSCTXAMT, ORMSCTAX, TXDTOTTX, OTTAXPON, TRXSORCE, POP_Tax_Note_ID_Array_1, POP_Tax_Note_ID_Array_2, CURRNIDX, DELETE1) VALUES ( @POPRCTNM, @RCPTLNNM, @TAXDTLID, @ACTINDX, @BKOUTTAX, @TAXAMNT, @ORTAXAMT, @TAXPURCH, @ORGTXPCH, @TOTPURCH, @ORTOTPUR, @FRTTXAMT, @ORFRTTAX, @MSCTXAMT, @ORMSCTAX, @TXDTOTTX, @OTTAXPON, @TRXSORCE, @POP_Tax_Note_ID_Array_1, @POP_Tax_Note_ID_Array_2, @CURRNIDX, @DELETE1) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP10360SI] TO [DYNGRP]
GO