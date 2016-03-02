SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create    procedure [dbo].[aagDeriveChildDimCodeAccClass]  @I_cParentTrxDimID int = 0,   @I_cParentTrxDimCodeID int = 0,  @I_cTableAccClassDimTemp  nvarchar(30) = null output  as  declare  @cParentTrxDimID int,   @cParentTrxDimCodeID int,  @cChildTrxDimID int,   @cChildTrxDimCodeID int  set  @cParentTrxDimID = @I_cParentTrxDimID set  @cParentTrxDimCodeID = @I_cParentTrxDimCodeID  set @cChildTrxDimID = 0 set @cChildTrxDimCodeID = 0  WHILE (@cParentTrxDimID <> 0)  begin  exec aagDeriveChildDimCode  @cParentTrxDimID,   @cParentTrxDimCodeID,  @cChildTrxDimID output,   @cChildTrxDimCodeID output;  if (@cChildTrxDimID = 0 and  @cChildTrxDimCodeID = 0)  return  else  exec ('update ' + @I_cTableAccClassDimTemp +  ' set aaTrxDimCodeIDDflt = 0, aaTrxDimCode = space(1), aaTrxDimCodeDescr = space(1)  where aaTrxDimID = str(' + @cChildTrxDimID+')')   set @cParentTrxDimID = @cChildTrxDimID  set @cParentTrxDimCodeID = @cChildTrxDimCodeID  end    
GO
GRANT EXECUTE ON  [dbo].[aagDeriveChildDimCodeAccClass] TO [DYNGRP]
GO
