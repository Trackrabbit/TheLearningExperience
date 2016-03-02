SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00710F_4] (@TECHID_RS char(11), @LINITMTYP_RS char(3), @SRCDOCTYP_RS smallint, @SRCDOCNUM_RS char(21), @TECHID_RE char(11), @LINITMTYP_RE char(3), @SRCDOCTYP_RE smallint, @SRCDOCNUM_RE char(21)) AS  set nocount on IF @TECHID_RS IS NULL BEGIN SELECT TOP 25  SRCDOCNUM, SRCDOCTYP, ITEMNMBR, LNITMSEQ, ITEMDESC, LOCNCODE, QTYORDER, TRNSFLOC, TECHID, QTYBACKO, UOFM, ATYALLOC, TRNSFQTY, STATIONID, OFFID, TRNFLAG, SVC_Disable_XFR_Grouping, USERID, ERMSGNBR, ERMSGTXT, ERMSGTX2, VENDORID, SVC_Address_Option, SVC_Misc_Address_Code, PRMDATE, MKDTOPST, LINITMTYP, CMPNTSEQ, DEX_ROW_ID FROM .SVC00710 ORDER BY TECHID ASC, LINITMTYP ASC, SRCDOCTYP ASC, SRCDOCNUM ASC, DEX_ROW_ID ASC END ELSE IF @TECHID_RS = @TECHID_RE BEGIN SELECT TOP 25  SRCDOCNUM, SRCDOCTYP, ITEMNMBR, LNITMSEQ, ITEMDESC, LOCNCODE, QTYORDER, TRNSFLOC, TECHID, QTYBACKO, UOFM, ATYALLOC, TRNSFQTY, STATIONID, OFFID, TRNFLAG, SVC_Disable_XFR_Grouping, USERID, ERMSGNBR, ERMSGTXT, ERMSGTX2, VENDORID, SVC_Address_Option, SVC_Misc_Address_Code, PRMDATE, MKDTOPST, LINITMTYP, CMPNTSEQ, DEX_ROW_ID FROM .SVC00710 WHERE TECHID = @TECHID_RS AND LINITMTYP BETWEEN @LINITMTYP_RS AND @LINITMTYP_RE AND SRCDOCTYP BETWEEN @SRCDOCTYP_RS AND @SRCDOCTYP_RE AND SRCDOCNUM BETWEEN @SRCDOCNUM_RS AND @SRCDOCNUM_RE ORDER BY TECHID ASC, LINITMTYP ASC, SRCDOCTYP ASC, SRCDOCNUM ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SRCDOCNUM, SRCDOCTYP, ITEMNMBR, LNITMSEQ, ITEMDESC, LOCNCODE, QTYORDER, TRNSFLOC, TECHID, QTYBACKO, UOFM, ATYALLOC, TRNSFQTY, STATIONID, OFFID, TRNFLAG, SVC_Disable_XFR_Grouping, USERID, ERMSGNBR, ERMSGTXT, ERMSGTX2, VENDORID, SVC_Address_Option, SVC_Misc_Address_Code, PRMDATE, MKDTOPST, LINITMTYP, CMPNTSEQ, DEX_ROW_ID FROM .SVC00710 WHERE TECHID BETWEEN @TECHID_RS AND @TECHID_RE AND LINITMTYP BETWEEN @LINITMTYP_RS AND @LINITMTYP_RE AND SRCDOCTYP BETWEEN @SRCDOCTYP_RS AND @SRCDOCTYP_RE AND SRCDOCNUM BETWEEN @SRCDOCNUM_RS AND @SRCDOCNUM_RE ORDER BY TECHID ASC, LINITMTYP ASC, SRCDOCTYP ASC, SRCDOCNUM ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00710F_4] TO [DYNGRP]
GO
