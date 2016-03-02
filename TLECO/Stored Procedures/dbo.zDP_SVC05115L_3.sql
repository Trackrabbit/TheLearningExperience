SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05115L_3] (@USERID_RS char(15), @MKDTOPST_RS tinyint, @CUSTNMBR_RS char(15), @ADRSCODE_RS char(15), @RETTYPE_RS char(11), @RETDOCID_RS char(15), @LNSEQNBR_RS numeric(19,5), @USERID_RE char(15), @MKDTOPST_RE tinyint, @CUSTNMBR_RE char(15), @ADRSCODE_RE char(15), @RETTYPE_RE char(11), @RETDOCID_RE char(15), @LNSEQNBR_RE numeric(19,5)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, RETDOCID, LNSEQNBR, RETTYPE, OFFID, TECHID, CUSTNMBR, ADRSCODE, CUSTNAME, Return_Item_Number, Return_QTY, Repair_Cost, Repair_Price, Originating_Repair_Cost, Originating_Repair_Price, MKDTOPST, POSTED, ERMSGNBR, ERMSGTXT, ERMSGTX2, PRNTDTLD, SVC_Bill_To_Address_Code, CSTPONBR, DEX_ROW_ID FROM .SVC05115 ORDER BY USERID DESC, MKDTOPST DESC, CUSTNMBR DESC, ADRSCODE DESC, RETTYPE DESC, RETDOCID DESC, LNSEQNBR DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, RETDOCID, LNSEQNBR, RETTYPE, OFFID, TECHID, CUSTNMBR, ADRSCODE, CUSTNAME, Return_Item_Number, Return_QTY, Repair_Cost, Repair_Price, Originating_Repair_Cost, Originating_Repair_Price, MKDTOPST, POSTED, ERMSGNBR, ERMSGTXT, ERMSGTX2, PRNTDTLD, SVC_Bill_To_Address_Code, CSTPONBR, DEX_ROW_ID FROM .SVC05115 WHERE USERID = @USERID_RS AND MKDTOPST BETWEEN @MKDTOPST_RS AND @MKDTOPST_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND ADRSCODE BETWEEN @ADRSCODE_RS AND @ADRSCODE_RE AND RETTYPE BETWEEN @RETTYPE_RS AND @RETTYPE_RE AND RETDOCID BETWEEN @RETDOCID_RS AND @RETDOCID_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE ORDER BY USERID DESC, MKDTOPST DESC, CUSTNMBR DESC, ADRSCODE DESC, RETTYPE DESC, RETDOCID DESC, LNSEQNBR DESC END ELSE BEGIN SELECT TOP 25  USERID, RETDOCID, LNSEQNBR, RETTYPE, OFFID, TECHID, CUSTNMBR, ADRSCODE, CUSTNAME, Return_Item_Number, Return_QTY, Repair_Cost, Repair_Price, Originating_Repair_Cost, Originating_Repair_Price, MKDTOPST, POSTED, ERMSGNBR, ERMSGTXT, ERMSGTX2, PRNTDTLD, SVC_Bill_To_Address_Code, CSTPONBR, DEX_ROW_ID FROM .SVC05115 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND MKDTOPST BETWEEN @MKDTOPST_RS AND @MKDTOPST_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND ADRSCODE BETWEEN @ADRSCODE_RS AND @ADRSCODE_RE AND RETTYPE BETWEEN @RETTYPE_RS AND @RETTYPE_RE AND RETDOCID BETWEEN @RETDOCID_RS AND @RETDOCID_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE ORDER BY USERID DESC, MKDTOPST DESC, CUSTNMBR DESC, ADRSCODE DESC, RETTYPE DESC, RETDOCID DESC, LNSEQNBR DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05115L_3] TO [DYNGRP]
GO
