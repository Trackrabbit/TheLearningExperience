SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP00300SS_2] (@ENDDATE datetime, @CUSTNMBR char(15), @ITEMNMBR char(31), @SEQNUMBR int) AS  set nocount on SELECT TOP 1  CUSTNMBR, ITEMNMBR, SEQNUMBR, SUBITEMNMBR, SUBITEMDESC, STRTDATE, ENDDATE, DEX_ROW_ID FROM .SOP00300 WHERE ENDDATE = @ENDDATE AND CUSTNMBR = @CUSTNMBR AND ITEMNMBR = @ITEMNMBR AND SEQNUMBR = @SEQNUMBR ORDER BY ENDDATE ASC, CUSTNMBR ASC, ITEMNMBR ASC, SEQNUMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP00300SS_2] TO [DYNGRP]
GO
