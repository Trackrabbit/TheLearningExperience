SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smGetMessageUsingConstant]  @I_cConstantName        char(255) = NULL,  @I_cDBName      char(5)  = NULL,  @O_cMessageString       char(255)       = NULL output,  @O_iErrorState          int = NULL output as  declare  @sLanguageID             smallint  if @I_cConstantName is NULL begin  select @O_iErrorState = 20264  return end  select @O_iErrorState = 0  select  @sLanguageID    =       ACT.Language_ID from  dbo.ACTIVITY   ACT,  dbo.SY01500 CMP WITH (NOLOCK) where  ACT.USERID =       system_user and  ACT.CMPNYNAM =       CMP.CMPNYNAM and  CMP.INTERID =   @I_cDBName  select  @O_cMessageString = MSG.SQL_MSG from  MESSAGES MSG,  CONSTANTS       CNST WITH (NOLOCK) where  CNST.Name = @I_cConstantName  and     MSG.MSGNUM = CONVERT(int,CNST.Value)  and     MSG.Language_ID = @sLanguageID  if @O_cMessageString is NULL or @O_cMessageString = ''  select @O_iErrorState = 20265  return    
GO
GRANT EXECUTE ON  [dbo].[smGetMessageUsingConstant] TO [DYNGRP]
GO
