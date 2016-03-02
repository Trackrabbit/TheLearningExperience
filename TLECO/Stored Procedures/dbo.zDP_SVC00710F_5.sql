SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00710F_5] (@USERID_RS char(15), @TRNFLAG_RS tinyint, @LOCNCODE_RS char(11), @SRCDOCNUM_RS char(21), @SRCDOCTYP_RS smallint, @ITEMNMBR_RS char(31), @LNITMSEQ_RS int, @CMPNTSEQ_RS int, @USERID_RE char(15), @TRNFLAG_RE tinyint, @LOCNCODE_RE char(11), @SRCDOCNUM_RE char(21), @SRCDOCTYP_RE smallint, @ITEMNMBR_RE char(31), @LNITMSEQ_RE int, @CMPNTSEQ_RE int) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  SRCDOCNUM, SRCDOCTYP, ITEMNMBR, LNITMSEQ, ITEMDESC, LOCNCODE, QTYORDER, TRNSFLOC, TECHID, QTYBACKO, UOFM, ATYALLOC, TRNSFQTY, STATIONID, OFFID, TRNFLAG, SVC_Disable_XFR_Grouping, USERID, ERMSGNBR, ERMSGTXT, ERMSGTX2, VENDORID, SVC_Address_Option, SVC_Misc_Address_Code, PRMDATE, MKDTOPST, LINITMTYP, CMPNTSEQ, DEX_ROW_ID FROM .SVC00710 ORDER BY USERID ASC, TRNFLAG ASC, LOCNCODE ASC, SRCDOCNUM ASC, SRCDOCTYP ASC, ITEMNMBR ASC, LNITMSEQ ASC, CMPNTSEQ ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  SRCDOCNUM, SRCDOCTYP, ITEMNMBR, LNITMSEQ, ITEMDESC, LOCNCODE, QTYORDER, TRNSFLOC, TECHID, QTYBACKO, UOFM, ATYALLOC, TRNSFQTY, STATIONID, OFFID, TRNFLAG, SVC_Disable_XFR_Grouping, USERID, ERMSGNBR, ERMSGTXT, ERMSGTX2, VENDORID, SVC_Address_Option, SVC_Misc_Address_Code, PRMDATE, MKDTOPST, LINITMTYP, CMPNTSEQ, DEX_ROW_ID FROM .SVC00710 WHERE USERID = @USERID_RS AND TRNFLAG BETWEEN @TRNFLAG_RS AND @TRNFLAG_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND SRCDOCNUM BETWEEN @SRCDOCNUM_RS AND @SRCDOCNUM_RE AND SRCDOCTYP BETWEEN @SRCDOCTYP_RS AND @SRCDOCTYP_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND CMPNTSEQ BETWEEN @CMPNTSEQ_RS AND @CMPNTSEQ_RE ORDER BY USERID ASC, TRNFLAG ASC, LOCNCODE ASC, SRCDOCNUM ASC, SRCDOCTYP ASC, ITEMNMBR ASC, LNITMSEQ ASC, CMPNTSEQ ASC END ELSE BEGIN SELECT TOP 25  SRCDOCNUM, SRCDOCTYP, ITEMNMBR, LNITMSEQ, ITEMDESC, LOCNCODE, QTYORDER, TRNSFLOC, TECHID, QTYBACKO, UOFM, ATYALLOC, TRNSFQTY, STATIONID, OFFID, TRNFLAG, SVC_Disable_XFR_Grouping, USERID, ERMSGNBR, ERMSGTXT, ERMSGTX2, VENDORID, SVC_Address_Option, SVC_Misc_Address_Code, PRMDATE, MKDTOPST, LINITMTYP, CMPNTSEQ, DEX_ROW_ID FROM .SVC00710 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND TRNFLAG BETWEEN @TRNFLAG_RS AND @TRNFLAG_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND SRCDOCNUM BETWEEN @SRCDOCNUM_RS AND @SRCDOCNUM_RE AND SRCDOCTYP BETWEEN @SRCDOCTYP_RS AND @SRCDOCTYP_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND CMPNTSEQ BETWEEN @CMPNTSEQ_RS AND @CMPNTSEQ_RE ORDER BY USERID ASC, TRNFLAG ASC, LOCNCODE ASC, SRCDOCNUM ASC, SRCDOCTYP ASC, ITEMNMBR ASC, LNITMSEQ ASC, CMPNTSEQ ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00710F_5] TO [DYNGRP]
GO
