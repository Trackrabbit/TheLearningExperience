SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM20401SS_3] (@VENDORID char(15), @SCHEDULE_NUMBER char(21)) AS  set nocount on SELECT TOP 1  SCHEDULE_NUMBER, Schedule_Payment_Number, VCHRNMBR, PAYMENT_AMOUNT, VENDORID, INTEREST_AMOUNT, PRINCIPAL_AMOUNT, PRINCIPAL_BALANCE, DOCDATE, DUEDATE, Status, MARKED, MKDBYUSR, DEX_ROW_ID FROM .PM20401 WHERE VENDORID = @VENDORID AND SCHEDULE_NUMBER = @SCHEDULE_NUMBER ORDER BY VENDORID ASC, SCHEDULE_NUMBER ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM20401SS_3] TO [DYNGRP]
GO
