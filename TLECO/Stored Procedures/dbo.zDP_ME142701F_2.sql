SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME142701F_2] (@MESRCDOC_RS smallint, @DOCTYPE_RS smallint, @MEADOCNUM_RS char(21), @MEASN_RS int, @MESRCDOC_RE smallint, @DOCTYPE_RE smallint, @MEADOCNUM_RE char(21), @MEASN_RE int) AS /* 12.00.0311.000 */ set nocount on IF @MESRCDOC_RS IS NULL BEGIN SELECT TOP 25  BCHSOURC, BACHNUMB, MESRCDOC, MEADOCNUM, SEQNUMBR, MEMCID, ME_Merchant_Name, MEASN, MEDOCTYPG, ME_CreditCard_Trx_Type, ME_Card_Type, MECCTRXT, MEDYNLN, MEREQSTR1, MEREQSTR2, CUSTNMBR, CRDHLDR, CARDNAME, MECCNUM, MEEXPDT, CRCRDAMT, ME_Discount_Amount, TAXAMNT, ADRSCODE, CRDADD1, CRDADD2, CRDCTY, MESTATE, CRDZIP, CRDCNTRY, DOCTYPE, MEREQDT, MEREQTM, CURNCYID, USERDATE, USERID, ME_Dummy_File_Conversion, DEX_ROW_ID FROM .ME142701 ORDER BY MESRCDOC ASC, DOCTYPE ASC, MEADOCNUM ASC, MEASN ASC, DEX_ROW_ID ASC END ELSE IF @MESRCDOC_RS = @MESRCDOC_RE BEGIN SELECT TOP 25  BCHSOURC, BACHNUMB, MESRCDOC, MEADOCNUM, SEQNUMBR, MEMCID, ME_Merchant_Name, MEASN, MEDOCTYPG, ME_CreditCard_Trx_Type, ME_Card_Type, MECCTRXT, MEDYNLN, MEREQSTR1, MEREQSTR2, CUSTNMBR, CRDHLDR, CARDNAME, MECCNUM, MEEXPDT, CRCRDAMT, ME_Discount_Amount, TAXAMNT, ADRSCODE, CRDADD1, CRDADD2, CRDCTY, MESTATE, CRDZIP, CRDCNTRY, DOCTYPE, MEREQDT, MEREQTM, CURNCYID, USERDATE, USERID, ME_Dummy_File_Conversion, DEX_ROW_ID FROM .ME142701 WHERE MESRCDOC = @MESRCDOC_RS AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND MEADOCNUM BETWEEN @MEADOCNUM_RS AND @MEADOCNUM_RE AND MEASN BETWEEN @MEASN_RS AND @MEASN_RE ORDER BY MESRCDOC ASC, DOCTYPE ASC, MEADOCNUM ASC, MEASN ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BCHSOURC, BACHNUMB, MESRCDOC, MEADOCNUM, SEQNUMBR, MEMCID, ME_Merchant_Name, MEASN, MEDOCTYPG, ME_CreditCard_Trx_Type, ME_Card_Type, MECCTRXT, MEDYNLN, MEREQSTR1, MEREQSTR2, CUSTNMBR, CRDHLDR, CARDNAME, MECCNUM, MEEXPDT, CRCRDAMT, ME_Discount_Amount, TAXAMNT, ADRSCODE, CRDADD1, CRDADD2, CRDCTY, MESTATE, CRDZIP, CRDCNTRY, DOCTYPE, MEREQDT, MEREQTM, CURNCYID, USERDATE, USERID, ME_Dummy_File_Conversion, DEX_ROW_ID FROM .ME142701 WHERE MESRCDOC BETWEEN @MESRCDOC_RS AND @MESRCDOC_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND MEADOCNUM BETWEEN @MEADOCNUM_RS AND @MEADOCNUM_RE AND MEASN BETWEEN @MEASN_RS AND @MEASN_RE ORDER BY MESRCDOC ASC, DOCTYPE ASC, MEADOCNUM ASC, MEASN ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME142701F_2] TO [DYNGRP]
GO
