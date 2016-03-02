SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4610006SI] (@BSSI_NAICS char(31), @DSCRIPTN char(31), @BSSI_TenantTypeID char(25), @BSSI_Description char(51), @BSSI_Category char(31), @BSSI_Description2 char(51), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4610006 (BSSI_NAICS, DSCRIPTN, BSSI_TenantTypeID, BSSI_Description, BSSI_Category, BSSI_Description2, NOTEINDX) VALUES ( @BSSI_NAICS, @DSCRIPTN, @BSSI_TenantTypeID, @BSSI_Description, @BSSI_Category, @BSSI_Description2, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4610006SI] TO [DYNGRP]
GO
