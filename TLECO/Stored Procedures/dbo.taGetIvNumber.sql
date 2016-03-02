SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taGetIvNumber]  @I_tIVDOCTYP tinyint = NULL, @I_tInc_Dec tinyint = NULL, @O_vIvNumber varchar(21) = NULL output, @O_iErrorState int = NULL output    with encryption as  set transaction isolation level read uncommitted set nocount on  declare   @iError int,  @iStatus int,  @vIvNumber varchar(21),  @DocExists tinyint,   @Loop int  select @O_vIvNumber = '',  @O_iErrorState  = 0,  @Loop = 0,  @DocExists = 1  if ( @I_tInc_Dec is null or  @I_tIVDOCTYP is null) begin  select @O_iErrorState = 65    return (@O_iErrorState) end  select @O_vIvNumber =  case  when (@I_tIVDOCTYP = 1)   then NXADJDOC  when (@I_tIVDOCTYP = 2)   then NXTVDNUM  else TXTRDNUM     end  from IV40100 WITH (TABLOCKX HOLDLOCK) where SETUPKEY = 1 if (@@rowcount <> 1) begin  select @O_iErrorState = 243   end  if @O_iErrorState = 0 begin  select @vIvNumber = @O_vIvNumber   while (@Loop < 1000)  begin  select @Loop = @Loop + 1   exec @iStatus = ivNumber_Inc_Dec  @I_tInc_Dec,  @vIvNumber output,  @O_iErrorState output  select @iError = @@error  if (@iError <> 0 or @iStatus <> 0 or @O_iErrorState <> 0)  begin  select @O_iErrorState = 5521    select @DocExists = 0  break  end   if  exists(select 1 from IV10000 (nolock) where IVDOCTYP = @I_tIVDOCTYP and IVDOCNBR = @vIvNumber) or  exists(select 1 from IV30200 (nolock) where IVDOCTYP = @I_tIVDOCTYP and DOCNUMBR = @vIvNumber)  begin  select @DocExists = 1  end  else  begin  if  exists(select 1 from IV10000 (nolock) where IVDOCTYP = @I_tIVDOCTYP and IVDOCNBR = @O_vIvNumber) or  exists(select 1 from IV30200 (nolock) where IVDOCTYP = @I_tIVDOCTYP and DOCNUMBR = @O_vIvNumber)  begin  select @O_vIvNumber = @vIvNumber  end  else  begin  select @DocExists = 0  break  end  end  end   if (@DocExists = 1)  begin  select @O_iErrorState = 5522    end   if (@O_iErrorState = 0)  begin  if (@I_tIVDOCTYP = 1)    update IV40100 set NXADJDOC = @vIvNumber where SETUPKEY = 1  else  if (@I_tIVDOCTYP = 2)   update IV40100 set NXTVDNUM = @vIvNumber where SETUPKEY = 1  else  if (@I_tIVDOCTYP = 3)   update IV40100 set TXTRDNUM = @vIvNumber where SETUPKEY = 1  if (@@error <> 0)  begin  select @O_iErrorState = 5523    end  end end  if @O_iErrorState <> 0 or @iStatus <> 0 begin  select @O_vIvNumber = '' end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taGetIvNumber] TO [DYNGRP]
GO
