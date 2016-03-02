SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smFindFirstRoutine]  @I_sSeries smallint = NULL,  @O_sType smallint = NULL output,  @O_iErrorState int  = NULL output as  if @I_sSeries is NULL begin  select @O_iErrorState = 20379  return end else begin  select @O_iErrorState = 0 end  select  @O_sType = min(ENDTYPE) from  SY02500 where  SERIES = @I_sSeries  and MODULE1 = 1  and INDEX1 = (select  min(INDEX1)  from  SY02500  where  SERIES = @I_sSeries)  if @O_sType is NULL  select @O_sType = 1  return    
GO
GRANT EXECUTE ON  [dbo].[smFindFirstRoutine] TO [DYNGRP]
GO
