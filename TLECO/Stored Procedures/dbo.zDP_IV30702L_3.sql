SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30702L_3] (@ITEMNMBR_RS char(31), @SERLTNUM_RS char(21), @ITEMNMBR_RE char(31), @SERLTNUM_RE char(21)) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  STCKCNTID, SEQNUMBR, ITEMNMBR, LOCNCODE, BINNMBR, SLTSQNUM, COUNTEDQTY, CAPTUREDQTY, ITMTRKOP, IVDOCNBR, IVDOCTYP, SERLTNUM, VARIANCEQTY, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .IV30702 ORDER BY ITEMNMBR DESC, SERLTNUM DESC, DEX_ROW_ID DESC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  STCKCNTID, SEQNUMBR, ITEMNMBR, LOCNCODE, BINNMBR, SLTSQNUM, COUNTEDQTY, CAPTUREDQTY, ITMTRKOP, IVDOCNBR, IVDOCTYP, SERLTNUM, VARIANCEQTY, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .IV30702 WHERE ITEMNMBR = @ITEMNMBR_RS AND SERLTNUM BETWEEN @SERLTNUM_RS AND @SERLTNUM_RE ORDER BY ITEMNMBR DESC, SERLTNUM DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  STCKCNTID, SEQNUMBR, ITEMNMBR, LOCNCODE, BINNMBR, SLTSQNUM, COUNTEDQTY, CAPTUREDQTY, ITMTRKOP, IVDOCNBR, IVDOCTYP, SERLTNUM, VARIANCEQTY, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .IV30702 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND SERLTNUM BETWEEN @SERLTNUM_RS AND @SERLTNUM_RE ORDER BY ITEMNMBR DESC, SERLTNUM DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30702L_3] TO [DYNGRP]
GO