SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[smGetMsgString]  @I_iMessageNumber       int   = NULL,  @I_cDBName char(5)  = NULL,  @O_vMessage      varchar(255) = NULL  output,  @O_iErrorState   int             = NULL  output as declare  @sLanguageID             smallint if @I_iMessageNumber is NULL begin  select @O_iErrorState = 20267  return end if @I_cDBName is NULL begin  select @O_iErrorState = 20267  return end select @O_iErrorState = 0 select  @sLanguageID    =       ACT.Language_ID from  dbo.ACTIVITY   ACT,  dbo.SY01500 CMP WITH (NOLOCK) where  ACT.USERID =       system_user and  ACT.CMPNYNAM =       CMP.CMPNYNAM and  CMP.INTERID =   @I_cDBName  /* NCL Modified - do not immediately assume LanguangeID=0 - check all companies and all users first */ /* check all companies for that user, pick min(Language_ID) in case logged in more than once, min() biases to US language */ if @sLanguageID is NULL  begin 	select 	 @sLanguageID    =       min(ACT.Language_ID) 	from 	 dbo.ACTIVITY   ACT 	WITH (NOLOCK) 	where 	 ACT.USERID =       system_user end /* check all companies for ANY user, pick min(Language_ID) in case logged in more than once, min() biases to US language */ if @sLanguageID is NULL  begin 	select 	 @sLanguageID    =       min(ACT.Language_ID) 	from 	 dbo.ACTIVITY   ACT 	WITH (NOLOCK) end /* end of NCL mods */ if @sLanguageID is NULL   select @sLanguageID = 0 select  @O_vMessage = rtrim(SQL_MSG) from  MESSAGES WITH (NOLOCK) where  MSGNUM = @I_iMessageNumber and  Language_ID = @sLanguageID if @@rowcount <> 1  select @O_iErrorState = 20062 return  
GO
GRANT EXECUTE ON  [dbo].[smGetMsgString] TO [DYNGRP]
GO
