SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE   Procedure [dbo].[aagCheckIfAnalysisTypeIsChanged]  @I_nAcctClassID int,  @I_cTableCodeTemp nvarchar(30) = null,  @O_bErrorsFound tinyint = 0 output  AS  Begin   if @I_nAcctClassID = 0 or @I_nAcctClassID = null  Return(0)  Declare @nTrxDimID   int,  @nTrxDimCodeID   int,  @nDataEntry int,  @nShow int,  @nSetupDataEntry  int,  @nSetupShow int  Exec ('Declare aaCodes cursor fast_forward FOR  Select top 1 ' + @I_cTableCodeTemp + '.aaShow from ' + @I_cTableCodeTemp + ' inner join   AAG00202 on ' + @I_cTableCodeTemp + '.aaTrxDimID=AAG00202.aaTrxDimID  where aaSubLedgerAssignID = 1   and aaAcctClassID=' + @I_nAcctClassID + ' and ( ' + @I_cTableCodeTemp + '.aaDataEntry<>AAG00202.aaDataEntry or ' + @I_cTableCodeTemp + '.aaShow<>  AAG00202.aaShow) ')  Open aaCodes  Fetch next from aaCodes into @nShow  if @@fetch_status = 0  Set @O_bErrorsFound = 1  Close aaCodes  Deallocate aaCodes  Return(0) End    
GO
GRANT EXECUTE ON  [dbo].[aagCheckIfAnalysisTypeIsChanged] TO [DYNGRP]
GO
