SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_New_Transfer_Number]  (@newcallnbr varchar(15) OUTPUT) as declare @template char(15),  @New char(15),  @O_iErrorState int   select @template = '000000000000000' BEGIN TRANSACTION   if (select NXTSPNUM from IV40100)> ''   begin  select @New = NXTSPNUM, @newcallnbr = NXTSPNUM from IV40100  exec ivNumber_Inc_Dec 1, @New output, @O_iErrorState output  if @O_iErrorState <> 0 goto badentry  update IV40100 set NXTSPNUM = @New  end else  begin   select @newcallnbr=ORDDOCID from SVC00999 with (HOLDLOCK)  update SVC00999   set SVC00999.ORDDOCID = Convert(varchar(15),(CONVERT(integer,ORDDOCID) + 1))  where SEQUENCE1 = 1  if @@error <> 0 goto badentry  select @newcallnbr = stuff(@template,15 - LEN(@newcallnbr)  + 1,LEN(@newcallnbr),rtrim(@newcallnbr))  end COMMIT TRANSACTION return(0) badentry:  rollback transaction return(99)    
GO
GRANT EXECUTE ON  [dbo].[SVC_New_Transfer_Number] TO [DYNGRP]
GO
