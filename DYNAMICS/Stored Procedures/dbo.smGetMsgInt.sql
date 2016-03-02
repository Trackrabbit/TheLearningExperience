SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smGetMsgInt]  @I_iMessageNumber       int = NULL,  @I_cDBName    char(5)  = NULL,  @O_iMessage             int = NULL      output,  @O_iErrorState          int = NULL      output as  declare  @sLanguageID             smallint  if @I_iMessageNumber is NULL begin  select @O_iErrorState = 20268  return end  select @O_iErrorState = 0  select  @sLanguageID    =       ACT.Language_ID from  dbo.ACTIVITY   ACT,  dbo.SY01500 CMP WITH (NOLOCK) where  ACT.USERID =       system_user and  ACT.CMPNYNAM =       CMP.CMPNYNAM and  CMP.INTERID =   @I_cDBName  select  @O_iMessage = CONVERT(int,SQL_MSG) from  MESSAGES WITH (NOLOCK) where  MSGNUM = @I_iMessageNumber and  Language_ID = @sLanguageID  if @@rowcount <> 1 begin  select @O_iErrorState = 20066 end  return    
GO
GRANT EXECUTE ON  [dbo].[smGetMsgInt] TO [DYNGRP]
GO
