SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05015N_3] (@BS int, @USERID char(15), @POSTED tinyint, @CUSTNMBR char(15), @ADRSCODE char(15), @RETTYPE char(11), @RETREF char(31), @RETDOCID char(15), @LNSEQNBR numeric(19,5), @USERID_RS char(15), @POSTED_RS tinyint, @CUSTNMBR_RS char(15), @ADRSCODE_RS char(15), @RETTYPE_RS char(11), @RETREF_RS char(31), @RETDOCID_RS char(15), @LNSEQNBR_RS numeric(19,5), @USERID_RE char(15), @POSTED_RE tinyint, @CUSTNMBR_RE char(15), @ADRSCODE_RE char(15), @RETTYPE_RE char(11), @RETREF_RE char(31), @RETDOCID_RE char(15), @LNSEQNBR_RE numeric(19,5)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, RETDOCID, LNSEQNBR, RMA_Status, TECHID, RETTYPE, OFFID, CUSTNMBR, ADRSCODE, CUSTNAME, QUANTITY, ITEMNMBR, Return_Item_Number, Return_QTY, LOCNCODE, BINNMBR, ORDDOCID, CALLNBR, RETREF, CB_Packing_Slip, CHDFLAG, MKDTOPST, POSTED, ERMSGNBR, ERMSGTXT, ERMSGTX2, SOPTYPE, SOPNUMBE, UOFM, Return_U_Of_M, DECPLQTY, DEX_ROW_ID FROM .SVC05015 WHERE ( USERID = @USERID AND POSTED = @POSTED AND CUSTNMBR = @CUSTNMBR AND ADRSCODE = @ADRSCODE AND RETTYPE = @RETTYPE AND RETREF = @RETREF AND RETDOCID = @RETDOCID AND LNSEQNBR > @LNSEQNBR OR USERID = @USERID AND POSTED = @POSTED AND CUSTNMBR = @CUSTNMBR AND ADRSCODE = @ADRSCODE AND RETTYPE = @RETTYPE AND RETREF = @RETREF AND RETDOCID > @RETDOCID OR USERID = @USERID AND POSTED = @POSTED AND CUSTNMBR = @CUSTNMBR AND ADRSCODE = @ADRSCODE AND RETTYPE = @RETTYPE AND RETREF > @RETREF OR USERID = @USERID AND POSTED = @POSTED AND CUSTNMBR = @CUSTNMBR AND ADRSCODE = @ADRSCODE AND RETTYPE > @RETTYPE OR USERID = @USERID AND POSTED = @POSTED AND CUSTNMBR = @CUSTNMBR AND ADRSCODE > @ADRSCODE OR USERID = @USERID AND POSTED = @POSTED AND CUSTNMBR > @CUSTNMBR OR USERID = @USERID AND POSTED > @POSTED OR USERID > @USERID ) ORDER BY USERID ASC, POSTED ASC, CUSTNMBR ASC, ADRSCODE ASC, RETTYPE ASC, RETREF ASC, RETDOCID ASC, LNSEQNBR ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, RETDOCID, LNSEQNBR, RMA_Status, TECHID, RETTYPE, OFFID, CUSTNMBR, ADRSCODE, CUSTNAME, QUANTITY, ITEMNMBR, Return_Item_Number, Return_QTY, LOCNCODE, BINNMBR, ORDDOCID, CALLNBR, RETREF, CB_Packing_Slip, CHDFLAG, MKDTOPST, POSTED, ERMSGNBR, ERMSGTXT, ERMSGTX2, SOPTYPE, SOPNUMBE, UOFM, Return_U_Of_M, DECPLQTY, DEX_ROW_ID FROM .SVC05015 WHERE USERID = @USERID_RS AND POSTED BETWEEN @POSTED_RS AND @POSTED_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND ADRSCODE BETWEEN @ADRSCODE_RS AND @ADRSCODE_RE AND RETTYPE BETWEEN @RETTYPE_RS AND @RETTYPE_RE AND RETREF BETWEEN @RETREF_RS AND @RETREF_RE AND RETDOCID BETWEEN @RETDOCID_RS AND @RETDOCID_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND ( USERID = @USERID AND POSTED = @POSTED AND CUSTNMBR = @CUSTNMBR AND ADRSCODE = @ADRSCODE AND RETTYPE = @RETTYPE AND RETREF = @RETREF AND RETDOCID = @RETDOCID AND LNSEQNBR > @LNSEQNBR OR USERID = @USERID AND POSTED = @POSTED AND CUSTNMBR = @CUSTNMBR AND ADRSCODE = @ADRSCODE AND RETTYPE = @RETTYPE AND RETREF = @RETREF AND RETDOCID > @RETDOCID OR USERID = @USERID AND POSTED = @POSTED AND CUSTNMBR = @CUSTNMBR AND ADRSCODE = @ADRSCODE AND RETTYPE = @RETTYPE AND RETREF > @RETREF OR USERID = @USERID AND POSTED = @POSTED AND CUSTNMBR = @CUSTNMBR AND ADRSCODE = @ADRSCODE AND RETTYPE > @RETTYPE OR USERID = @USERID AND POSTED = @POSTED AND CUSTNMBR = @CUSTNMBR AND ADRSCODE > @ADRSCODE OR USERID = @USERID AND POSTED = @POSTED AND CUSTNMBR > @CUSTNMBR OR USERID = @USERID AND POSTED > @POSTED OR USERID > @USERID ) ORDER BY USERID ASC, POSTED ASC, CUSTNMBR ASC, ADRSCODE ASC, RETTYPE ASC, RETREF ASC, RETDOCID ASC, LNSEQNBR ASC END ELSE BEGIN SELECT TOP 25  USERID, RETDOCID, LNSEQNBR, RMA_Status, TECHID, RETTYPE, OFFID, CUSTNMBR, ADRSCODE, CUSTNAME, QUANTITY, ITEMNMBR, Return_Item_Number, Return_QTY, LOCNCODE, BINNMBR, ORDDOCID, CALLNBR, RETREF, CB_Packing_Slip, CHDFLAG, MKDTOPST, POSTED, ERMSGNBR, ERMSGTXT, ERMSGTX2, SOPTYPE, SOPNUMBE, UOFM, Return_U_Of_M, DECPLQTY, DEX_ROW_ID FROM .SVC05015 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND POSTED BETWEEN @POSTED_RS AND @POSTED_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND ADRSCODE BETWEEN @ADRSCODE_RS AND @ADRSCODE_RE AND RETTYPE BETWEEN @RETTYPE_RS AND @RETTYPE_RE AND RETREF BETWEEN @RETREF_RS AND @RETREF_RE AND RETDOCID BETWEEN @RETDOCID_RS AND @RETDOCID_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND ( USERID = @USERID AND POSTED = @POSTED AND CUSTNMBR = @CUSTNMBR AND ADRSCODE = @ADRSCODE AND RETTYPE = @RETTYPE AND RETREF = @RETREF AND RETDOCID = @RETDOCID AND LNSEQNBR > @LNSEQNBR OR USERID = @USERID AND POSTED = @POSTED AND CUSTNMBR = @CUSTNMBR AND ADRSCODE = @ADRSCODE AND RETTYPE = @RETTYPE AND RETREF = @RETREF AND RETDOCID > @RETDOCID OR USERID = @USERID AND POSTED = @POSTED AND CUSTNMBR = @CUSTNMBR AND ADRSCODE = @ADRSCODE AND RETTYPE = @RETTYPE AND RETREF > @RETREF OR USERID = @USERID AND POSTED = @POSTED AND CUSTNMBR = @CUSTNMBR AND ADRSCODE = @ADRSCODE AND RETTYPE > @RETTYPE OR USERID = @USERID AND POSTED = @POSTED AND CUSTNMBR = @CUSTNMBR AND ADRSCODE > @ADRSCODE OR USERID = @USERID AND POSTED = @POSTED AND CUSTNMBR > @CUSTNMBR OR USERID = @USERID AND POSTED > @POSTED OR USERID > @USERID ) ORDER BY USERID ASC, POSTED ASC, CUSTNMBR ASC, ADRSCODE ASC, RETTYPE ASC, RETREF ASC, RETDOCID ASC, LNSEQNBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05015N_3] TO [DYNGRP]
GO
