SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create    procedure [dbo].[aagDeriveChildDimCodeMainGLWork]  @I_nHdrID int = 0,   @I_nDistID    int = 0,   @I_nAssignID   int = 0,   @I_cParentTrxDimID int = 0,   @I_cParentTrxDimCodeID int = 0,  @I_cTableCodeTemp1  nvarchar(30) = null output as  declare  @cParentTrxDimID int,   @cParentTrxDimCodeID int,  @cChildTrxDimID int,   @cChildTrxDimCodeID int  if @I_cParentTrxDimCodeID = 0   return  set  @cParentTrxDimID = @I_cParentTrxDimID set  @cParentTrxDimCodeID = @I_cParentTrxDimCodeID  set @cChildTrxDimID = 0 set @cChildTrxDimCodeID = 0  WHILE (@cParentTrxDimID <> 0)  begin  exec aagDeriveChildDimCode  @cParentTrxDimID,   @cParentTrxDimCodeID,  @cChildTrxDimID output,   @cChildTrxDimCodeID output  if (@cChildTrxDimID = 0 and  @cChildTrxDimCodeID = 0)  return  else   exec ('update ' + @I_cTableCodeTemp1 +  ' set aaTrxCodeID = 0, aaTrxDimCode = '''', aaTrxDimCodeDescr = ''''  where aaGLWorkHdrID = ' + @I_nHdrID + ' and aaGLWorkDistID ='   + @I_nDistID + ' and aaGLWorkAssignID = '   + @I_nAssignID + ' and aaTrxDimID = ' + @cChildTrxDimID + ' and aaDataEntry <> 4')   set @cParentTrxDimID = @cChildTrxDimID  set @cParentTrxDimCodeID = @cChildTrxDimCodeID  end    
GO
GRANT EXECUTE ON  [dbo].[aagDeriveChildDimCodeMainGLWork] TO [DYNGRP]
GO
