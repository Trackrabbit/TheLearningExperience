SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640014SI] (@BSSI_Template_ID char(25), @LNSEQNBR numeric(19,5), @BSSI_OccupancyTypeID char(25), @BSSI_Description char(51), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640014 (BSSI_Template_ID, LNSEQNBR, BSSI_OccupancyTypeID, BSSI_Description) VALUES ( @BSSI_Template_ID, @LNSEQNBR, @BSSI_OccupancyTypeID, @BSSI_Description) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640014SI] TO [DYNGRP]
GO
