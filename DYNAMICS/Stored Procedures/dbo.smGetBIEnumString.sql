SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smGetBIEnumString]  @I_iDictID int    = NULL,  @I_iLanguageID int    = NULL,  @I_sFunctionName varchar(100) = NULL,   @I_iFunctionEnum int    = NULL,  @O_vMessage varchar(255) = NULL output,   @O_iErrorState int    = NULL output  as   declare  @iStatus int,   @iErrorState int   if @I_iDictID is NULL begin  select @O_iErrorState = 20267  return end  if @I_iLanguageID is NULL begin  select @O_iErrorState = 20267  return end  if @I_sFunctionName is NULL  begin   select @O_iErrorState = 20267   return  end   if @I_iFunctionEnum is NULL  begin   select @O_iErrorState = 20267   return  end   select @O_iErrorState = 0   select @O_vMessage = ''  select @O_vMessage =  rtrim(SQL_MSG)  from SY10997  with (NOLOCK)  where   DICTID = @I_iDictID and  Language_ID = @I_iLanguageID and  FUNCNAME = @I_sFunctionName and  FUNCENUM = @I_iFunctionEnum  if @O_vMessage = '' begin  select @O_vMessage =  rtrim(SQL_MSG)   from SY10997   with (NOLOCK)  where   DICTID = @I_iDictID and  Language_ID = 0 and  FUNCNAME = @I_sFunctionName and  FUNCENUM = @I_iFunctionEnum end  return     
GO
GRANT EXECUTE ON  [dbo].[smGetBIEnumString] TO [DYNGRP]
GO
