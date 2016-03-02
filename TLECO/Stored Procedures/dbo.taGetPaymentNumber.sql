SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taGetPaymentNumber]  @I_vDOCTYPE tinyint = NULL, @I_vInc_Dec tinyint = NULL, @O_vDOCNumber varchar(21) = NULL output, @O_iErrorState int = NULL output  with encryption as  set transaction isolation level read uncommitted set nocount on  declare @Loop int,  @iError int,  @iStatus int,  @DOCNumber varchar(21),  @DocExists tinyint   select @O_vDOCNumber  = '',  @O_iErrorState  = 0,  @iStatus = 0,  @Loop = 0,  @DocExists = 1  if @I_vDOCTYPE is NULL or  @I_vInc_Dec is NULL begin  select @O_iErrorState = 44    return (@O_iErrorState) end  select @O_vDOCNumber = DOCNUMBR from RM40401 WITH (TABLOCKX HOLDLOCK) where RMDTYPAL = @I_vDOCTYPE if (@@rowcount <> 1) begin  select @O_iErrorState = 124    return (@O_iErrorState) end  select @DOCNumber = @O_vDOCNumber  while (@Loop < 1000) begin  select @Loop = @Loop + 1  select @DocExists = 0   exec @iStatus = ivNumber_Inc_Dec  @I_vInc_Dec,  @DOCNumber output,  @O_iErrorState output  select @iError = @@error  if (@iError <> 0 or @iStatus <> 0 or @O_iErrorState <> 0 or @DOCNumber = '' or @DOCNumber is null)  begin  select @O_iErrorState = 122    select @DocExists = 0  break  end   if  (exists (select 1 from RM00401 (nolock) where RMDTYPAL = @I_vDOCTYPE and DOCNUMBR = @DOCNumber))  begin  select @DocExists = 1  end  else  begin  if (exists (select 1 from RM00401 (nolock) where RMDTYPAL = @I_vDOCTYPE and DOCNUMBR = @O_vDOCNumber))  begin  select @O_vDOCNumber = @DOCNumber  end  else  begin  select @DocExists = 0  break  end  end end  if (@DocExists = 1) begin  select @O_iErrorState = 3413   end  if (@O_iErrorState = 0) begin  update RM40401 set DOCNUMBR= @DOCNumber where RMDTYPAL = @I_vDOCTYPE  if (@@error <> 0)  begin  select @O_iErrorState = 3414    end end else begin  select @O_vDOCNumber = '' end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taGetPaymentNumber] TO [DYNGRP]
GO
