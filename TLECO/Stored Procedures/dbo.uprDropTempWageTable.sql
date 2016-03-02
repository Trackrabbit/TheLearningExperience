SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE  procedure [dbo].[uprDropTempWageTable]  @IN_WageFileType int,  @IN_UserID varchar(15) as  if (@IN_WageFileType = 1)  delete from ##TempDeptWage  where USERID = @IN_UserID else  delete from ##TempStateWage  where USERID = @IN_UserID  return(@@ERROR)   
GO
GRANT EXECUTE ON  [dbo].[uprDropTempWageTable] TO [DYNGRP]
GO
