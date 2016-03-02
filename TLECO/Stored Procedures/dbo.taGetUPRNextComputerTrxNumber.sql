SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taGetUPRNextComputerTrxNumber] @I_vInc_Dec tinyint = NULL,  @O_vCOMPTRNM int = NULL output, @O_vPYRLCTYP int = NULL output, @O_iErrorState int = NULL output   with encryption as  set transaction isolation level read uncommitted set nocount on  declare @Loop int,  @iError int,  @iStatus int,  @COMPTRNM int,  @DocExists tinyint   select  @COMPTRNM = 0,  @O_iErrorState = 0,  @iStatus = 0,  @Loop = 0,  @DocExists = 1  if  @I_vInc_Dec is NULL begin  select @O_iErrorState =  3577   return (@O_iErrorState) end  select @O_vCOMPTRNM = NXCTRNUM from UPR40200 WITH (TABLOCKX HOLDLOCK) where SETUPKEY = 1 if (@@rowcount <> 1) begin  select @O_iErrorState = 3578    return (@O_iErrorState) end  select @COMPTRNM = @O_vCOMPTRNM  while (@Loop < 1000) begin  select @Loop = @Loop + 1  select @DocExists = 0   select @COMPTRNM = @COMPTRNM + 1   if  ( exists (select 1 from UPR10309 (nolock) where PYRLCNBR = @COMPTRNM and PYRLCTYP = @O_vPYRLCTYP ))  begin  select @DocExists = 1  end  else  begin  if  (exists (select 1 from UPR10309 (nolock) where PYRLCNBR = @O_vCOMPTRNM and PYRLCTYP = @O_vPYRLCTYP ))  begin  select @O_vCOMPTRNM = @COMPTRNM  end  else  begin  select @DocExists = 0  break  end  end end  if (@DocExists = 1) begin  select @O_iErrorState = 3579   end  if (@O_iErrorState = 0) begin  update UPR40200 set NXCTRNUM = @COMPTRNM where SETUPKEY = 1  if (@@error <> 0)  begin  select @O_iErrorState = 2364    end end else begin  select @O_vCOMPTRNM = 0 end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taGetUPRNextComputerTrxNumber] TO [DYNGRP]
GO