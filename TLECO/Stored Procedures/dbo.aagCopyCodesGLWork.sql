SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create    procedure [dbo].[aagCopyCodesGLWork] @I_cTable1  nvarchar(30) = null, @I_cTable2  nvarchar(30) = null output, @I_nAssignID int = 0, @I_nTrxDimID int = 0, @I_nTrxCodeID int = 0, @I_cTrxDimCode char(30) = '', @I_cTrxDimCodeDescr char(50) = '', @I_nCopy tinyint = 1 as if @I_nCopy = 1  begin  exec ('delete from ' + @I_cTable2 + ' where aaDataType = 1 and aaGLWorkAssignID = ' + @I_nAssignID)  exec ('insert into ' + @I_cTable2 +  ' select aaGLWorkHdrID, aaGLWorkDistID, aaGLWorkAssignID, aaTrxDimID, aaOrder,  aaTrxCodeID, aaLine, aaCodeErrors, aaDataType, aaDataEntry, aaShow, aaTrxDim,  aaTrxDimDescr, aaTrxDimCode, aaTrxDimCodeNum, aaTrxDimCodeBool, aaTrxDimCodeDate,  aaTrxDimCodeDescr, DECPLQTY, BASEUOFM, aaFocus from ' + @I_cTable1 + ' where aaDataType = 1  and aaGLWorkAssignID = ' + @I_nAssignID)  end else  begin  exec ('update ' + @I_cTable2 + ' set aaTrxCodeID = 0 , aaTrxDimCodeDescr = space(1),  aaTrxDimCode = space(1) where aaGLWorkAssignID = ' + @I_nAssignID +   ' and aaTrxDimID = ' + @I_nTrxDimID )  end    
GO
GRANT EXECUTE ON  [dbo].[aagCopyCodesGLWork] TO [DYNGRP]
GO
