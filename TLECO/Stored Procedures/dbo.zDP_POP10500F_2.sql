SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP10500F_2] (@PONUMBER_RS char(17), @POLNENUM_RS int, @Status_RS smallint, @APPYTYPE_RS smallint, @POPRCTNM_RS char(17), @RCPTLNNM_RS int, @PONUMBER_RE char(17), @POLNENUM_RE int, @Status_RE smallint, @APPYTYPE_RE smallint, @POPRCTNM_RE char(17), @RCPTLNNM_RE int) AS  set nocount on IF @PONUMBER_RS IS NULL BEGIN SELECT TOP 25  PONUMBER, POLNENUM, POPRCTNM, RCPTLNNM, QTYSHPPD, QTYINVCD, QTYREJ, QTYMATCH, QTYRESERVED, QTYINVRESERVE, Status, UMQTYINB, OLDCUCST, JOBNUMBR, COSTCODE, COSTTYPE, ORCPTCOST, OSTDCOST, APPYTYPE, POPTYPE, VENDORID, ITEMNMBR, UOFM, TRXLOCTN, DATERECD, RCTSEQNM, SPRCTSEQ, PCHRPTCT, SPRCPTCT, OREXTCST, RUPPVAMT, ACPURIDX, INVINDX, UPPVIDX, NOTEINDX, CURNCYID, CURRNIDX, XCHGRATE, RATECALC, DENXRATE, RATETPID, EXGTBLID, Capital_Item, Product_Indicator, Total_Landed_Cost_Amount, QTYTYPE, Posted_LC_PPV_Amount, QTYREPLACED, QTYINVADJ, DEX_ROW_ID FROM .POP10500 ORDER BY PONUMBER ASC, POLNENUM ASC, Status ASC, APPYTYPE ASC, POPRCTNM ASC, RCPTLNNM ASC END ELSE IF @PONUMBER_RS = @PONUMBER_RE BEGIN SELECT TOP 25  PONUMBER, POLNENUM, POPRCTNM, RCPTLNNM, QTYSHPPD, QTYINVCD, QTYREJ, QTYMATCH, QTYRESERVED, QTYINVRESERVE, Status, UMQTYINB, OLDCUCST, JOBNUMBR, COSTCODE, COSTTYPE, ORCPTCOST, OSTDCOST, APPYTYPE, POPTYPE, VENDORID, ITEMNMBR, UOFM, TRXLOCTN, DATERECD, RCTSEQNM, SPRCTSEQ, PCHRPTCT, SPRCPTCT, OREXTCST, RUPPVAMT, ACPURIDX, INVINDX, UPPVIDX, NOTEINDX, CURNCYID, CURRNIDX, XCHGRATE, RATECALC, DENXRATE, RATETPID, EXGTBLID, Capital_Item, Product_Indicator, Total_Landed_Cost_Amount, QTYTYPE, Posted_LC_PPV_Amount, QTYREPLACED, QTYINVADJ, DEX_ROW_ID FROM .POP10500 WHERE PONUMBER = @PONUMBER_RS AND POLNENUM BETWEEN @POLNENUM_RS AND @POLNENUM_RE AND Status BETWEEN @Status_RS AND @Status_RE AND APPYTYPE BETWEEN @APPYTYPE_RS AND @APPYTYPE_RE AND POPRCTNM BETWEEN @POPRCTNM_RS AND @POPRCTNM_RE AND RCPTLNNM BETWEEN @RCPTLNNM_RS AND @RCPTLNNM_RE ORDER BY PONUMBER ASC, POLNENUM ASC, Status ASC, APPYTYPE ASC, POPRCTNM ASC, RCPTLNNM ASC END ELSE BEGIN SELECT TOP 25  PONUMBER, POLNENUM, POPRCTNM, RCPTLNNM, QTYSHPPD, QTYINVCD, QTYREJ, QTYMATCH, QTYRESERVED, QTYINVRESERVE, Status, UMQTYINB, OLDCUCST, JOBNUMBR, COSTCODE, COSTTYPE, ORCPTCOST, OSTDCOST, APPYTYPE, POPTYPE, VENDORID, ITEMNMBR, UOFM, TRXLOCTN, DATERECD, RCTSEQNM, SPRCTSEQ, PCHRPTCT, SPRCPTCT, OREXTCST, RUPPVAMT, ACPURIDX, INVINDX, UPPVIDX, NOTEINDX, CURNCYID, CURRNIDX, XCHGRATE, RATECALC, DENXRATE, RATETPID, EXGTBLID, Capital_Item, Product_Indicator, Total_Landed_Cost_Amount, QTYTYPE, Posted_LC_PPV_Amount, QTYREPLACED, QTYINVADJ, DEX_ROW_ID FROM .POP10500 WHERE PONUMBER BETWEEN @PONUMBER_RS AND @PONUMBER_RE AND POLNENUM BETWEEN @POLNENUM_RS AND @POLNENUM_RE AND Status BETWEEN @Status_RS AND @Status_RE AND APPYTYPE BETWEEN @APPYTYPE_RS AND @APPYTYPE_RE AND POPRCTNM BETWEEN @POPRCTNM_RS AND @POPRCTNM_RE AND RCPTLNNM BETWEEN @RCPTLNNM_RS AND @RCPTLNNM_RE ORDER BY PONUMBER ASC, POLNENUM ASC, Status ASC, APPYTYPE ASC, POPRCTNM ASC, RCPTLNNM ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP10500F_2] TO [DYNGRP]
GO