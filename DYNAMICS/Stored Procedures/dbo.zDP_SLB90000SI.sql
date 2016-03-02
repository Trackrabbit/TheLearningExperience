SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB90000SI] (@GoTo_Type smallint, @PRODID smallint, @GoTo_Number smallint, @GoTo_Description char(81), @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .SLB90000 (GoTo_Type, PRODID, GoTo_Number, GoTo_Description) VALUES ( @GoTo_Type, @PRODID, @GoTo_Number, @GoTo_Description) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB90000SI] TO [DYNGRP]
GO
