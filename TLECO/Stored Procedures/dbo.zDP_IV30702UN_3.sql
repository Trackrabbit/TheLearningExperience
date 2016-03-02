SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30702UN_3] (@BS int, @ITEMNMBR char(31), @SERLTNUM char(21), @ITEMNMBR_RS char(31), @SERLTNUM_RS char(21), @ITEMNMBR_RE char(31), @SERLTNUM_RE char(21)) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  STCKCNTID, SEQNUMBR, ITEMNMBR, LOCNCODE, BINNMBR, SLTSQNUM, COUNTEDQTY, CAPTUREDQTY, ITMTRKOP, IVDOCNBR, IVDOCTYP, SERLTNUM, VARIANCEQTY, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .IV30702 WHERE ( ITEMNMBR = @ITEMNMBR AND SERLTNUM > @SERLTNUM OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, SERLTNUM ASC, DEX_ROW_ID ASC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  STCKCNTID, SEQNUMBR, ITEMNMBR, LOCNCODE, BINNMBR, SLTSQNUM, COUNTEDQTY, CAPTUREDQTY, ITMTRKOP, IVDOCNBR, IVDOCTYP, SERLTNUM, VARIANCEQTY, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .IV30702 WHERE ITEMNMBR = @ITEMNMBR_RS AND SERLTNUM BETWEEN @SERLTNUM_RS AND @SERLTNUM_RE AND ( ITEMNMBR = @ITEMNMBR AND SERLTNUM > @SERLTNUM OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, SERLTNUM ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  STCKCNTID, SEQNUMBR, ITEMNMBR, LOCNCODE, BINNMBR, SLTSQNUM, COUNTEDQTY, CAPTUREDQTY, ITMTRKOP, IVDOCNBR, IVDOCTYP, SERLTNUM, VARIANCEQTY, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .IV30702 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND SERLTNUM BETWEEN @SERLTNUM_RS AND @SERLTNUM_RE AND ( ITEMNMBR = @ITEMNMBR AND SERLTNUM > @SERLTNUM OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, SERLTNUM ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30702UN_3] TO [DYNGRP]
GO
