SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create    procedure  [dbo].[aagIsInitialiseGLWork]  @JRNENTRY int , @RCTRXSEQ int, @GLPOSTDT   datetime, @aaGLWorkHdrID int output, @ISInitialise int output as  begin  set nocount on  Select  @aaGLWorkHdrID = aaGLWorkHdrID   from AAG10000  where JRNENTRY = @JRNENTRY and RCTRXSEQ = @RCTRXSEQ   if @aaGLWorkHdrID >= 1  begin  set @ISInitialise = 1  end   set nocount off end     
GO
GRANT EXECUTE ON  [dbo].[aagIsInitialiseGLWork] TO [DYNGRP]
GO
