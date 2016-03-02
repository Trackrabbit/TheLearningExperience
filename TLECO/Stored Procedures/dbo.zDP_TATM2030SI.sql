SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TATM2030SI] (@EMPID_I char(15), @TIMECODE_I char(7), @YEAR1 smallint, @HOURSAVAILABLE_I int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .TATM2030 (EMPID_I, TIMECODE_I, YEAR1, HOURSAVAILABLE_I) VALUES ( @EMPID_I, @TIMECODE_I, @YEAR1, @HOURSAVAILABLE_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TATM2030SI] TO [DYNGRP]
GO