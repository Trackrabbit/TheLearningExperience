SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_TA00860SI] (@TAVersionMajor smallint, @TAVersionMinor smallint, @TABuild smallint, @companyID smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .TA00860 (TAVersionMajor, TAVersionMinor, TABuild, companyID) VALUES ( @TAVersionMajor, @TAVersionMinor, @TABuild, @companyID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_TA00860SI] TO [DYNGRP]
GO
