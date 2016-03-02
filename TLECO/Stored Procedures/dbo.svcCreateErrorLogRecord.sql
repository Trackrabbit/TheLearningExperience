SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[svcCreateErrorLogRecord]  @I_cUserID char(15)  = NULL,  @I_cFileName char(40)  = NULL,  @I_iErrorMessage char(256)   = NULL,  @O_iErrorState int   = NULL output as  declare  @cOriginalMessage char(255),   @iError int,   @iStatus int,   @iIndex int,   @cBlanks char(4)   if @I_cUserID is NULL or  @I_cFileName is NULL or  @I_iErrorMessage is NULL begin  select @O_iErrorState = 20833  return end else  select @O_iErrorState = 0  select @cBlanks = '    '   insert into  SY03400  (USERID,  INDXLONG,  FILENAME,  ERMSGTXT,  ERMSGTX2)  select  @I_cUserID,  0,  @I_cFileName,  rtrim(VENDORID) + @cBlanks + rtrim(CNTRLNUM) + ': ' + @I_iErrorMessage,  ''  from  #CNTRLNUMTEMP  order by   VENDORID,   CNTRLNUM  delete #CNTRLNUMTEMP  return    
GO
GRANT EXECUTE ON  [dbo].[svcCreateErrorLogRecord] TO [DYNGRP]
GO
