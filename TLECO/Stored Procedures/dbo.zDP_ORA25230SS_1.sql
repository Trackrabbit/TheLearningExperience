SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ORA25230SS_1] (@EMPID_I char(15), @SEQORDER_I smallint) AS  set nocount on SELECT TOP 1  EMPID_I, SEQORDER_I, ORCOMPLETEDCB_I, ORIENTATIONITEM_I, PERSONRESPONSIBLE_I, EVENTSTARTDATE_I, EVENTSTARTTIME_I, EVENTENDDATE_I, EVENTENDTIME_I, DEX_ROW_ID FROM .ORA25230 WHERE EMPID_I = @EMPID_I AND SEQORDER_I = @SEQORDER_I ORDER BY EMPID_I ASC, SEQORDER_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ORA25230SS_1] TO [DYNGRP]
GO
