SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[hrGetNextAttendanceTrx] @NextAttendTrx INT OUTPUT, @O_iErrorState INT OUTPUT AS  declare  @iTrxSetup int,  @iTrxNext int,  @Error_State int select @iTrxSetup = TRX_I from TAST0130   select @iTrxNext = TRX_I from TATX0130 where TRXSORCE = 'ATTENDANCE' and TRX_I = @iTrxSetup  if @iTrxNext <> NULL begin  if (@iTrxNext + 1) = 100000000  begin  select @iTrxSetup = 1  end  else  select @iTrxSetup = @iTrxNext + 1 end  insert into TATX0130 values('ATTENDANCE',@iTrxSetup)   select @iTrxNext = @iTrxSetup + 1 select @iTrxNext = TRX_I from TATX0130 where TRXSORCE = 'ATTENDANCE' and TRX_I = @iTrxNext while @iTrxNext <> NULL Begin  if (@iTrxNext + 1) = 100000000  begin  select @iTrxNext = 1  end  else  select @iTrxNext = @iTrxNext + 1  select @iTrxNext = TRX_I + 1 from TATX0130 where TRXSORCE = 'ATTENDANCE' and TRX_I = @iTrxNext end   update TAST0130 set TRX_I = @iTrxNext from TAST0130   select @NextAttendTrx = @iTrxSetup return    
GO
GRANT EXECUTE ON  [dbo].[hrGetNextAttendanceTrx] TO [DYNGRP]
GO
