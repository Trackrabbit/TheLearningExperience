SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRTRA042SI] (@COURSEID_I char(7), @ICLASSID_I char(7), @SKILLNUMBER_I smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .HRTRA042 (COURSEID_I, ICLASSID_I, SKILLNUMBER_I) VALUES ( @COURSEID_I, @ICLASSID_I, @SKILLNUMBER_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRTRA042SI] TO [DYNGRP]
GO
