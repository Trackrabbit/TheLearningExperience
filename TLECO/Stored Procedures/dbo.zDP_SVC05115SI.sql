SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05115SI] (@USERID char(15), @RETDOCID char(15), @LNSEQNBR numeric(19,5), @RETTYPE char(11), @OFFID char(11), @TECHID char(11), @CUSTNMBR char(15), @ADRSCODE char(15), @CUSTNAME char(65), @Return_Item_Number char(31), @Return_QTY numeric(19,5), @Repair_Cost numeric(19,5), @Repair_Price numeric(19,5), @Originating_Repair_Cost numeric(19,5), @Originating_Repair_Price numeric(19,5), @MKDTOPST tinyint, @POSTED tinyint, @ERMSGNBR smallint, @ERMSGTXT char(255), @ERMSGTX2 char(255), @PRNTDTLD tinyint, @SVC_Bill_To_Address_Code char(15), @CSTPONBR char(21), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC05115 (USERID, RETDOCID, LNSEQNBR, RETTYPE, OFFID, TECHID, CUSTNMBR, ADRSCODE, CUSTNAME, Return_Item_Number, Return_QTY, Repair_Cost, Repair_Price, Originating_Repair_Cost, Originating_Repair_Price, MKDTOPST, POSTED, ERMSGNBR, ERMSGTXT, ERMSGTX2, PRNTDTLD, SVC_Bill_To_Address_Code, CSTPONBR) VALUES ( @USERID, @RETDOCID, @LNSEQNBR, @RETTYPE, @OFFID, @TECHID, @CUSTNMBR, @ADRSCODE, @CUSTNAME, @Return_Item_Number, @Return_QTY, @Repair_Cost, @Repair_Price, @Originating_Repair_Cost, @Originating_Repair_Price, @MKDTOPST, @POSTED, @ERMSGNBR, @ERMSGTXT, @ERMSGTX2, @PRNTDTLD, @SVC_Bill_To_Address_Code, @CSTPONBR) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05115SI] TO [DYNGRP]
GO
