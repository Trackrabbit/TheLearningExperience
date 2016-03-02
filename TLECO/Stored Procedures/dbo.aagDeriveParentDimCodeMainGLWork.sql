SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create      procedure [dbo].[aagDeriveParentDimCodeMainGLWork]  @I_nHdrID int = 0,   @I_nDistID    int = 0,   @I_nAssignID   int = 0,   @I_nTrxDimID   int = 0,   @I_nTrxDCodeID int = 0,  @I_cTableCodeTemp1  nvarchar(30) = null,   @I_cTableCodeTemp2  nvarchar(30) = null output  as  exec ('truncate TABLE ' + @I_cTableCodeTemp2 )  exec ('insert into ' + @I_cTableCodeTemp2 + ' select aaGLWorkHdrID, aaGLWorkDistID,aaGLWorkAssignID,aaTrxDimID,aaOrder,aaTrxCodeID, aaLine,aaCodeErrors,aaDataType,aaDataEntry,aaShow,aaTrxDim,aaTrxDimDescr,aaTrxDimCode,aaTrxDimCodeNum, aaTrxDimCodeBool,aaTrxDimCodeDate,aaTrxDimCodeDescr,DECPLQTY,BASEUOFM,aaFocus from ' + @I_cTableCodeTemp1 + ' where aaGLWorkHdrID = ' + @I_nHdrID + ' and aaGLWorkDistID ='  + @I_nDistID + ' and aaGLWorkAssignID = ' + @I_nAssignID )  begin  declare  @cTrxDimID int,   @cTrxCodeID int,  @cParentTrxDimID int,   @cParentTrxDimCodeID int,  @cParentTrxDim char(16),   @cParentTrxDimCode char(31),  @cParentTrxDimCodeDesc char(51)  set @cTrxDimID = @I_nTrxDimID set @cTrxCodeID = @I_nTrxDCodeID set @cParentTrxDim = null set @cParentTrxDimCode = null  WHILE (@cTrxDimID <> 0 and  @cTrxCodeID <> 0)  begin  exec aagDeriveParentDimCode  @cTrxDimID,   @cTrxCodeID,  @cParentTrxDimID output,   @cParentTrxDimCodeID output,  @cParentTrxDim output,   @cParentTrxDimCode output,  @cParentTrxDimCodeDesc output   if (@cParentTrxDimID = 0 or  @cParentTrxDimCodeID = 0)  return   else  begin   set @cParentTrxDimCodeDesc = replace(@cParentTrxDimCodeDesc,'''','''''')   exec ('update ' + @I_cTableCodeTemp2 +  ' set aaTrxCodeID ='  + @cParentTrxDimCodeID +  ',aaTrxDim = ''' + @cParentTrxDim +  ''', aaTrxDimCode = ''' + @cParentTrxDimCode +   ''', aaTrxDimCodeDescr = ''' + @cParentTrxDimCodeDesc +  '''  where aaTrxDimID = ' + @cParentTrxDimID + ' and aaDataEntry not in (1,4)')  set @cTrxDimID = @cParentTrxDimID  set @cTrxCodeID = @cParentTrxDimCodeID  end  end  end  return     
GO
GRANT EXECUTE ON  [dbo].[aagDeriveParentDimCodeMainGLWork] TO [DYNGRP]
GO
