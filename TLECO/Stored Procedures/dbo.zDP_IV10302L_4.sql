SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV10302L_4] (@ITEMNMBR_RS char(31), @SERLTNUM_RS char(21), @ITEMNMBR_RE char(31), @SERLTNUM_RE char(21)) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  STCKCNTID, ITEMNMBR, LOCNCODE, BINNMBR, COUNTEDQTY, CAPTUREDQTY, DATERECD, DTSEQNUM, ITMTRKOP, SERLTNUM, SERIALSTATUS, VARIANCEQTY, VERIFIED, QTYTYPE, Temp_Allocated_Quantity, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .IV10302 ORDER BY ITEMNMBR DESC, SERLTNUM DESC, DEX_ROW_ID DESC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  STCKCNTID, ITEMNMBR, LOCNCODE, BINNMBR, COUNTEDQTY, CAPTUREDQTY, DATERECD, DTSEQNUM, ITMTRKOP, SERLTNUM, SERIALSTATUS, VARIANCEQTY, VERIFIED, QTYTYPE, Temp_Allocated_Quantity, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .IV10302 WHERE ITEMNMBR = @ITEMNMBR_RS AND SERLTNUM BETWEEN @SERLTNUM_RS AND @SERLTNUM_RE ORDER BY ITEMNMBR DESC, SERLTNUM DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  STCKCNTID, ITEMNMBR, LOCNCODE, BINNMBR, COUNTEDQTY, CAPTUREDQTY, DATERECD, DTSEQNUM, ITMTRKOP, SERLTNUM, SERIALSTATUS, VARIANCEQTY, VERIFIED, QTYTYPE, Temp_Allocated_Quantity, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .IV10302 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND SERLTNUM BETWEEN @SERLTNUM_RS AND @SERLTNUM_RE ORDER BY ITEMNMBR DESC, SERLTNUM DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV10302L_4] TO [DYNGRP]
GO
