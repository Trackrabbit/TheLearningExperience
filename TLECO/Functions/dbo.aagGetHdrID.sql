SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create          Function [dbo].[aagGetHdrID]( @SERIES  smallint, @DOCTYPE  smallint, @DOCNUMBR  char(21), @Master_ID  char(31), @JRNENTRY int, @RCTRXSEQ numeric(19,5), @GLPOSTDT datetime, @YEAR1 int,  @aaGLTRXSource char(13),  @TableID int ) returns  int  begin declare @aagGetHdrID int, @Status  smallint  if @TableID = 10000  begin select  @aagGetHdrID = aaGLWorkHdrID  from AAG10000 where JRNENTRY = @JRNENTRY and RCTRXSEQ = @RCTRXSEQ  end else if @TableID = 20000  begin select  @aagGetHdrID = aaSubLedgerHdrID  from AAG20000 where SERIES = @SERIES and  DOCTYPE = @DOCTYPE and  DOCNUMBR = @DOCNUMBR and  Master_ID = @Master_ID end else if @TableID = 30000  begin select  @aagGetHdrID = aaGLHdrID  from AAG30000 where JRNENTRY = @JRNENTRY and RCTRXSEQ = @RCTRXSEQ and YEAR1 = @YEAR1 and  aaGLTRXSource = @aaGLTRXSource end  else if @TableID = 40000  begin select  @aagGetHdrID = aaGLHdrID  from AAG40000 where JRNENTRY = @JRNENTRY and RCTRXSEQ = @RCTRXSEQ and YEAR1 = @YEAR1 and  aaGLTRXSource = @aaGLTRXSource end  return @aagGetHdrID end     
GO
GRANT EXECUTE ON  [dbo].[aagGetHdrID] TO [DYNGRP]
GO
