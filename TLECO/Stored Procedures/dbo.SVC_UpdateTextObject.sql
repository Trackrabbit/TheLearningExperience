SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_UpdateTextObject]  (@NOTEINDX numeric(19,5) OUTPUT,  @DATE1 datetime,  @TIME1 datetime,  @TXTFIELD text = '') AS declare @numofrows integer declare @thisdate varchar(18) declare @thistime varchar(18) declare @NEWNOTEINDEX numeric(19,5) DECLARE @oldnoteptr varbinary(16) if @DATE1 is null  begin  select @thisdate = CONVERT(varchar(10),GETDATE(),102) + ' 00:00:00:00'  select @DATE1 = @thisdate end if @TIME1 is null begin  select @thistime = '1/1/1900 ' + CONVERT(varchar(10),GETDATE(),108)  select @TIME1 = @thistime end if not @NOTEINDX is null and @NOTEINDX <> 0  BEGIN  if exists( select * from SY03900 where NOTEINDX = @NOTEINDX)  BEGIN  UPDATE SY03900  SET DATE1 = @DATE1,  TIME1 = @TIME1  WHERE  SY03900.NOTEINDX = @NOTEINDX  SELECT @oldnoteptr = TEXTPTR(TXTFIELD) from SY03900 where NOTEINDX = @NOTEINDX  if @oldnoteptr is not NULL   UPDATETEXT SY03900.TXTFIELD @oldnoteptr NULL NULL @TXTFIELD  END  ELSE  BEGIN  insert into SY03900  (NOTEINDX,  DATE1,  TIME1,  TXTFIELD)  VALUES(@NOTEINDX,  @DATE1,  @TIME1,  @TXTFIELD)  END END ELSE BEGIN  exec SVC_Get_Next_Note_Index @NEWNOTEINDEX output  if datalength(@TXTFIELD) > 0  BEGIN  insert into SY03900  (NOTEINDX,  DATE1,  TIME1,  TXTFIELD)  VALUES(@NEWNOTEINDEX,  @DATE1,  @TIME1,@TXTFIELD)  END  select @NOTEINDX = @NEWNOTEINDEX END    
GO
GRANT EXECUTE ON  [dbo].[SVC_UpdateTextObject] TO [DYNGRP]
GO
