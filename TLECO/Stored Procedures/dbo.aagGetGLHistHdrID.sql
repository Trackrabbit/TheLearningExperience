SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE       procedure [dbo].[aagGetGLHistHdrID] @JRNENTRY  int output, @aaGLTRXSource  char(13) output, @TRXDATE datetime output, @aaGLHdrID int output, @Distcount int output, @aaTRXSource char(13) output, @OpenHist int output, @Opt int output as begin  if @Opt = 1  begin  Select  @JRNENTRY = JRNENTRY ,   @aaGLTRXSource = aaGLTRXSource,  @aaTRXSource = aaTRXSource, @TRXDATE = GLPOSTDT  from AAG40000  where aaGLHdrID = @aaGLHdrID  end   else if @Opt =2  begin  Select top 1 @aaGLHdrID = isnull(aaGLHdrID,0) , @aaTRXSource = aaTRXSource, @TRXDATE = GLPOSTDT  from AAG40000  where JRNENTRY   = @JRNENTRY and  RCTRXSEQ  >= 0    and   YEAR1 in  (Select YEAR1 from SY40101 where HISTORYR  = @OpenHist)    end   else  begin  Select top 1 @aaGLHdrID =  isnull(aaGLHdrID,0) , @aaTRXSource = aaTRXSource, @TRXDATE = GLPOSTDT  from AAG40000  where JRNENTRY   = @JRNENTRY and  RCTRXSEQ  >= 0    and   YEAR1 in  (Select YEAR1 from SY40101 where HISTORYR  = @OpenHist)  and   aaGLTRXSource  = @aaGLTRXSource and  GLPOSTDT = @TRXDATE  end   Select @Distcount =  count(*) from AAG40001  where aaGLHdrID = @aaGLHdrID and aaGLDistID > 0   end     
GO
GRANT EXECUTE ON  [dbo].[aagGetGLHistHdrID] TO [DYNGRP]
GO
