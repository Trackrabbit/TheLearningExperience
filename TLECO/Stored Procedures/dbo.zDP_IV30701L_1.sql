SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30701L_1] (@STCKCNTID_RS char(15), @SEQNUMBR_RS int, @ITEMNMBR_RS char(31), @LOCNCODE_RS char(11), @BINNMBR_RS char(21), @STCKCNTID_RE char(15), @SEQNUMBR_RE int, @ITEMNMBR_RE char(31), @LOCNCODE_RE char(11), @BINNMBR_RE char(21)) AS  set nocount on IF @STCKCNTID_RS IS NULL BEGIN SELECT TOP 25  STCKCNTID, SEQNUMBR, ITEMNMBR, LOCNCODE, BINNMBR, BASEUOFM, COUNTEDQTY, CAPTUREDQTY, CPTRDT, CPTRTM, ITMTRKOP, IVDOCNBR, IVDOCTYP, UNITCOST, VARIANCEQTY, DECPLQTY, DECPLCUR, Reason_Code, DEX_ROW_ID FROM .IV30701 ORDER BY STCKCNTID DESC, SEQNUMBR DESC, ITEMNMBR DESC, LOCNCODE DESC, BINNMBR DESC END ELSE IF @STCKCNTID_RS = @STCKCNTID_RE BEGIN SELECT TOP 25  STCKCNTID, SEQNUMBR, ITEMNMBR, LOCNCODE, BINNMBR, BASEUOFM, COUNTEDQTY, CAPTUREDQTY, CPTRDT, CPTRTM, ITMTRKOP, IVDOCNBR, IVDOCTYP, UNITCOST, VARIANCEQTY, DECPLQTY, DECPLCUR, Reason_Code, DEX_ROW_ID FROM .IV30701 WHERE STCKCNTID = @STCKCNTID_RS AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND BINNMBR BETWEEN @BINNMBR_RS AND @BINNMBR_RE ORDER BY STCKCNTID DESC, SEQNUMBR DESC, ITEMNMBR DESC, LOCNCODE DESC, BINNMBR DESC END ELSE BEGIN SELECT TOP 25  STCKCNTID, SEQNUMBR, ITEMNMBR, LOCNCODE, BINNMBR, BASEUOFM, COUNTEDQTY, CAPTUREDQTY, CPTRDT, CPTRTM, ITMTRKOP, IVDOCNBR, IVDOCTYP, UNITCOST, VARIANCEQTY, DECPLQTY, DECPLCUR, Reason_Code, DEX_ROW_ID FROM .IV30701 WHERE STCKCNTID BETWEEN @STCKCNTID_RS AND @STCKCNTID_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND BINNMBR BETWEEN @BINNMBR_RS AND @BINNMBR_RE ORDER BY STCKCNTID DESC, SEQNUMBR DESC, ITEMNMBR DESC, LOCNCODE DESC, BINNMBR DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30701L_1] TO [DYNGRP]
GO
