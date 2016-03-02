SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TX00201L_1] (@TAXDTLID_RS char(15), @TAXDTLID_RE char(15)) AS  set nocount on IF @TAXDTLID_RS IS NULL BEGIN SELECT TOP 25  TAXDTLID, TXDTLDSC, TXDTLTYP, ACTINDX, TXIDNMBR, TXDTLBSE, TXDTLPCT, TXDTLAMT, TDTLRNDG, TXDBODTL, TDTABMIN, TDTABMAX, TDTAXMIN, TDTAXMAX, TDRNGTYP, TXDTQUAL, TDTAXTAX, TXDTLPDC, TXDTLPCH, TXDXDISC, CMNYTXID, NOTEINDX, NAME, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, TXUSRDF1, TXUSRDF2, VATREGTX, TaxInvReqd, TaxPostToAcct, TaxBoxes, IGNRGRSSAMNT, TDTABPCT, DEX_ROW_ID FROM .TX00201 ORDER BY TAXDTLID DESC END ELSE IF @TAXDTLID_RS = @TAXDTLID_RE BEGIN SELECT TOP 25  TAXDTLID, TXDTLDSC, TXDTLTYP, ACTINDX, TXIDNMBR, TXDTLBSE, TXDTLPCT, TXDTLAMT, TDTLRNDG, TXDBODTL, TDTABMIN, TDTABMAX, TDTAXMIN, TDTAXMAX, TDRNGTYP, TXDTQUAL, TDTAXTAX, TXDTLPDC, TXDTLPCH, TXDXDISC, CMNYTXID, NOTEINDX, NAME, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, TXUSRDF1, TXUSRDF2, VATREGTX, TaxInvReqd, TaxPostToAcct, TaxBoxes, IGNRGRSSAMNT, TDTABPCT, DEX_ROW_ID FROM .TX00201 WHERE TAXDTLID = @TAXDTLID_RS ORDER BY TAXDTLID DESC END ELSE BEGIN SELECT TOP 25  TAXDTLID, TXDTLDSC, TXDTLTYP, ACTINDX, TXIDNMBR, TXDTLBSE, TXDTLPCT, TXDTLAMT, TDTLRNDG, TXDBODTL, TDTABMIN, TDTABMAX, TDTAXMIN, TDTAXMAX, TDRNGTYP, TXDTQUAL, TDTAXTAX, TXDTLPDC, TXDTLPCH, TXDXDISC, CMNYTXID, NOTEINDX, NAME, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, TXUSRDF1, TXUSRDF2, VATREGTX, TaxInvReqd, TaxPostToAcct, TaxBoxes, IGNRGRSSAMNT, TDTABPCT, DEX_ROW_ID FROM .TX00201 WHERE TAXDTLID BETWEEN @TAXDTLID_RS AND @TAXDTLID_RE ORDER BY TAXDTLID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TX00201L_1] TO [DYNGRP]
GO
