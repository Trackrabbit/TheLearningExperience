SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_Obj_GetLineSite]( @CallNumber char(11), @LineSite char(11) output )  as declare @TECHID char(11),  @OFFID char(11),  @Temp_LOCNCODE char(11)  select @TECHID = TECHID, @OFFID = OFFID  from SVC00200 where CALLNBR = @CallNumber   if @TECHID = ''  if @OFFID = ''  begin  select @LineSite = LOCNCODE from SVC00998 return  end  else  begin  select @Temp_LOCNCODE = LOCNCODE  from SVC00902 where OFFID = @OFFID  if @Temp_LOCNCODE = '' or @Temp_LOCNCODE = NULL  begin  select @LineSite = LOCNCODE from SVC00998 return  end  else  select @LineSite = @Temp_LOCNCODE return   end else  select @Temp_LOCNCODE = LOCNCODE from SVC00100 where TECHID = @TECHID  if @Temp_LOCNCODE = '' or @Temp_LOCNCODE = NULL  begin  select @LineSite = LOCNCODE from SVC00998 return  end  else  select @LineSite = @Temp_LOCNCODE return   
GO
GRANT EXECUTE ON  [dbo].[SVC_Obj_GetLineSite] TO [DYNGRP]
GO
