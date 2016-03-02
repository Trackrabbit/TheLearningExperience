SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM20401UN_4] (@BS int, @MARKED tinyint, @MKDBYUSR char(15), @MARKED_RS tinyint, @MKDBYUSR_RS char(15), @MARKED_RE tinyint, @MKDBYUSR_RE char(15)) AS  set nocount on IF @MARKED_RS IS NULL BEGIN SELECT TOP 25  SCHEDULE_NUMBER, Schedule_Payment_Number, VCHRNMBR, PAYMENT_AMOUNT, VENDORID, INTEREST_AMOUNT, PRINCIPAL_AMOUNT, PRINCIPAL_BALANCE, DOCDATE, DUEDATE, Status, MARKED, MKDBYUSR, DEX_ROW_ID FROM .PM20401 WHERE ( MARKED = @MARKED AND MKDBYUSR > @MKDBYUSR OR MARKED > @MARKED ) ORDER BY MARKED ASC, MKDBYUSR ASC, DEX_ROW_ID ASC END ELSE IF @MARKED_RS = @MARKED_RE BEGIN SELECT TOP 25  SCHEDULE_NUMBER, Schedule_Payment_Number, VCHRNMBR, PAYMENT_AMOUNT, VENDORID, INTEREST_AMOUNT, PRINCIPAL_AMOUNT, PRINCIPAL_BALANCE, DOCDATE, DUEDATE, Status, MARKED, MKDBYUSR, DEX_ROW_ID FROM .PM20401 WHERE MARKED = @MARKED_RS AND MKDBYUSR BETWEEN @MKDBYUSR_RS AND @MKDBYUSR_RE AND ( MARKED = @MARKED AND MKDBYUSR > @MKDBYUSR OR MARKED > @MARKED ) ORDER BY MARKED ASC, MKDBYUSR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SCHEDULE_NUMBER, Schedule_Payment_Number, VCHRNMBR, PAYMENT_AMOUNT, VENDORID, INTEREST_AMOUNT, PRINCIPAL_AMOUNT, PRINCIPAL_BALANCE, DOCDATE, DUEDATE, Status, MARKED, MKDBYUSR, DEX_ROW_ID FROM .PM20401 WHERE MARKED BETWEEN @MARKED_RS AND @MARKED_RE AND MKDBYUSR BETWEEN @MKDBYUSR_RS AND @MKDBYUSR_RE AND ( MARKED = @MARKED AND MKDBYUSR > @MKDBYUSR OR MARKED > @MARKED ) ORDER BY MARKED ASC, MKDBYUSR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM20401UN_4] TO [DYNGRP]
GO