SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP30100L_2] (@VENDORID_RS char(15), @PONUMBER_RS char(17), @VENDORID_RE char(15), @PONUMBER_RE char(17)) AS  set nocount on IF @VENDORID_RS IS NULL BEGIN SELECT TOP 25  PONUMBER, POSTATUS, STATGRP, POTYPE, USER2ENT, CONFIRM1, DOCDATE, LSTEDTDT, LSTPRTDT, PRMDATE, PRMSHPDTE, REQDATE, REQTNDT, SHIPMTHD, TXRGNNUM, REMSUBTO, SUBTOTAL, TRDISAMT, TRDPCTPR, FRTAMNT, MSCCHAMT, TAXAMNT, VENDORID, VENDNAME, MINORDER, VADCDPAD, CMPANYID, PRBTADCD, PRSTADCD, CMPNYNAM, CONTACT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, PYMTRMID, DSCDLRAM, DSCPCTAM, DISAMTAV, DISCDATE, DUEDATE, CUSTNMBR, TIMESPRT, CREATDDT, MODIFDT, PONOTIDS_1, PONOTIDS_2, PONOTIDS_3, PONOTIDS_4, PONOTIDS_5, PONOTIDS_6, PONOTIDS_7, PONOTIDS_8, PONOTIDS_9, PONOTIDS_10, PONOTIDS_11, PONOTIDS_12, PONOTIDS_13, PONOTIDS_14, PONOTIDS_15, TRXSORCE, COMMNTID, CANCSUB, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RATECALC, DENXRATE, MCTRXSTT, OREMSUBT, ORSUBTOT, Originating_Canceled_Sub, ORTDISAM, ORFRTAMT, OMISCAMT, ORTAXAMT, ORDDLRAT, ODISAMTAV, BUYERID, ALLOWSOCMTS, DISGRPER, DUEGRPER, Revision_Number, TAXSCHID, TXSCHSRC, BSIVCTTL, Purchase_Freight_Taxable, Purchase_Misc_Taxable, FRTSCHID, MSCSCHID, FRTTXAMT, ORFRTTAX, MSCTXAMT, ORMSCTAX, BCKTXAMT, OBTAXAMT, BackoutFreightTaxAmt, OrigBackoutFreightTaxAmt, BackoutMiscTaxAmt, OrigBackoutMiscTaxAmt, Flags, POPCONTNUM, CONTENDDTE, CNTRLBLKTBY, PURCHCMPNYNAM, PURCHCONTACT, PURCHADDRESS1, PURCHADDRESS2, PURCHADDRESS3, PURCHCITY, PURCHSTATE, PURCHZIPCODE, PURCHCCode, PURCHCOUNTRY, PURCHPHONE1, PURCHPHONE2, PURCHPHONE3, PURCHFAX, BLNKTLINEEXTQTYSUM, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, Print_Phone_NumberGB, PrepaymentAmount, OriginatingPrepaymentAmt, DEX_ROW_TS, DEX_ROW_ID FROM .POP30100 ORDER BY VENDORID DESC, PONUMBER DESC END ELSE IF @VENDORID_RS = @VENDORID_RE BEGIN SELECT TOP 25  PONUMBER, POSTATUS, STATGRP, POTYPE, USER2ENT, CONFIRM1, DOCDATE, LSTEDTDT, LSTPRTDT, PRMDATE, PRMSHPDTE, REQDATE, REQTNDT, SHIPMTHD, TXRGNNUM, REMSUBTO, SUBTOTAL, TRDISAMT, TRDPCTPR, FRTAMNT, MSCCHAMT, TAXAMNT, VENDORID, VENDNAME, MINORDER, VADCDPAD, CMPANYID, PRBTADCD, PRSTADCD, CMPNYNAM, CONTACT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, PYMTRMID, DSCDLRAM, DSCPCTAM, DISAMTAV, DISCDATE, DUEDATE, CUSTNMBR, TIMESPRT, CREATDDT, MODIFDT, PONOTIDS_1, PONOTIDS_2, PONOTIDS_3, PONOTIDS_4, PONOTIDS_5, PONOTIDS_6, PONOTIDS_7, PONOTIDS_8, PONOTIDS_9, PONOTIDS_10, PONOTIDS_11, PONOTIDS_12, PONOTIDS_13, PONOTIDS_14, PONOTIDS_15, TRXSORCE, COMMNTID, CANCSUB, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RATECALC, DENXRATE, MCTRXSTT, OREMSUBT, ORSUBTOT, Originating_Canceled_Sub, ORTDISAM, ORFRTAMT, OMISCAMT, ORTAXAMT, ORDDLRAT, ODISAMTAV, BUYERID, ALLOWSOCMTS, DISGRPER, DUEGRPER, Revision_Number, TAXSCHID, TXSCHSRC, BSIVCTTL, Purchase_Freight_Taxable, Purchase_Misc_Taxable, FRTSCHID, MSCSCHID, FRTTXAMT, ORFRTTAX, MSCTXAMT, ORMSCTAX, BCKTXAMT, OBTAXAMT, BackoutFreightTaxAmt, OrigBackoutFreightTaxAmt, BackoutMiscTaxAmt, OrigBackoutMiscTaxAmt, Flags, POPCONTNUM, CONTENDDTE, CNTRLBLKTBY, PURCHCMPNYNAM, PURCHCONTACT, PURCHADDRESS1, PURCHADDRESS2, PURCHADDRESS3, PURCHCITY, PURCHSTATE, PURCHZIPCODE, PURCHCCode, PURCHCOUNTRY, PURCHPHONE1, PURCHPHONE2, PURCHPHONE3, PURCHFAX, BLNKTLINEEXTQTYSUM, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, Print_Phone_NumberGB, PrepaymentAmount, OriginatingPrepaymentAmt, DEX_ROW_TS, DEX_ROW_ID FROM .POP30100 WHERE VENDORID = @VENDORID_RS AND PONUMBER BETWEEN @PONUMBER_RS AND @PONUMBER_RE ORDER BY VENDORID DESC, PONUMBER DESC END ELSE BEGIN SELECT TOP 25  PONUMBER, POSTATUS, STATGRP, POTYPE, USER2ENT, CONFIRM1, DOCDATE, LSTEDTDT, LSTPRTDT, PRMDATE, PRMSHPDTE, REQDATE, REQTNDT, SHIPMTHD, TXRGNNUM, REMSUBTO, SUBTOTAL, TRDISAMT, TRDPCTPR, FRTAMNT, MSCCHAMT, TAXAMNT, VENDORID, VENDNAME, MINORDER, VADCDPAD, CMPANYID, PRBTADCD, PRSTADCD, CMPNYNAM, CONTACT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, PYMTRMID, DSCDLRAM, DSCPCTAM, DISAMTAV, DISCDATE, DUEDATE, CUSTNMBR, TIMESPRT, CREATDDT, MODIFDT, PONOTIDS_1, PONOTIDS_2, PONOTIDS_3, PONOTIDS_4, PONOTIDS_5, PONOTIDS_6, PONOTIDS_7, PONOTIDS_8, PONOTIDS_9, PONOTIDS_10, PONOTIDS_11, PONOTIDS_12, PONOTIDS_13, PONOTIDS_14, PONOTIDS_15, TRXSORCE, COMMNTID, CANCSUB, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RATECALC, DENXRATE, MCTRXSTT, OREMSUBT, ORSUBTOT, Originating_Canceled_Sub, ORTDISAM, ORFRTAMT, OMISCAMT, ORTAXAMT, ORDDLRAT, ODISAMTAV, BUYERID, ALLOWSOCMTS, DISGRPER, DUEGRPER, Revision_Number, TAXSCHID, TXSCHSRC, BSIVCTTL, Purchase_Freight_Taxable, Purchase_Misc_Taxable, FRTSCHID, MSCSCHID, FRTTXAMT, ORFRTTAX, MSCTXAMT, ORMSCTAX, BCKTXAMT, OBTAXAMT, BackoutFreightTaxAmt, OrigBackoutFreightTaxAmt, BackoutMiscTaxAmt, OrigBackoutMiscTaxAmt, Flags, POPCONTNUM, CONTENDDTE, CNTRLBLKTBY, PURCHCMPNYNAM, PURCHCONTACT, PURCHADDRESS1, PURCHADDRESS2, PURCHADDRESS3, PURCHCITY, PURCHSTATE, PURCHZIPCODE, PURCHCCode, PURCHCOUNTRY, PURCHPHONE1, PURCHPHONE2, PURCHPHONE3, PURCHFAX, BLNKTLINEEXTQTYSUM, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, Print_Phone_NumberGB, PrepaymentAmount, OriginatingPrepaymentAmt, DEX_ROW_TS, DEX_ROW_ID FROM .POP30100 WHERE VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND PONUMBER BETWEEN @PONUMBER_RS AND @PONUMBER_RE ORDER BY VENDORID DESC, PONUMBER DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP30100L_2] TO [DYNGRP]
GO
