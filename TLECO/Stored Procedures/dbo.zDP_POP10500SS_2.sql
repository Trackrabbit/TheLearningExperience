SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP10500SS_2] (@PONUMBER char(17), @POLNENUM int, @Status smallint, @APPYTYPE smallint, @POPRCTNM char(17), @RCPTLNNM int) AS  set nocount on SELECT TOP 1  PONUMBER, POLNENUM, POPRCTNM, RCPTLNNM, QTYSHPPD, QTYINVCD, QTYREJ, QTYMATCH, QTYRESERVED, QTYINVRESERVE, Status, UMQTYINB, OLDCUCST, JOBNUMBR, COSTCODE, COSTTYPE, ORCPTCOST, OSTDCOST, APPYTYPE, POPTYPE, VENDORID, ITEMNMBR, UOFM, TRXLOCTN, DATERECD, RCTSEQNM, SPRCTSEQ, PCHRPTCT, SPRCPTCT, OREXTCST, RUPPVAMT, ACPURIDX, INVINDX, UPPVIDX, NOTEINDX, CURNCYID, CURRNIDX, XCHGRATE, RATECALC, DENXRATE, RATETPID, EXGTBLID, Capital_Item, Product_Indicator, Total_Landed_Cost_Amount, QTYTYPE, Posted_LC_PPV_Amount, QTYREPLACED, QTYINVADJ, DEX_ROW_ID FROM .POP10500 WHERE PONUMBER = @PONUMBER AND POLNENUM = @POLNENUM AND Status = @Status AND APPYTYPE = @APPYTYPE AND POPRCTNM = @POPRCTNM AND RCPTLNNM = @RCPTLNNM ORDER BY PONUMBER ASC, POLNENUM ASC, Status ASC, APPYTYPE ASC, POPRCTNM ASC, RCPTLNNM ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP10500SS_2] TO [DYNGRP]
GO