SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[ASIEXP09] AS SELECT   A.VCHRNMBR,  A.VENDORID,  A.DOCTYPE,  1 as DCSTATUS,  A.DOCDATE,  A.DOCNUMBR,  A.DOCAMNT,  A.CURTRXAM,  A.DISTKNAM,  0.00000 as DISCAMNT,  A.DSCDLRAM,  A.BACHNUMB,  '' as TRXSORCE,  A.BCHSOURC,  A.DISCDATE,  A.DUEDATE,  A.PORDNMBR,  A.TEN99AMNT,  A.WROFAMNT,  A.DISAMTAV,  A.TRXDSCRN,  A.UN1099AM,  A.BKTPURAM,  A.BKTFRTAM,  A.BKTMSCAM,  0 as VOIDED,  0 as HOLD,  A.CHEKBKID,  '1900-01-01 00:00:00.000' as DINVPDOF,  A.PPSAMDED,  A.PPSTAXRT,  A.PGRAMSBJ,  A.GSTDSAMT,  A.POSTEDDT,  A.PTDUSRID,  A.MODIFDT,  A.MDFUSRID,  A.CARDNAME,  A.PRCHAMNT,  A.TRDISAMT,  A.MSCCHAMT,  A.FRTAMNT,  A.TAXAMNT,  0.00000 as TTLPYMTS,  A.CURNCYID,  A.PYMTRMID,  A.SHIPMTHD,  A.TAXSCHID,  A.PCHSCHID,  A.FRTSCHID,  A.MSCSCHID,  A.PSTGDATE,  0.00000 as DISAVTKN,  A.CNTRLTYP,  A.NOTEINDX,  A.PRCTDISC,  A.RETNAGAM,  A.APLYWITH,  A.CORRCTN,  A.DocPrinted,  A.ECTRX,  A.Electronic,  A.PRCHDATE,  A.SIMPLIFD,  A.TaxInvReqd,  '' as VNDCHKNM,  A.BNKRCAMT,  A.VADCDTRO FROM PM10000 A UNION ALL SELECT   A.VCHRNMBR,  A.VENDORID,  A.DOCTYPE,  2 as DCSTATUS,  A.DOCDATE,  A.DOCNUMBR,  A.DOCAMNT,  A.CURTRXAM,  A.DISTKNAM,  A.DISCAMNT,  A.DSCDLRAM,  A.BACHNUMB,  A.TRXSORCE,  A.BCHSOURC,  A.DISCDATE,  A.DUEDATE,  A.PORDNMBR,  A.TEN99AMNT,  A.WROFAMNT,  A.DISAMTAV,  A.TRXDSCRN,  A.UN1099AM,  A.BKTPURAM,  A.BKTFRTAM,  A.BKTMSCAM,  A.VOIDED,  A.HOLD,  A.CHEKBKID,  A.DINVPDOF,  A.PPSAMDED,  A.PPSTAXRT,  A.PGRAMSBJ,  A.GSTDSAMT,  A.POSTEDDT,  A.PTDUSRID,  A.MODIFDT,  A.MDFUSRID,  A.CARDNAME,  A.PRCHAMNT,  A.TRDISAMT,  A.MSCCHAMT,  A.FRTAMNT,  A.TAXAMNT,  A.TTLPYMTS,  A.CURNCYID,  A.PYMTRMID,  A.SHIPMTHD,  A.TAXSCHID,  A.PCHSCHID,  A.FRTSCHID,  A.MSCSCHID,  A.PSTGDATE,  A.DISAVTKN,  A.CNTRLTYP,  A.NOTEINDX,  A.PRCTDISC,  A.RETNAGAM,  A.APLYWITH,  A.CORRCTN,  A.DocPrinted,  A.ECTRX,  A.Electronic,  A.PRCHDATE,  A.SIMPLIFD,  A.TaxInvReqd,  A.VNDCHKNM,  A.BNKRCAMT,  A.VADCDTRO FROM PM20000 A UNION ALL SELECT   A.VCHRNMBR,  A.VENDORID,  A.DOCTYPE,  3 as DCSTATUS,  A.DOCDATE,  A.DOCNUMBR,  A.DOCAMNT,  A.CURTRXAM,  A.DISTKNAM,  A.DISCAMNT,  A.DSCDLRAM,  A.BACHNUMB,  A.TRXSORCE,  A.BCHSOURC,  A.DISCDATE,  A.DUEDATE,  A.PORDNMBR,  A.TEN99AMNT,  A.WROFAMNT,  A.DISAMTAV,  A.TRXDSCRN,  A.UN1099AM,  A.BKTPURAM,  A.BKTFRTAM,  A.BKTMSCAM,  A.VOIDED,  A.HOLD,  A.CHEKBKID,  A.DINVPDOF,  A.PPSAMDED,  A.PPSTAXRT,  A.PGRAMSBJ,  A.GSTDSAMT,  A.POSTEDDT,  A.PTDUSRID,  A.MODIFDT,  A.MDFUSRID,  A.CARDNAME,  A.PRCHAMNT,  A.TRDISAMT,  A.MSCCHAMT,  A.FRTAMNT,  A.TAXAMNT,  A.TTLPYMTS,  A.CURNCYID,  A.PYMTRMID,  A.SHIPMTHD,  A.TAXSCHID,  A.PCHSCHID,  A.FRTSCHID,  A.MSCSCHID,  A.PSTGDATE,  A.DISAVTKN,  A.CNTRLTYP,  A.NOTEINDX,  A.PRCTDISC,  A.RETNAGAM,  A.APLYWITH,  A.CORRCTN,  A.DocPrinted,  A.ECTRX,  A.Electronic,  A.PRCHDATE,  A.SIMPLIFD,  A.TaxInvReqd,  A.VNDCHKNM,  0.00000 as BNKRCAMT,  A.VADCDTRO FROM PM30200 A   
GO
GRANT SELECT ON  [dbo].[ASIEXP09] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ASIEXP09] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ASIEXP09] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ASIEXP09] TO [DYNGRP]
GO