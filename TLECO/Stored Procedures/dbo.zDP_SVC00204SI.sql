SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00204SI] (@SRVRECTYPE smallint, @CALLNBR char(11), @EQPLINE int, @SCHEDID char(9), @PMDTLID char(9), @Meter_1_Level int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00204 (SRVRECTYPE, CALLNBR, EQPLINE, SCHEDID, PMDTLID, Meter_1_Level) VALUES ( @SRVRECTYPE, @CALLNBR, @EQPLINE, @SCHEDID, @PMDTLID, @Meter_1_Level) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00204SI] TO [DYNGRP]
GO
