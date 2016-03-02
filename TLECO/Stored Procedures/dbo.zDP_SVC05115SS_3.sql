SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05115SS_3] (@USERID char(15), @MKDTOPST tinyint, @CUSTNMBR char(15), @ADRSCODE char(15), @RETTYPE char(11), @RETDOCID char(15), @LNSEQNBR numeric(19,5)) AS  set nocount on SELECT TOP 1  USERID, RETDOCID, LNSEQNBR, RETTYPE, OFFID, TECHID, CUSTNMBR, ADRSCODE, CUSTNAME, Return_Item_Number, Return_QTY, Repair_Cost, Repair_Price, Originating_Repair_Cost, Originating_Repair_Price, MKDTOPST, POSTED, ERMSGNBR, ERMSGTXT, ERMSGTX2, PRNTDTLD, SVC_Bill_To_Address_Code, CSTPONBR, DEX_ROW_ID FROM .SVC05115 WHERE USERID = @USERID AND MKDTOPST = @MKDTOPST AND CUSTNMBR = @CUSTNMBR AND ADRSCODE = @ADRSCODE AND RETTYPE = @RETTYPE AND RETDOCID = @RETDOCID AND LNSEQNBR = @LNSEQNBR ORDER BY USERID ASC, MKDTOPST ASC, CUSTNMBR ASC, ADRSCODE ASC, RETTYPE ASC, RETDOCID ASC, LNSEQNBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05115SS_3] TO [DYNGRP]
GO