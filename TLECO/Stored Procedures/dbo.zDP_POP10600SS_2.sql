SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP10600SS_2] (@POPRCTNM char(17), @RCPTLNNM int, @Status smallint, @LCLINENUMBER int, @POPIVCNO char(17), @IVCLINNO int) AS  set nocount on SELECT TOP 1  POPIVCNO, IVCLINNO, POPRCTNM, RCPTLNNM, LCLINENUMBER, Status, QTYINVCD, QTYINVRESERVE, ORUNTCST, RCPTCOST, ORCPTCOST, ACPURTOT, UPPVTOTL, PURPVIDX, PCHRPTCT, SPRCPTCT, CURNCYID, CURRNIDX, XCHGRATE, RATECALC, DENXRATE, Revalue_Inventory, PPVTotal, INVINDX, BCKTXAMT, OBTAXAMT, PRCNTOFTTL, DEX_ROW_ID FROM .POP10600 WHERE POPRCTNM = @POPRCTNM AND RCPTLNNM = @RCPTLNNM AND Status = @Status AND LCLINENUMBER = @LCLINENUMBER AND POPIVCNO = @POPIVCNO AND IVCLINNO = @IVCLINNO ORDER BY POPRCTNM ASC, RCPTLNNM ASC, Status ASC, LCLINENUMBER ASC, POPIVCNO ASC, IVCLINNO ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP10600SS_2] TO [DYNGRP]
GO
