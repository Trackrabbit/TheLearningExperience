SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV10303SS_1] (@STCKCNTID char(15), @ITEMNMBR char(31), @LOCNCODE char(11), @BINNMBR char(21), @UOFM char(9)) AS  set nocount on SELECT TOP 1  STCKCNTID, ITEMNMBR, LOCNCODE, BINNMBR, UOFM, QTYBSUOM, COUNTEDQTY, DECPLQTY, DEX_ROW_ID FROM .IV10303 WHERE STCKCNTID = @STCKCNTID AND ITEMNMBR = @ITEMNMBR AND LOCNCODE = @LOCNCODE AND BINNMBR = @BINNMBR AND UOFM = @UOFM ORDER BY STCKCNTID ASC, ITEMNMBR ASC, LOCNCODE ASC, BINNMBR ASC, UOFM ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV10303SS_1] TO [DYNGRP]
GO
