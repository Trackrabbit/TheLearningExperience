SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SC9004SI] (@PRODID smallint, @TABLTECH char(79), @GPENTFLDNM char(81), @GPENTFLDDC char(81), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .SC9004 (PRODID, TABLTECH, GPENTFLDNM, GPENTFLDDC) VALUES ( @PRODID, @TABLTECH, @GPENTFLDNM, @GPENTFLDDC) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SC9004SI] TO [DYNGRP]
GO
