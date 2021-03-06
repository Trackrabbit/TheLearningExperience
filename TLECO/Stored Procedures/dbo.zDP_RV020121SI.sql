SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RV020121SI] (@REVIEWSETUPCODE_I char(31), @REVIEWSETUPNAME_I char(31), @REVIEWPREFERENCES_I smallint, @REVIEWRANGE_I smallint, @POSTTOTODO_I tinyint, @TOTALWEIGHT_I smallint, @REVINTERVALPREFS_I smallint, @USEWORDSGB_I smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .RV020121 (REVIEWSETUPCODE_I, REVIEWSETUPNAME_I, REVIEWPREFERENCES_I, REVIEWRANGE_I, POSTTOTODO_I, TOTALWEIGHT_I, REVINTERVALPREFS_I, USEWORDSGB_I) VALUES ( @REVIEWSETUPCODE_I, @REVIEWSETUPNAME_I, @REVIEWPREFERENCES_I, @REVIEWRANGE_I, @POSTTOTODO_I, @TOTALWEIGHT_I, @REVINTERVALPREFS_I, @USEWORDSGB_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RV020121SI] TO [DYNGRP]
GO
