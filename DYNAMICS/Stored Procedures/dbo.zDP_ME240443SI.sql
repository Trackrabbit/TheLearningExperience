SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME240443SI] (@CMPANYID smallint, @ACTIVE tinyint, @FilePath char(255), @MEPDFPath char(255), @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .ME240443 (CMPANYID, ACTIVE, FilePath, MEPDFPath) VALUES ( @CMPANYID, @ACTIVE, @FilePath, @MEPDFPath) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME240443SI] TO [DYNGRP]
GO
