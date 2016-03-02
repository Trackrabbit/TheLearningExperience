SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smGetMsgStringBackup]   @I_iMessageNumber       int   = NULL,  @I_cDBName char(5)  = NULL,  @O_vMessage      varchar(255) = NULL  output,  @O_iErrorState   int             = NULL  output as  declare  @sLanguageID            smallint,  @ProductName varchar(128),  @iStatus     int,  @iErrorState int  if @I_iMessageNumber is NULL begin  select @O_iErrorState = 20267  return end  if @I_cDBName is NULL begin  select @O_iErrorState = 20267  return end  select @O_iErrorState = 0  select  @sLanguageID    =       ACT.Language_ID from  dbo.ACTIVITY   ACT,  dbo.SY01500 CMP WITH (NOLOCK) where  ACT.USERID =       system_user and  ACT.CMPNYNAM =       CMP.CMPNYNAM and  CMP.INTERID =   @I_cDBName   if @sLanguageID is NULL   select @sLanguageID = 0  select  @O_vMessage = rtrim(SQL_MSG) from  MESSAGES WITH (NOLOCK) where  MSGNUM = @I_iMessageNumber and  Language_ID = @sLanguageID  if @@rowcount <> 1  select @O_iErrorState = 20062 else  BEGIN  exec @iStatus = DYNAMICS..smGetConstantString  'PRODUCT_NAME',   @ProductName output,  @iErrorState output  if @iErrorState = 0   if PATINDEX('%@PROD0@%', @O_vMessage) > 0   select @O_vMessage = REPLACE(@O_vMessage, '@PROD0@', rtrim(@ProductName))  END return    
GO
GRANT EXECUTE ON  [dbo].[smGetMsgStringBackup] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[smGetMsgStringBackup] TO [rpt_all user]
GO
