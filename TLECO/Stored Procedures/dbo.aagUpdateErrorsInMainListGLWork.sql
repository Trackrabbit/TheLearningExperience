SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE         procedure [dbo].[aagUpdateErrorsInMainListGLWork]  @iHdrID integer,  @iDistID integer,  @iErrorTable  nvarchar(30) = null,  @iClearCurrentDistErrors tinyint = 0 as  if @iClearCurrentDistErrors = 1  begin  exec(' delete '+ @iErrorTable +' where aaGLWorkHdrID = ' + @iHdrID +' and aaGLWorkDistID = '+ @iDistID +' and AADOCVAL = 0')  return  end exec('if exists(select aaGLWorkHdrID from '+ @iErrorTable +' where aaGLWorkHdrID = ' + @iHdrID +' and AADOCVAL = 1) ' +  ' begin'+  ' delete '+ @iErrorTable +' where aaGLWorkHdrID = ' + @iHdrID +' and aaGLWorkDistID = '+ @iDistID +' and AADOCVAL = 1' +  ' update '+ @iErrorTable +' set AADOCVAL = 1 where aaGLWorkHdrID = ' + @iHdrID +' and aaGLWorkDistID = '+ @iDistID +' and AADOCVAL = 0' +  ' end ' +  ' else delete from '+ @iErrorTable +' where aaGLWorkHdrID = ' + @iHdrID)    
GO
GRANT EXECUTE ON  [dbo].[aagUpdateErrorsInMainListGLWork] TO [DYNGRP]
GO
