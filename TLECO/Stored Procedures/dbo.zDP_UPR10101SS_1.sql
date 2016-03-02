SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_UPR10101SS_1] (@RPTNGYR smallint, @MCRQGEMP tinyint, @EMPLOYID char(15), @SEQNUMBR int, @W2BFSTTL char(1)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  RPTNGYR, MCRQGEMP, DEPRTMNT, LASTNAME, FRSTNAME, MIDLNAME, SEQNUMBR, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, Foreign_Address, Foreign_StateProvince, Foreign_Postal_Code, CCode, W2CTRNBR, EMPLOYID, SOCSCNUM, W2BFSTEM, W2BFDCSD, W2BFPPLN, W2BFLREP, W2BF942E, W2BFSTTL, W2BFDCMP, WGTPCOMP, FEDITXWH, SSECWAGS, SSTXWHLD, MCRWGTPS, MDCRTXWH, SSECTIPS, ALOCTIPS, ADEICPMT, DEPCRBFT, NQLFPLNS, BNINCWGS, W2FRMCTR, NOTEINDX, STRINGARRAY_1, STRINGARRAY_2, STRINGARRAY_3, STRINGARRAY_4, STRINGARRAY_5, LONGINTARRAY_1, LONGINTARRAY_2, LONGINTARRAY_3, LONGINTARRAY_4, LONGINTARRAY_5, EMPLSUFF, ESSW2PRINTED, DEX_ROW_ID FROM .UPR10101 WHERE RPTNGYR = @RPTNGYR AND MCRQGEMP = @MCRQGEMP AND EMPLOYID = @EMPLOYID AND SEQNUMBR = @SEQNUMBR AND W2BFSTTL = @W2BFSTTL ORDER BY RPTNGYR ASC, MCRQGEMP ASC, EMPLOYID ASC, SEQNUMBR ASC, W2BFSTTL ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10101SS_1] TO [DYNGRP]
GO