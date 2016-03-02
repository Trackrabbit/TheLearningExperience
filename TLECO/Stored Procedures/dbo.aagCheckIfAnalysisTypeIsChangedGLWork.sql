SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create   Procedure [dbo].[aagCheckIfAnalysisTypeIsChangedGLWork]  @I_nAcctClassID int,  @I_cTableCodeTemp nvarchar(30) = null,  @O_bErrorsFound tinyint = 0 output  AS  Begin   if @I_nAcctClassID = 0 or @I_nAcctClassID = null  Return(0)  Declare @nTrxDimID   int,  @nTrxDimCodeID   int,  @nDataEntry int,  @nShow int,  @nSetupDataEntry  int,  @nSetupShow int  Exec ('Declare aaCodes cursor fast_forward FOR  Select aaTrxDimID, aaTrxCodeID, aaDataEntry, aaShow from ' + @I_cTableCodeTemp + ' where aaGLWorkAssignID = 1   Order by aaOrder')  Open aaCodes  Fetch next from aaCodes into @nTrxDimID, @nTrxDimCodeID, @nDataEntry, @nShow  WHILE @@fetch_status = 0  Begin  set @nSetupDataEntry = 0  set @nSetupShow = 0  Select @nSetupDataEntry = aaDataEntry, @nSetupShow = aaShow from AAG00202 where aaAcctClassID = @I_nAcctClassID and aaTrxDimID = @nTrxDimID  if @nSetupDataEntry <> @nDataEntry or @nSetupShow <> @nShow  Begin  Set @O_bErrorsFound = 1  Break  End  Fetch next from aaCodes into @nTrxDimID, @nTrxDimCodeID, @nDataEntry, @nShow  End  Close aaCodes  Deallocate aaCodes   Return(0) End    
GO
GRANT EXECUTE ON  [dbo].[aagCheckIfAnalysisTypeIsChangedGLWork] TO [DYNGRP]
GO
