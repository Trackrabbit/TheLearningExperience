SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE          procedure [dbo].[aagGLWorkHdrUpdate]  @JRNENTRY int,  @RCTRXSEQ int,  @GLPOSTDT Datetime, @LedgerID smallint,  @aaGLWorkHdrID    int output,  @CompanyID   smallint output  as  begin   declare @ISint int   Select   @ISint   =0   exec  aagIsInitialiseGLWork @JRNENTRY, @RCTRXSEQ,@GLPOSTDT ,@aaGLWorkHdrID output, @ISint output   if @ISint = 0   begin   exec DYNAMICS.dbo.aagGetNextID 10000, @CompanyID, @aaGLWorkHdrID output   insert into AAG10000   (aaGLWorkHdrID,  JRNENTRY,RCTRXSEQ,GLPOSTDT,aaTRXType, aaHdrErrors, Ledger_ID)   values  (@aaGLWorkHdrID, @JRNENTRY,@RCTRXSEQ, @GLPOSTDT, 1, 0, @LedgerID)    end   else   begin   UPDATE AAG10000   SET GLPOSTDT = @GLPOSTDT,  Ledger_ID = @LedgerID   WHERE aaGLWorkHdrID = @aaGLWorkHdrID AND JRNENTRY = @JRNENTRY AND RCTRXSEQ = @RCTRXSEQ AND (GLPOSTDT  <> @GLPOSTDT OR Ledger_ID <> @LedgerID)   end   end     
GO
GRANT EXECUTE ON  [dbo].[aagGLWorkHdrUpdate] TO [DYNGRP]
GO
