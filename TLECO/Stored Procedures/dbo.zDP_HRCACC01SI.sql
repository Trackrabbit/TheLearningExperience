SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRCACC01SI] (@COMPANYCODE_I char(7), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .HRCACC01 (COMPANYCODE_I) VALUES ( @COMPANYCODE_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRCACC01SI] TO [DYNGRP]
GO
