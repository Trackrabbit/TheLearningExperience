SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV10301SS_2] (@STCKCNTID char(15), @LOCNCODE char(11), @BINNMBR char(21), @ITEMNMBR char(31)) AS  set nocount on SELECT TOP 1  STCKCNTID, ITEMNMBR, LOCNCODE, BINNMBR, CAPTUREDQTY, COUNTEDQTY, COUNTDATE, COUNTTIME, DECPLQTY, ITMTRKOP, IVIVINDX, Stock_Serial_Lot_Count, STCKSRLLTVRNC, IVVARIDX, VARIANCEQTY, VERIFIED, Temp_Allocated_Quantity, ACTIVE, Reason_Code, DEX_ROW_ID FROM .IV10301 WHERE STCKCNTID = @STCKCNTID AND LOCNCODE = @LOCNCODE AND BINNMBR = @BINNMBR AND ITEMNMBR = @ITEMNMBR ORDER BY STCKCNTID ASC, LOCNCODE ASC, BINNMBR ASC, ITEMNMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV10301SS_2] TO [DYNGRP]
GO
