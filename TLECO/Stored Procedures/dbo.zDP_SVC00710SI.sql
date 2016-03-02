SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00710SI] (@SRCDOCNUM char(21), @SRCDOCTYP smallint, @ITEMNMBR char(31), @LNITMSEQ int, @ITEMDESC char(101), @LOCNCODE char(11), @QTYORDER numeric(19,5), @TRNSFLOC char(11), @TECHID char(11), @QTYBACKO numeric(19,5), @UOFM char(9), @ATYALLOC numeric(19,5), @TRNSFQTY numeric(19,5), @STATIONID char(11), @OFFID char(11), @TRNFLAG tinyint, @SVC_Disable_XFR_Grouping tinyint, @USERID char(15), @ERMSGNBR smallint, @ERMSGTXT char(255), @ERMSGTX2 char(255), @VENDORID char(15), @SVC_Address_Option smallint, @SVC_Misc_Address_Code char(15), @PRMDATE datetime, @MKDTOPST tinyint, @LINITMTYP char(3), @CMPNTSEQ int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00710 (SRCDOCNUM, SRCDOCTYP, ITEMNMBR, LNITMSEQ, ITEMDESC, LOCNCODE, QTYORDER, TRNSFLOC, TECHID, QTYBACKO, UOFM, ATYALLOC, TRNSFQTY, STATIONID, OFFID, TRNFLAG, SVC_Disable_XFR_Grouping, USERID, ERMSGNBR, ERMSGTXT, ERMSGTX2, VENDORID, SVC_Address_Option, SVC_Misc_Address_Code, PRMDATE, MKDTOPST, LINITMTYP, CMPNTSEQ) VALUES ( @SRCDOCNUM, @SRCDOCTYP, @ITEMNMBR, @LNITMSEQ, @ITEMDESC, @LOCNCODE, @QTYORDER, @TRNSFLOC, @TECHID, @QTYBACKO, @UOFM, @ATYALLOC, @TRNSFQTY, @STATIONID, @OFFID, @TRNFLAG, @SVC_Disable_XFR_Grouping, @USERID, @ERMSGNBR, @ERMSGTXT, @ERMSGTX2, @VENDORID, @SVC_Address_Option, @SVC_Misc_Address_Code, @PRMDATE, @MKDTOPST, @LINITMTYP, @CMPNTSEQ) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00710SI] TO [DYNGRP]
GO
