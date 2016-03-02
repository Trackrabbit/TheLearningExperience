SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05015F_4] (@USERID_RS char(15), @SOPTYPE_RS smallint, @RETDOCID_RS char(15), @LNSEQNBR_RS numeric(19,5), @RETREF_RS char(31), @SOPNUMBE_RS char(21), @USERID_RE char(15), @SOPTYPE_RE smallint, @RETDOCID_RE char(15), @LNSEQNBR_RE numeric(19,5), @RETREF_RE char(31), @SOPNUMBE_RE char(21)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, RETDOCID, LNSEQNBR, RMA_Status, TECHID, RETTYPE, OFFID, CUSTNMBR, ADRSCODE, CUSTNAME, QUANTITY, ITEMNMBR, Return_Item_Number, Return_QTY, LOCNCODE, BINNMBR, ORDDOCID, CALLNBR, RETREF, CB_Packing_Slip, CHDFLAG, MKDTOPST, POSTED, ERMSGNBR, ERMSGTXT, ERMSGTX2, SOPTYPE, SOPNUMBE, UOFM, Return_U_Of_M, DECPLQTY, DEX_ROW_ID FROM .SVC05015 ORDER BY USERID ASC, SOPTYPE ASC, RETDOCID ASC, LNSEQNBR ASC, RETREF ASC, SOPNUMBE ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, RETDOCID, LNSEQNBR, RMA_Status, TECHID, RETTYPE, OFFID, CUSTNMBR, ADRSCODE, CUSTNAME, QUANTITY, ITEMNMBR, Return_Item_Number, Return_QTY, LOCNCODE, BINNMBR, ORDDOCID, CALLNBR, RETREF, CB_Packing_Slip, CHDFLAG, MKDTOPST, POSTED, ERMSGNBR, ERMSGTXT, ERMSGTX2, SOPTYPE, SOPNUMBE, UOFM, Return_U_Of_M, DECPLQTY, DEX_ROW_ID FROM .SVC05015 WHERE USERID = @USERID_RS AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND RETDOCID BETWEEN @RETDOCID_RS AND @RETDOCID_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND RETREF BETWEEN @RETREF_RS AND @RETREF_RE AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE ORDER BY USERID ASC, SOPTYPE ASC, RETDOCID ASC, LNSEQNBR ASC, RETREF ASC, SOPNUMBE ASC END ELSE BEGIN SELECT TOP 25  USERID, RETDOCID, LNSEQNBR, RMA_Status, TECHID, RETTYPE, OFFID, CUSTNMBR, ADRSCODE, CUSTNAME, QUANTITY, ITEMNMBR, Return_Item_Number, Return_QTY, LOCNCODE, BINNMBR, ORDDOCID, CALLNBR, RETREF, CB_Packing_Slip, CHDFLAG, MKDTOPST, POSTED, ERMSGNBR, ERMSGTXT, ERMSGTX2, SOPTYPE, SOPNUMBE, UOFM, Return_U_Of_M, DECPLQTY, DEX_ROW_ID FROM .SVC05015 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND RETDOCID BETWEEN @RETDOCID_RS AND @RETDOCID_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND RETREF BETWEEN @RETREF_RS AND @RETREF_RE AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE ORDER BY USERID ASC, SOPTYPE ASC, RETDOCID ASC, LNSEQNBR ASC, RETREF ASC, SOPNUMBE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05015F_4] TO [DYNGRP]
GO
