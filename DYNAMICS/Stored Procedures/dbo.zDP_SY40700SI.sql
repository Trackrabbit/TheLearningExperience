SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY40700SI] (@SETUPKEY smallint, @DynGPWFWebServURL char(255), @OfficeServerURL char(255), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY40700 (SETUPKEY, DynGPWFWebServURL, OfficeServerURL) VALUES ( @SETUPKEY, @DynGPWFWebServURL, @OfficeServerURL) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY40700SI] TO [DYNGRP]
GO
