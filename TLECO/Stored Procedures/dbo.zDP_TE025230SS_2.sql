SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TE025230SS_2] (@EMPID_I char(15)) AS  set nocount on SELECT TOP 1  EMPID_I, SEQORDER_I, TERMCOMPLETEDCB_I, TERMINATIONITEM_I, PERSONRESPONSIBLE_I, EVENTENDDATE_I, DEX_ROW_ID FROM .TE025230 WHERE EMPID_I = @EMPID_I ORDER BY EMPID_I ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TE025230SS_2] TO [DYNGRP]
GO