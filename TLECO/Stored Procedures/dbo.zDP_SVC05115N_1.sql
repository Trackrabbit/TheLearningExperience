SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05115N_1] (@BS int, @USERID char(15), @RETDOCID char(15), @LNSEQNBR numeric(19,5), @USERID_RS char(15), @RETDOCID_RS char(15), @LNSEQNBR_RS numeric(19,5), @USERID_RE char(15), @RETDOCID_RE char(15), @LNSEQNBR_RE numeric(19,5)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, RETDOCID, LNSEQNBR, RETTYPE, OFFID, TECHID, CUSTNMBR, ADRSCODE, CUSTNAME, Return_Item_Number, Return_QTY, Repair_Cost, Repair_Price, Originating_Repair_Cost, Originating_Repair_Price, MKDTOPST, POSTED, ERMSGNBR, ERMSGTXT, ERMSGTX2, PRNTDTLD, SVC_Bill_To_Address_Code, CSTPONBR, DEX_ROW_ID FROM .SVC05115 WHERE ( USERID = @USERID AND RETDOCID = @RETDOCID AND LNSEQNBR > @LNSEQNBR OR USERID = @USERID AND RETDOCID > @RETDOCID OR USERID > @USERID ) ORDER BY USERID ASC, RETDOCID ASC, LNSEQNBR ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, RETDOCID, LNSEQNBR, RETTYPE, OFFID, TECHID, CUSTNMBR, ADRSCODE, CUSTNAME, Return_Item_Number, Return_QTY, Repair_Cost, Repair_Price, Originating_Repair_Cost, Originating_Repair_Price, MKDTOPST, POSTED, ERMSGNBR, ERMSGTXT, ERMSGTX2, PRNTDTLD, SVC_Bill_To_Address_Code, CSTPONBR, DEX_ROW_ID FROM .SVC05115 WHERE USERID = @USERID_RS AND RETDOCID BETWEEN @RETDOCID_RS AND @RETDOCID_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND ( USERID = @USERID AND RETDOCID = @RETDOCID AND LNSEQNBR > @LNSEQNBR OR USERID = @USERID AND RETDOCID > @RETDOCID OR USERID > @USERID ) ORDER BY USERID ASC, RETDOCID ASC, LNSEQNBR ASC END ELSE BEGIN SELECT TOP 25  USERID, RETDOCID, LNSEQNBR, RETTYPE, OFFID, TECHID, CUSTNMBR, ADRSCODE, CUSTNAME, Return_Item_Number, Return_QTY, Repair_Cost, Repair_Price, Originating_Repair_Cost, Originating_Repair_Price, MKDTOPST, POSTED, ERMSGNBR, ERMSGTXT, ERMSGTX2, PRNTDTLD, SVC_Bill_To_Address_Code, CSTPONBR, DEX_ROW_ID FROM .SVC05115 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND RETDOCID BETWEEN @RETDOCID_RS AND @RETDOCID_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND ( USERID = @USERID AND RETDOCID = @RETDOCID AND LNSEQNBR > @LNSEQNBR OR USERID = @USERID AND RETDOCID > @RETDOCID OR USERID > @USERID ) ORDER BY USERID ASC, RETDOCID ASC, LNSEQNBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05115N_1] TO [DYNGRP]
GO