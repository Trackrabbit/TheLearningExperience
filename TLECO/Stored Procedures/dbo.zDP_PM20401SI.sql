SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM20401SI] (@SCHEDULE_NUMBER char(21), @Schedule_Payment_Number smallint, @VCHRNMBR char(21), @PAYMENT_AMOUNT numeric(19,5), @VENDORID char(15), @INTEREST_AMOUNT numeric(19,5), @PRINCIPAL_AMOUNT numeric(19,5), @PRINCIPAL_BALANCE numeric(19,5), @DOCDATE datetime, @DUEDATE datetime, @Status smallint, @MARKED tinyint, @MKDBYUSR char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PM20401 (SCHEDULE_NUMBER, Schedule_Payment_Number, VCHRNMBR, PAYMENT_AMOUNT, VENDORID, INTEREST_AMOUNT, PRINCIPAL_AMOUNT, PRINCIPAL_BALANCE, DOCDATE, DUEDATE, Status, MARKED, MKDBYUSR) VALUES ( @SCHEDULE_NUMBER, @Schedule_Payment_Number, @VCHRNMBR, @PAYMENT_AMOUNT, @VENDORID, @INTEREST_AMOUNT, @PRINCIPAL_AMOUNT, @PRINCIPAL_BALANCE, @DOCDATE, @DUEDATE, @Status, @MARKED, @MKDBYUSR) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM20401SI] TO [DYNGRP]
GO
