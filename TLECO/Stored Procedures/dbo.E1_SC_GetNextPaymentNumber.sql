SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[E1_SC_GetNextPaymentNumber]
	@IO_PaymentNumber char(21) OUTPUT
AS
	update PM40100 set PMNPYNBR = dbo.E1_fnIncrementDecrement(PMNPYNBR), @IO_PaymentNumber = PMNPYNBR
	where UNIQKEY = 1
GO
GRANT EXECUTE ON  [dbo].[E1_SC_GetNextPaymentNumber] TO [DYNGRP]
GO
