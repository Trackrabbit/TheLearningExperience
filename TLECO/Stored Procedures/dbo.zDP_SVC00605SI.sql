SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00605SI] (@CONSTS smallint, @CONTNBR char(11), @SOPNUMBE char(21), @SOPTYPE smallint, @INVODATE datetime, @Invoiced_Amount numeric(19,5), @Amount_To_Invoice numeric(19,5), @Orig_Invoiced_Amount numeric(19,5), @Orig_Amount_To_Invoice numeric(19,5), @svcReverseFlag tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00605 (CONSTS, CONTNBR, SOPNUMBE, SOPTYPE, INVODATE, Invoiced_Amount, Amount_To_Invoice, Orig_Invoiced_Amount, Orig_Amount_To_Invoice, svcReverseFlag) VALUES ( @CONSTS, @CONTNBR, @SOPNUMBE, @SOPTYPE, @INVODATE, @Invoiced_Amount, @Amount_To_Invoice, @Orig_Invoiced_Amount, @Orig_Amount_To_Invoice, @svcReverseFlag) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00605SI] TO [DYNGRP]
GO
