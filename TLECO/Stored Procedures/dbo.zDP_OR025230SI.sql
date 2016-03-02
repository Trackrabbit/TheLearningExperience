SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_OR025230SI] (@EMPID_I char(15), @SEQORDER_I smallint, @ORCOMPLETEDCB_I tinyint, @ORIENTATIONITEM_I char(51), @PERSONRESPONSIBLE_I char(61), @EVENTSTARTDATE_I datetime, @EVENTSTARTTIME_I char(5), @EVENTENDDATE_I datetime, @EVENTENDTIME_I char(5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .OR025230 (EMPID_I, SEQORDER_I, ORCOMPLETEDCB_I, ORIENTATIONITEM_I, PERSONRESPONSIBLE_I, EVENTSTARTDATE_I, EVENTSTARTTIME_I, EVENTENDDATE_I, EVENTENDTIME_I) VALUES ( @EMPID_I, @SEQORDER_I, @ORCOMPLETEDCB_I, @ORIENTATIONITEM_I, @PERSONRESPONSIBLE_I, @EVENTSTARTDATE_I, @EVENTSTARTTIME_I, @EVENTENDDATE_I, @EVENTENDTIME_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_OR025230SI] TO [DYNGRP]
GO
