SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC30605SS_1] (@CONSTS smallint, @CONTNBR char(11), @SVC_Contract_Version smallint, @SOPNUMBE char(21), @SOPTYPE smallint) AS  set nocount on SELECT TOP 1  CONSTS, CONTNBR, SOPNUMBE, SOPTYPE, INVODATE, Invoiced_Amount, Amount_To_Invoice, Orig_Invoiced_Amount, Orig_Amount_To_Invoice, SVC_Contract_Version, svcReverseFlag, DEX_ROW_ID FROM .SVC30605 WHERE CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND SVC_Contract_Version = @SVC_Contract_Version AND SOPNUMBE = @SOPNUMBE AND SOPTYPE = @SOPTYPE ORDER BY CONSTS ASC, CONTNBR ASC, SVC_Contract_Version ASC, SOPNUMBE ASC, SOPTYPE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC30605SS_1] TO [DYNGRP]
GO
