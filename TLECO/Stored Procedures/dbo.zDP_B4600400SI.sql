SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600400SI] (@BSSI_Region_ID char(25), @BSSI_Description char(51), @Location_Segment char(67), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4600400 (BSSI_Region_ID, BSSI_Description, Location_Segment, NOTEINDX) VALUES ( @BSSI_Region_ID, @BSSI_Description, @Location_Segment, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600400SI] TO [DYNGRP]
GO
