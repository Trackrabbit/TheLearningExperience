SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create     procedure [dbo].[aagUpdateSLDistForBrowseTypeGLWork] @I_cTableError nvarchar(30) = null,  @I_nHdrID int,  @I_nNot tinyint as  begin  if @I_nNot = 1  exec ('update AAG10001 set aaBrowseType = 2   where aaGLWorkHdrID = ' + @I_nHdrID +' and aaBrowseType = 1   and exists (select top 1 * from ' + @I_cTableError +'   where AAG10001.aaGLWorkHdrID = ' + @I_cTableError +'.aaGLWorkHdrID  and AAG10001.aaGLWorkDistID = ' + @I_cTableError +'.aaGLWorkDistID)')  else  EXEC ('if exists(select aaGLWorkHdrID   from ' + @I_cTableError + ' where aaGLWorkHdrID = '+@I_nHdrID+')   update AAG10001 set aaBrowseType = 1   where aaGLWorkHdrID = '+@I_nHdrID+' and aaBrowseType = 2   and not exists (select top 1 * from ' + @I_cTableError +'   where AAG10001.aaGLWorkHdrID = ' + @I_cTableError +'.aaGLWorkHdrID  and AAG10001.aaGLWorkDistID = ' + @I_cTableError +'.aaGLWorkDistID )   else   update AAG10001 set aaBrowseType = 1   where aaGLWorkHdrID = '+@I_nHdrID+' and aaBrowseType = 2')   return end    
GO
GRANT EXECUTE ON  [dbo].[aagUpdateSLDistForBrowseTypeGLWork] TO [DYNGRP]
GO
