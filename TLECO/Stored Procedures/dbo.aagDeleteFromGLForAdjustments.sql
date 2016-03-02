SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create  procedure [dbo].[aagDeleteFromGLForAdjustments] @JRNEntry int  as Begin  declare  @aaGLHdrID int,  @JRNENTRY_Work int,  @RCTRXSEQ numeric(19,5)   select @JRNENTRY_Work = JRNENTRY,@RCTRXSEQ = RCTRXSEQ from AAG10000  where  JRNENTRY = @JRNEntry and aaTRXType = 3  select @aaGLHdrID=aaGLHdrID from AAG30000 where JRNENTRY=@JRNEntry and  RCTRXSEQ = @RCTRXSEQ  End    
GO
GRANT EXECUTE ON  [dbo].[aagDeleteFromGLForAdjustments] TO [DYNGRP]
GO
