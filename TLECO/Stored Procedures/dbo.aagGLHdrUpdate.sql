SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[aagGLHdrUpdate]  @JRNENTRY int,  @RCTRXSEQ int,  @caaGLTrxSource char(13), @caaTrxSource char(13), @nYear    smallint, @GLPOSTDT Datetime,  @aaGLHdrID    int output,  @CompanyID   smallint output  as begin   exec DYNAMICS.dbo.aagGetNextID 30000, @CompanyID, @aaGLHdrID output   insert into AAG30000  (aaGLHdrID,  JRNENTRY, RCTRXSEQ, YEAR1, aaTRXType, aaGLTRXSource, aaTRXSource, GLPOSTDT)  values  (@aaGLHdrID, @JRNENTRY,@RCTRXSEQ, @nYear, 6, @caaGLTrxSource, @caaTrxSource, @GLPOSTDT) end    
GO
GRANT EXECUTE ON  [dbo].[aagGLHdrUpdate] TO [DYNGRP]
GO
