SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30701SS_1] (@STCKCNTID char(15), @SEQNUMBR int, @ITEMNMBR char(31), @LOCNCODE char(11), @BINNMBR char(21)) AS  set nocount on SELECT TOP 1  STCKCNTID, SEQNUMBR, ITEMNMBR, LOCNCODE, BINNMBR, BASEUOFM, COUNTEDQTY, CAPTUREDQTY, CPTRDT, CPTRTM, ITMTRKOP, IVDOCNBR, IVDOCTYP, UNITCOST, VARIANCEQTY, DECPLQTY, DECPLCUR, Reason_Code, DEX_ROW_ID FROM .IV30701 WHERE STCKCNTID = @STCKCNTID AND SEQNUMBR = @SEQNUMBR AND ITEMNMBR = @ITEMNMBR AND LOCNCODE = @LOCNCODE AND BINNMBR = @BINNMBR ORDER BY STCKCNTID ASC, SEQNUMBR ASC, ITEMNMBR ASC, LOCNCODE ASC, BINNMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30701SS_1] TO [DYNGRP]
GO
