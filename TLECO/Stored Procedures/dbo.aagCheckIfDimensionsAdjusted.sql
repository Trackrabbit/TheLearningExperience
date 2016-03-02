SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE   Procedure [dbo].[aagCheckIfDimensionsAdjusted]  @I_nAcctClassID int,  @I_cTableCodeTemp nvarchar(30) = null,  @O_bErrorsFound tinyint = 0 output  AS  Begin   if @I_nAcctClassID = 0 or @I_nAcctClassID = null  Return(0)  Declare @nTrxDimID   int,  @nTrxDimCodeID   int,  @nDataEntry int,  @nShow int,  @nSetupDataEntry  int,  @nSetupShow int,  @HdrID int,  @DistID int,  @AssignID int,  @nTempDimID int,  @nTempDimCodeID int  Exec ('Declare aaCodes cursor fast_forward FOR  Select aaTrxDimID, aaTrxCodeID, aaGLWorkHdrID,aaGLWorkDistID,aaGLWorkAssignID from ' + @I_cTableCodeTemp + ' where aaGLWorkAssignID = 1   Order by aaOrder')  Open aaCodes  Fetch next from aaCodes into @nTrxDimID, @nTrxDimCodeID, @HdrID,@DistID,@AssignID  WHILE @@fetch_status = 0  Begin  set @nSetupDataEntry = 0  set @nSetupShow = 0  select @nTempDimID=aaTrxDimID,@nTempDimCodeID=aaTrxCodeID from AAG10003 where aaGLWorkHdrID=@HdrID and aaGLWorkDistID=@DistID and aaGLWorkAssignID=@AssignID and aaTrxDimID=@nTrxDimID  if @nTempDimID <> @nTrxDimID or @nTempDimCodeID <> @nTrxDimCodeID  Begin  if(select aaAllowAdjustment from aag00407 where aaTrxDimID=@nTrxDimID)<>1  Begin  Set @O_bErrorsFound = 1   Break  End  End  Fetch next from aaCodes into @nTrxDimID, @nTrxDimCodeID, @HdrID,@DistID,@AssignID  End  Close aaCodes  Deallocate aaCodes   Return(0) End    
GO
GRANT EXECUTE ON  [dbo].[aagCheckIfDimensionsAdjusted] TO [DYNGRP]
GO
