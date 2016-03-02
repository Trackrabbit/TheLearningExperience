SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create Procedure [dbo].[SVC_GetContractLastBillDate] (  @CONSTS smallint,  @CONTNBR char(11),  @BillDate datetime OUTPUT ) As set nocount on  select @BillDate = MAX(INVODATE) FROM SVC00603 WHERE (CONSTS = @CONSTS) AND (CONTNBR = @CONTNBR)  select @BillDate = IsNull(@BillDate,'01/01/1900 00:00:00') return     
GO
GRANT EXECUTE ON  [dbo].[SVC_GetContractLastBillDate] TO [DYNGRP]
GO
