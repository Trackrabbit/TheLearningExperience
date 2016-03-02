SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE    PROCEDURE [dbo].[aagCopyCodesAlias]  @I_cTable1  nvarchar(30) = NULL,  @I_cTable2  nvarchar(30) = NULL OUTPUT,  @I_nTrxDimID int = 0,  @I_nTrxCodeID int = 0,  @I_cTrxDimCode char(30) ,  @I_cTrxDimCodeDescr char(50),  @I_nCopy TINYINT = 1  AS  IF @I_nCopy = 1  BEGIN   EXECUTE ('DELETE FROM ' + @I_cTable2 + ' WHERE aaDataType = 1')   EXECUTE ('INSERT INTO ' + @I_cTable2 +  ' select aaTrxDimID,aaTrxDim, aaOrder,  aaTrxDimCodeID,aaTrxDimCode,aaTrxDimCodeDescr,aaDataType,aaInactive from ' + @I_cTable1 )  END  ELSE  BEGIN   exec ('update ' + @I_cTable2 +  ' set aaTrxDimCodeID = str(' + @I_nTrxCodeID + '), aaTrxDimCode = space(1),  aaTrxDimCodeDescr = space(1)  where aaTrxDimID = str(' + @I_nTrxDimID +')')  END    
GO
GRANT EXECUTE ON  [dbo].[aagCopyCodesAlias] TO [DYNGRP]
GO
