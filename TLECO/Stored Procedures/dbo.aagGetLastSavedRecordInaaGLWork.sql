SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[aagGetLastSavedRecordInaaGLWork]  @GLWorkHdrID  int out, @JrnEntry  int out, @Year   int out, @Status  int out AS  Begin declare @lDate datetime   if exists(select aaGLWorkHdrID from AAG10000 where aaTRXType=3)   Begin   select @GLWorkHdrID=aaGLWorkHdrID,@JrnEntry=JRNENTRY,@lDate=GLPOSTDT from AAG10000 where aaTRXType=3  select @Year=YEAR1 from AAG30000 where JRNENTRY=@JrnEntry and GLPOSTDT=@lDate  select @Status=1  End else  Begin  select @GLWorkHdrID=0  select @JrnEntry=0  select @Year=0  select @Status=0  End End    
GO
GRANT EXECUTE ON  [dbo].[aagGetLastSavedRecordInaaGLWork] TO [DYNGRP]
GO
