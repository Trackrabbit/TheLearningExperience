SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHR2BE31SI] (@EMPID_I char(15), @CHECK1_I tinyint, @CHECK2_I tinyint, @IDATE_I datetime, @COMMENTSTR10_I char(11), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AHR2BE31 (EMPID_I, CHECK1_I, CHECK2_I, IDATE_I, COMMENTSTR10_I) VALUES ( @EMPID_I, @CHECK1_I, @CHECK2_I, @IDATE_I, @COMMENTSTR10_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2BE31SI] TO [DYNGRP]
GO
