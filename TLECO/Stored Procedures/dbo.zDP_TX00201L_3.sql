SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TX00201L_3] (@TXDTLTYP_RS smallint, @TAXDTLID_RS char(15), @TXDTLTYP_RE smallint, @TAXDTLID_RE char(15)) AS  set nocount on IF @TXDTLTYP_RS IS NULL BEGIN SELECT TOP 25  TAXDTLID, TXDTLDSC, TXDTLTYP, ACTINDX, TXIDNMBR, TXDTLBSE, TXDTLPCT, TXDTLAMT, TDTLRNDG, TXDBODTL, TDTABMIN, TDTABMAX, TDTAXMIN, TDTAXMAX, TDRNGTYP, TXDTQUAL, TDTAXTAX, TXDTLPDC, TXDTLPCH, TXDXDISC, CMNYTXID, NOTEINDX, NAME, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, TXUSRDF1, TXUSRDF2, VATREGTX, TaxInvReqd, TaxPostToAcct, TaxBoxes, IGNRGRSSAMNT, TDTABPCT, DEX_ROW_ID FROM .TX00201 ORDER BY TXDTLTYP DESC, TAXDTLID DESC END ELSE IF @TXDTLTYP_RS = @TXDTLTYP_RE BEGIN SELECT TOP 25  TAXDTLID, TXDTLDSC, TXDTLTYP, ACTINDX, TXIDNMBR, TXDTLBSE, TXDTLPCT, TXDTLAMT, TDTLRNDG, TXDBODTL, TDTABMIN, TDTABMAX, TDTAXMIN, TDTAXMAX, TDRNGTYP, TXDTQUAL, TDTAXTAX, TXDTLPDC, TXDTLPCH, TXDXDISC, CMNYTXID, NOTEINDX, NAME, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, TXUSRDF1, TXUSRDF2, VATREGTX, TaxInvReqd, TaxPostToAcct, TaxBoxes, IGNRGRSSAMNT, TDTABPCT, DEX_ROW_ID FROM .TX00201 WHERE TXDTLTYP = @TXDTLTYP_RS AND TAXDTLID BETWEEN @TAXDTLID_RS AND @TAXDTLID_RE ORDER BY TXDTLTYP DESC, TAXDTLID DESC END ELSE BEGIN SELECT TOP 25  TAXDTLID, TXDTLDSC, TXDTLTYP, ACTINDX, TXIDNMBR, TXDTLBSE, TXDTLPCT, TXDTLAMT, TDTLRNDG, TXDBODTL, TDTABMIN, TDTABMAX, TDTAXMIN, TDTAXMAX, TDRNGTYP, TXDTQUAL, TDTAXTAX, TXDTLPDC, TXDTLPCH, TXDXDISC, CMNYTXID, NOTEINDX, NAME, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, PHONE1, PHONE2, PHONE3, FAX, TXUSRDF1, TXUSRDF2, VATREGTX, TaxInvReqd, TaxPostToAcct, TaxBoxes, IGNRGRSSAMNT, TDTABPCT, DEX_ROW_ID FROM .TX00201 WHERE TXDTLTYP BETWEEN @TXDTLTYP_RS AND @TXDTLTYP_RE AND TAXDTLID BETWEEN @TAXDTLID_RS AND @TAXDTLID_RE ORDER BY TXDTLTYP DESC, TAXDTLID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TX00201L_3] TO [DYNGRP]
GO
