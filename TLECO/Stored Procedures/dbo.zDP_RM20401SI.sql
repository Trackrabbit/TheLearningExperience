SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM20401SI] (@SCHEDULE_NUMBER char(21), @DOCNUMBR char(21), @Schedule_Payment_Number smallint, @CUSTNMBR char(15), @PAYMENT_AMOUNT numeric(19,5), @INTEREST_AMOUNT numeric(19,5), @PRINCIPAL_AMOUNT numeric(19,5), @PRINCIPAL_BALANCE numeric(19,5), @DUEDATE datetime, @DOCDATE datetime, @Status smallint, @MARKED tinyint, @MKDBYUSR char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .RM20401 (SCHEDULE_NUMBER, DOCNUMBR, Schedule_Payment_Number, CUSTNMBR, PAYMENT_AMOUNT, INTEREST_AMOUNT, PRINCIPAL_AMOUNT, PRINCIPAL_BALANCE, DUEDATE, DOCDATE, Status, MARKED, MKDBYUSR) VALUES ( @SCHEDULE_NUMBER, @DOCNUMBR, @Schedule_Payment_Number, @CUSTNMBR, @PAYMENT_AMOUNT, @INTEREST_AMOUNT, @PRINCIPAL_AMOUNT, @PRINCIPAL_BALANCE, @DUEDATE, @DOCDATE, @Status, @MARKED, @MKDBYUSR) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM20401SI] TO [DYNGRP]
GO
