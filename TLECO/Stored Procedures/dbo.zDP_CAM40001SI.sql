SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CAM40001SI] (@SGMTNUMB smallint, @CAM_Series smallint, @CAMActivated tinyint, @CAM_Distribution_Created tinyint, @CAM_Posted tinyint, @BACHNUMB char(15), @BCHCOMNT char(61), @REFRENCE char(31), @TRXSRCPX char(5), @SOURCDOC char(11), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .CAM40001 (SGMTNUMB, CAM_Series, CAMActivated, CAM_Distribution_Created, CAM_Posted, BACHNUMB, BCHCOMNT, REFRENCE, TRXSRCPX, SOURCDOC, NOTEINDX) VALUES ( @SGMTNUMB, @CAM_Series, @CAMActivated, @CAM_Distribution_Created, @CAM_Posted, @BACHNUMB, @BCHCOMNT, @REFRENCE, @TRXSRCPX, @SOURCDOC, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CAM40001SI] TO [DYNGRP]
GO
