SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHR2SA02SI] (@EMPID_I char(15), @ISEQUENCENUMBER_I smallint, @EFFECTIVEDATE_I datetime, @DSCRIPTN char(31), @WAGE_I numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AHR2SA02 (EMPID_I, ISEQUENCENUMBER_I, EFFECTIVEDATE_I, DSCRIPTN, WAGE_I) VALUES ( @EMPID_I, @ISEQUENCENUMBER_I, @EFFECTIVEDATE_I, @DSCRIPTN, @WAGE_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2SA02SI] TO [DYNGRP]
GO
