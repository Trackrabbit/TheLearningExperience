SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2DIS05SI] (@EMPID_I char(15), @DATEFILED_I datetime, @DSCRIPTN char(31), @POINTS_I smallint, @CHANGES_I smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .HR2DIS05 (EMPID_I, DATEFILED_I, DSCRIPTN, POINTS_I, CHANGES_I) VALUES ( @EMPID_I, @DATEFILED_I, @DSCRIPTN, @POINTS_I, @CHANGES_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2DIS05SI] TO [DYNGRP]
GO
