SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create    procedure [dbo].[aagCreateGLWorkSLPostDoc]   @I_nCompanyID   smallint,  @I_cORTRXSRC char(30),  @I_cDTAControlNum char(30),  @O_fValidCode tinyint = 1 output As  Begin  Declare @JRNENTRY  int   Declare glWorkLHdr cursor fast_forward For  Select JRNENTRY from GL10000  Where ORTRXSRC = @I_cORTRXSRC and DTAControlNum = @I_cDTAControlNum   Order by JRNENTRY   Open glWorkLHdr  Fetch next from glWorkLHdr into @JRNENTRY   While @@fetch_status = 0  Begin  Exec aagCreateGLWorkSLRealTimePostForApply @I_nCompanyID, @JRNENTRY, @O_fValidCode  Fetch next from glWorkLHdr into @JRNENTRY  End   Close glWorkLHdr  Deallocate glWorkLHdr   Return End    
GO
GRANT EXECUTE ON  [dbo].[aagCreateGLWorkSLPostDoc] TO [DYNGRP]
GO
