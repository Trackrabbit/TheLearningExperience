SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_UPR10101L_3] (@RPTNGYR_RS smallint, @MCRQGEMP_RS tinyint, @DEPRTMNT_RS char(7), @LASTNAME_RS char(21), @FRSTNAME_RS char(15), @MIDLNAME_RS char(15), @SEQNUMBR_RS int, @W2BFSTTL_RS char(1), @RPTNGYR_RE smallint, @MCRQGEMP_RE tinyint, @DEPRTMNT_RE char(7), @LASTNAME_RE char(21), @FRSTNAME_RE char(15), @MIDLNAME_RE char(15), @SEQNUMBR_RE int, @W2BFSTTL_RE char(1)) AS /* 14.00.0084.000 */ set nocount on IF @RPTNGYR_RS IS NULL BEGIN SELECT TOP 25  RPTNGYR, MCRQGEMP, DEPRTMNT, LASTNAME, FRSTNAME, MIDLNAME, SEQNUMBR, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, Foreign_Address, Foreign_StateProvince, Foreign_Postal_Code, CCode, W2CTRNBR, EMPLOYID, SOCSCNUM, W2BFSTEM, W2BFDCSD, W2BFPPLN, W2BFLREP, W2BF942E, W2BFSTTL, W2BFDCMP, WGTPCOMP, FEDITXWH, SSECWAGS, SSTXWHLD, MCRWGTPS, MDCRTXWH, SSECTIPS, ALOCTIPS, ADEICPMT, DEPCRBFT, NQLFPLNS, BNINCWGS, W2FRMCTR, NOTEINDX, STRINGARRAY_1, STRINGARRAY_2, STRINGARRAY_3, STRINGARRAY_4, STRINGARRAY_5, LONGINTARRAY_1, LONGINTARRAY_2, LONGINTARRAY_3, LONGINTARRAY_4, LONGINTARRAY_5, EMPLSUFF, ESSW2PRINTED, DEX_ROW_ID FROM .UPR10101 ORDER BY RPTNGYR DESC, MCRQGEMP DESC, DEPRTMNT DESC, LASTNAME DESC, FRSTNAME DESC, MIDLNAME DESC, SEQNUMBR DESC, W2BFSTTL DESC, DEX_ROW_ID DESC END ELSE IF @RPTNGYR_RS = @RPTNGYR_RE BEGIN SELECT TOP 25  RPTNGYR, MCRQGEMP, DEPRTMNT, LASTNAME, FRSTNAME, MIDLNAME, SEQNUMBR, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, Foreign_Address, Foreign_StateProvince, Foreign_Postal_Code, CCode, W2CTRNBR, EMPLOYID, SOCSCNUM, W2BFSTEM, W2BFDCSD, W2BFPPLN, W2BFLREP, W2BF942E, W2BFSTTL, W2BFDCMP, WGTPCOMP, FEDITXWH, SSECWAGS, SSTXWHLD, MCRWGTPS, MDCRTXWH, SSECTIPS, ALOCTIPS, ADEICPMT, DEPCRBFT, NQLFPLNS, BNINCWGS, W2FRMCTR, NOTEINDX, STRINGARRAY_1, STRINGARRAY_2, STRINGARRAY_3, STRINGARRAY_4, STRINGARRAY_5, LONGINTARRAY_1, LONGINTARRAY_2, LONGINTARRAY_3, LONGINTARRAY_4, LONGINTARRAY_5, EMPLSUFF, ESSW2PRINTED, DEX_ROW_ID FROM .UPR10101 WHERE RPTNGYR = @RPTNGYR_RS AND MCRQGEMP BETWEEN @MCRQGEMP_RS AND @MCRQGEMP_RE AND DEPRTMNT BETWEEN @DEPRTMNT_RS AND @DEPRTMNT_RE AND LASTNAME BETWEEN @LASTNAME_RS AND @LASTNAME_RE AND FRSTNAME BETWEEN @FRSTNAME_RS AND @FRSTNAME_RE AND MIDLNAME BETWEEN @MIDLNAME_RS AND @MIDLNAME_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND W2BFSTTL BETWEEN @W2BFSTTL_RS AND @W2BFSTTL_RE ORDER BY RPTNGYR DESC, MCRQGEMP DESC, DEPRTMNT DESC, LASTNAME DESC, FRSTNAME DESC, MIDLNAME DESC, SEQNUMBR DESC, W2BFSTTL DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  RPTNGYR, MCRQGEMP, DEPRTMNT, LASTNAME, FRSTNAME, MIDLNAME, SEQNUMBR, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, Foreign_Address, Foreign_StateProvince, Foreign_Postal_Code, CCode, W2CTRNBR, EMPLOYID, SOCSCNUM, W2BFSTEM, W2BFDCSD, W2BFPPLN, W2BFLREP, W2BF942E, W2BFSTTL, W2BFDCMP, WGTPCOMP, FEDITXWH, SSECWAGS, SSTXWHLD, MCRWGTPS, MDCRTXWH, SSECTIPS, ALOCTIPS, ADEICPMT, DEPCRBFT, NQLFPLNS, BNINCWGS, W2FRMCTR, NOTEINDX, STRINGARRAY_1, STRINGARRAY_2, STRINGARRAY_3, STRINGARRAY_4, STRINGARRAY_5, LONGINTARRAY_1, LONGINTARRAY_2, LONGINTARRAY_3, LONGINTARRAY_4, LONGINTARRAY_5, EMPLSUFF, ESSW2PRINTED, DEX_ROW_ID FROM .UPR10101 WHERE RPTNGYR BETWEEN @RPTNGYR_RS AND @RPTNGYR_RE AND MCRQGEMP BETWEEN @MCRQGEMP_RS AND @MCRQGEMP_RE AND DEPRTMNT BETWEEN @DEPRTMNT_RS AND @DEPRTMNT_RE AND LASTNAME BETWEEN @LASTNAME_RS AND @LASTNAME_RE AND FRSTNAME BETWEEN @FRSTNAME_RS AND @FRSTNAME_RE AND MIDLNAME BETWEEN @MIDLNAME_RS AND @MIDLNAME_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND W2BFSTTL BETWEEN @W2BFSTTL_RS AND @W2BFSTTL_RE ORDER BY RPTNGYR DESC, MCRQGEMP DESC, DEPRTMNT DESC, LASTNAME DESC, FRSTNAME DESC, MIDLNAME DESC, SEQNUMBR DESC, W2BFSTTL DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10101L_3] TO [DYNGRP]
GO