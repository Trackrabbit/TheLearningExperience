SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[aagCheckCodeSettingMain]  @I_cTableCode nvarchar(30) = null,   @I_cTableError nvarchar(30) = null,   @I_nHdrID int = 0,   @I_nDistID    int = 0,  @I_nAcctClassID int = 0,  @I_nAssignID   int = 0,   @O_fCodeSettingError tinyint = 1 output as  set @O_fCodeSettingError = 0  begin  declare  @nTrxDimID int,   @nTrxDimCodeID int,  @cTrxDim varchar(15),  @cTrxDimCode varchar(30),  @nErrorNum int  exec ('declare aaCode cursor fast_forward FOR  select aaTrxDimID, aaTrxCodeID from ' + @I_cTableCode + ' where aaSubLedgerHdrID = ' + @I_nHdrID +   ' and aaSubLedgerDistID =' + @I_nDistID + ' and aaSubLedgerAssignID = ' + @I_nAssignID   + ' and aaDataType = 1')   open aaCode  fetch next from aaCode into @nTrxDimID,@nTrxDimCodeID  WHILE @@fetch_status = 0  begin  exec aagCheckCodeSetting  @I_nAcctClassID,  @nTrxDimID,   @nTrxDimCodeID,  @cTrxDim output,  @cTrxDimCode output,  @nErrorNum  output  if @nErrorNum <> 0  begin  set @O_fCodeSettingError = 1  exec ('insert ' + @I_cTableError + '(aaSubLedgerHdrID, aaSubLedgerDistID,aaSubLedgerAssignID  ,aaErrorNum,aaTrxDim,aaTrxDimCode)  values(' + @I_nHdrID + ',' + @I_nDistID + ',' + @I_nAssignID +   ',' + @nErrorNum + ',''' + @cTrxDim + ''',''' + @cTrxDimCode + ''')' )   end  fetch next from aaCode into @nTrxDimID,@nTrxDimCodeID  end  close aaCode  deallocate aaCode  return(0) end    
GO
GRANT EXECUTE ON  [dbo].[aagCheckCodeSettingMain] TO [DYNGRP]
GO
