SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640049SI] (@LOCNCODE char(11), @BSSI_MeterNumber char(31), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640049 (LOCNCODE, BSSI_MeterNumber, NOTEINDX) VALUES ( @LOCNCODE, @BSSI_MeterNumber, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640049SI] TO [DYNGRP]
GO