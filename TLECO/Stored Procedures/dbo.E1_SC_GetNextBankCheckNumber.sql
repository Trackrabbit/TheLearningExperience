SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[E1_SC_GetNextBankCheckNumber]
	@I_vCheckBookId char(15),
	@IO_CheckNumber char(21) = NULL output
as
	set transaction isolation level read uncommitted 
	set nocount on  

update CM00100
	set NXTCHNUM = Convert(varchar(21),(CONVERT(bigint,NXTCHNUM) + 1)), @IO_CheckNumber = NXTCHNUM
	where CHEKBKID = @I_vCheckBookId
GO
GRANT EXECUTE ON  [dbo].[E1_SC_GetNextBankCheckNumber] TO [DYNGRP]
GO
