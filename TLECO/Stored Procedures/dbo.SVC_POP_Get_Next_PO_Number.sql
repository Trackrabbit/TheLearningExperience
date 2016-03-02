SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_POP_Get_Next_PO_Number](@Next_PO_Number char(17) output) as declare  @PO_num char(17),  @PO_line numeric(19,5),  @Old_PO char(17),  @New_PO char(17), @O_iErrorState int,  @Count integer  BEGIN TRANSACTION  select @Count = 1   select @Old_PO = PONUMBER from POP40100 with (HOLDLOCK)  select @New_PO = @Old_PO  if @@error <> 0 goto baderror   exec ivNumber_Inc_Dec 1,  @New_PO output,  @O_iErrorState output  update POP40100 set PONUMBER = @New_PO   while  @Count < 1000  BEGIN  if exists(select * from POP10100 where PONUMBER = @Old_PO) or   exists(select * from POP30100 where PONUMBER = @Old_PO)  BEGIN   select @Count = @Count + 1  select @Old_PO = @New_PO  exec ivNumber_Inc_Dec 1,  @New_PO output,  @O_iErrorState output  update POP40100 set PONUMBER = @New_PO   CONTINUE  END  else  BREAK  END select @Next_PO_Number = @Old_PO if @@error <> 0 goto baderror COMMIT TRANSACTION return baderror:  rollback transaction  return @@error    
GO
GRANT EXECUTE ON  [dbo].[SVC_POP_Get_Next_PO_Number] TO [DYNGRP]
GO
