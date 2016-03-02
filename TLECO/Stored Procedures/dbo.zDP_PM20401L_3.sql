SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM20401L_3] (@VENDORID_RS char(15), @SCHEDULE_NUMBER_RS char(21), @VENDORID_RE char(15), @SCHEDULE_NUMBER_RE char(21)) AS  set nocount on IF @VENDORID_RS IS NULL BEGIN SELECT TOP 25  SCHEDULE_NUMBER, Schedule_Payment_Number, VCHRNMBR, PAYMENT_AMOUNT, VENDORID, INTEREST_AMOUNT, PRINCIPAL_AMOUNT, PRINCIPAL_BALANCE, DOCDATE, DUEDATE, Status, MARKED, MKDBYUSR, DEX_ROW_ID FROM .PM20401 ORDER BY VENDORID DESC, SCHEDULE_NUMBER DESC, DEX_ROW_ID DESC END ELSE IF @VENDORID_RS = @VENDORID_RE BEGIN SELECT TOP 25  SCHEDULE_NUMBER, Schedule_Payment_Number, VCHRNMBR, PAYMENT_AMOUNT, VENDORID, INTEREST_AMOUNT, PRINCIPAL_AMOUNT, PRINCIPAL_BALANCE, DOCDATE, DUEDATE, Status, MARKED, MKDBYUSR, DEX_ROW_ID FROM .PM20401 WHERE VENDORID = @VENDORID_RS AND SCHEDULE_NUMBER BETWEEN @SCHEDULE_NUMBER_RS AND @SCHEDULE_NUMBER_RE ORDER BY VENDORID DESC, SCHEDULE_NUMBER DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  SCHEDULE_NUMBER, Schedule_Payment_Number, VCHRNMBR, PAYMENT_AMOUNT, VENDORID, INTEREST_AMOUNT, PRINCIPAL_AMOUNT, PRINCIPAL_BALANCE, DOCDATE, DUEDATE, Status, MARKED, MKDBYUSR, DEX_ROW_ID FROM .PM20401 WHERE VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND SCHEDULE_NUMBER BETWEEN @SCHEDULE_NUMBER_RS AND @SCHEDULE_NUMBER_RE ORDER BY VENDORID DESC, SCHEDULE_NUMBER DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM20401L_3] TO [DYNGRP]
GO