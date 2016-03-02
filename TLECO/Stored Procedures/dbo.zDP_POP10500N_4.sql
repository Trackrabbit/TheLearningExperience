SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP10500N_4] (@BS int, @Product_Indicator smallint, @JOBNUMBR char(17), @COSTCODE char(27), @POPRCTNM char(17), @RCPTLNNM int, @DEX_ROW_ID int, @Product_Indicator_RS smallint, @JOBNUMBR_RS char(17), @COSTCODE_RS char(27), @POPRCTNM_RS char(17), @RCPTLNNM_RS int, @Product_Indicator_RE smallint, @JOBNUMBR_RE char(17), @COSTCODE_RE char(27), @POPRCTNM_RE char(17), @RCPTLNNM_RE int) AS  set nocount on IF @Product_Indicator_RS IS NULL BEGIN SELECT TOP 25  PONUMBER, POLNENUM, POPRCTNM, RCPTLNNM, QTYSHPPD, QTYINVCD, QTYREJ, QTYMATCH, QTYRESERVED, QTYINVRESERVE, Status, UMQTYINB, OLDCUCST, JOBNUMBR, COSTCODE, COSTTYPE, ORCPTCOST, OSTDCOST, APPYTYPE, POPTYPE, VENDORID, ITEMNMBR, UOFM, TRXLOCTN, DATERECD, RCTSEQNM, SPRCTSEQ, PCHRPTCT, SPRCPTCT, OREXTCST, RUPPVAMT, ACPURIDX, INVINDX, UPPVIDX, NOTEINDX, CURNCYID, CURRNIDX, XCHGRATE, RATECALC, DENXRATE, RATETPID, EXGTBLID, Capital_Item, Product_Indicator, Total_Landed_Cost_Amount, QTYTYPE, Posted_LC_PPV_Amount, QTYREPLACED, QTYINVADJ, DEX_ROW_ID FROM .POP10500 WHERE ( Product_Indicator = @Product_Indicator AND JOBNUMBR = @JOBNUMBR AND COSTCODE = @COSTCODE AND POPRCTNM = @POPRCTNM AND RCPTLNNM = @RCPTLNNM AND DEX_ROW_ID > @DEX_ROW_ID OR Product_Indicator = @Product_Indicator AND JOBNUMBR = @JOBNUMBR AND COSTCODE = @COSTCODE AND POPRCTNM = @POPRCTNM AND RCPTLNNM > @RCPTLNNM OR Product_Indicator = @Product_Indicator AND JOBNUMBR = @JOBNUMBR AND COSTCODE = @COSTCODE AND POPRCTNM > @POPRCTNM OR Product_Indicator = @Product_Indicator AND JOBNUMBR = @JOBNUMBR AND COSTCODE > @COSTCODE OR Product_Indicator = @Product_Indicator AND JOBNUMBR > @JOBNUMBR OR Product_Indicator > @Product_Indicator ) ORDER BY Product_Indicator ASC, JOBNUMBR ASC, COSTCODE ASC, POPRCTNM ASC, RCPTLNNM ASC, DEX_ROW_ID ASC END ELSE IF @Product_Indicator_RS = @Product_Indicator_RE BEGIN SELECT TOP 25  PONUMBER, POLNENUM, POPRCTNM, RCPTLNNM, QTYSHPPD, QTYINVCD, QTYREJ, QTYMATCH, QTYRESERVED, QTYINVRESERVE, Status, UMQTYINB, OLDCUCST, JOBNUMBR, COSTCODE, COSTTYPE, ORCPTCOST, OSTDCOST, APPYTYPE, POPTYPE, VENDORID, ITEMNMBR, UOFM, TRXLOCTN, DATERECD, RCTSEQNM, SPRCTSEQ, PCHRPTCT, SPRCPTCT, OREXTCST, RUPPVAMT, ACPURIDX, INVINDX, UPPVIDX, NOTEINDX, CURNCYID, CURRNIDX, XCHGRATE, RATECALC, DENXRATE, RATETPID, EXGTBLID, Capital_Item, Product_Indicator, Total_Landed_Cost_Amount, QTYTYPE, Posted_LC_PPV_Amount, QTYREPLACED, QTYINVADJ, DEX_ROW_ID FROM .POP10500 WHERE Product_Indicator = @Product_Indicator_RS AND JOBNUMBR BETWEEN @JOBNUMBR_RS AND @JOBNUMBR_RE AND COSTCODE BETWEEN @COSTCODE_RS AND @COSTCODE_RE AND POPRCTNM BETWEEN @POPRCTNM_RS AND @POPRCTNM_RE AND RCPTLNNM BETWEEN @RCPTLNNM_RS AND @RCPTLNNM_RE AND ( Product_Indicator = @Product_Indicator AND JOBNUMBR = @JOBNUMBR AND COSTCODE = @COSTCODE AND POPRCTNM = @POPRCTNM AND RCPTLNNM = @RCPTLNNM AND DEX_ROW_ID > @DEX_ROW_ID OR Product_Indicator = @Product_Indicator AND JOBNUMBR = @JOBNUMBR AND COSTCODE = @COSTCODE AND POPRCTNM = @POPRCTNM AND RCPTLNNM > @RCPTLNNM OR Product_Indicator = @Product_Indicator AND JOBNUMBR = @JOBNUMBR AND COSTCODE = @COSTCODE AND POPRCTNM > @POPRCTNM OR Product_Indicator = @Product_Indicator AND JOBNUMBR = @JOBNUMBR AND COSTCODE > @COSTCODE OR Product_Indicator = @Product_Indicator AND JOBNUMBR > @JOBNUMBR OR Product_Indicator > @Product_Indicator ) ORDER BY Product_Indicator ASC, JOBNUMBR ASC, COSTCODE ASC, POPRCTNM ASC, RCPTLNNM ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  PONUMBER, POLNENUM, POPRCTNM, RCPTLNNM, QTYSHPPD, QTYINVCD, QTYREJ, QTYMATCH, QTYRESERVED, QTYINVRESERVE, Status, UMQTYINB, OLDCUCST, JOBNUMBR, COSTCODE, COSTTYPE, ORCPTCOST, OSTDCOST, APPYTYPE, POPTYPE, VENDORID, ITEMNMBR, UOFM, TRXLOCTN, DATERECD, RCTSEQNM, SPRCTSEQ, PCHRPTCT, SPRCPTCT, OREXTCST, RUPPVAMT, ACPURIDX, INVINDX, UPPVIDX, NOTEINDX, CURNCYID, CURRNIDX, XCHGRATE, RATECALC, DENXRATE, RATETPID, EXGTBLID, Capital_Item, Product_Indicator, Total_Landed_Cost_Amount, QTYTYPE, Posted_LC_PPV_Amount, QTYREPLACED, QTYINVADJ, DEX_ROW_ID FROM .POP10500 WHERE Product_Indicator BETWEEN @Product_Indicator_RS AND @Product_Indicator_RE AND JOBNUMBR BETWEEN @JOBNUMBR_RS AND @JOBNUMBR_RE AND COSTCODE BETWEEN @COSTCODE_RS AND @COSTCODE_RE AND POPRCTNM BETWEEN @POPRCTNM_RS AND @POPRCTNM_RE AND RCPTLNNM BETWEEN @RCPTLNNM_RS AND @RCPTLNNM_RE AND ( Product_Indicator = @Product_Indicator AND JOBNUMBR = @JOBNUMBR AND COSTCODE = @COSTCODE AND POPRCTNM = @POPRCTNM AND RCPTLNNM = @RCPTLNNM AND DEX_ROW_ID > @DEX_ROW_ID OR Product_Indicator = @Product_Indicator AND JOBNUMBR = @JOBNUMBR AND COSTCODE = @COSTCODE AND POPRCTNM = @POPRCTNM AND RCPTLNNM > @RCPTLNNM OR Product_Indicator = @Product_Indicator AND JOBNUMBR = @JOBNUMBR AND COSTCODE = @COSTCODE AND POPRCTNM > @POPRCTNM OR Product_Indicator = @Product_Indicator AND JOBNUMBR = @JOBNUMBR AND COSTCODE > @COSTCODE OR Product_Indicator = @Product_Indicator AND JOBNUMBR > @JOBNUMBR OR Product_Indicator > @Product_Indicator ) ORDER BY Product_Indicator ASC, JOBNUMBR ASC, COSTCODE ASC, POPRCTNM ASC, RCPTLNNM ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP10500N_4] TO [DYNGRP]
GO
