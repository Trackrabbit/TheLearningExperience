SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00710SS_4] (@TECHID char(11), @LINITMTYP char(3), @SRCDOCTYP smallint, @SRCDOCNUM char(21)) AS  set nocount on SELECT TOP 1  SRCDOCNUM, SRCDOCTYP, ITEMNMBR, LNITMSEQ, ITEMDESC, LOCNCODE, QTYORDER, TRNSFLOC, TECHID, QTYBACKO, UOFM, ATYALLOC, TRNSFQTY, STATIONID, OFFID, TRNFLAG, SVC_Disable_XFR_Grouping, USERID, ERMSGNBR, ERMSGTXT, ERMSGTX2, VENDORID, SVC_Address_Option, SVC_Misc_Address_Code, PRMDATE, MKDTOPST, LINITMTYP, CMPNTSEQ, DEX_ROW_ID FROM .SVC00710 WHERE TECHID = @TECHID AND LINITMTYP = @LINITMTYP AND SRCDOCTYP = @SRCDOCTYP AND SRCDOCNUM = @SRCDOCNUM ORDER BY TECHID ASC, LINITMTYP ASC, SRCDOCTYP ASC, SRCDOCNUM ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00710SS_4] TO [DYNGRP]
GO
