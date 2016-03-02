SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[pmApplyOpenUnassignedExist]  @I_vKEYSOURC varchar(41) = NULL,  @I_vVENDORID varchar(15) = NULL,  @O_iRecordExists int             output,  @O_iErrorState          int             output  as  declare  @iStatus int  select @O_iErrorState = 0,  @O_iRecordExists = 0,  @iStatus = 0 if( @I_vKEYSOURC is NULL or  @I_vVENDORID is NULL ) begin  select          @O_iErrorState = 21022  return end  if exists(select 1 from PM20100 with (nolock) where KEYSOURC = @I_vKEYSOURC and VENDORID = @I_vVENDORID and Payment_To_Print_On_Stub = '') begin  select @O_iRecordExists = 1 end  return(@iStatus)    
GO
GRANT EXECUTE ON  [dbo].[pmApplyOpenUnassignedExist] TO [DYNGRP]
GO
