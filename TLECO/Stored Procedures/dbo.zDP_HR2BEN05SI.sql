SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2BEN05SI] (@BENEFITTYPE_I char(7), @DSCRIPTN char(31), @NOTESINDEX_I numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .HR2BEN05 (BENEFITTYPE_I, DSCRIPTN, NOTESINDEX_I) VALUES ( @BENEFITTYPE_I, @DSCRIPTN, @NOTESINDEX_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2BEN05SI] TO [DYNGRP]
GO