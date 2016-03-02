SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[E1_SC_GetNextBankDepositNumber]
	@I_vCheckBookId char(15),
	@IO_DepositNumber char(21) = NULL output
as
	set transaction isolation level read uncommitted 
	set nocount on  
declare 	
	@Loop int
select 
	@IO_DepositNumber = '',
	@Loop = 0
while @Loop < 1000
begin
	update CM00100
		set Next_Deposit_Number = Convert(varchar(21),(CONVERT(bigint,Next_Deposit_Number) + 1)), @IO_DepositNumber = Next_Deposit_Number
		where CHEKBKID = @I_vCheckBookId
	if not exists(select 1 from CM20300 where depositnumber = @IO_DepositNumber and CHEKBKID = @I_vCheckBookId)
		select @Loop = 1000
	else
		select @Loop = @Loop + 1, @IO_DepositNumber = 'err'
end
return 0
GO
GRANT EXECUTE ON  [dbo].[E1_SC_GetNextBankDepositNumber] TO [DYNGRP]
GO
