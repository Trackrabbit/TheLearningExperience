SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHR2BE34SI] (@EMPID_I char(15), @I1_I smallint, @IBENEFITAMOUNT_I numeric(19,5), @I2_I smallint, @CHECK1_I tinyint, @CHECK2_I tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AHR2BE34 (EMPID_I, I1_I, IBENEFITAMOUNT_I, I2_I, CHECK1_I, CHECK2_I) VALUES ( @EMPID_I, @I1_I, @IBENEFITAMOUNT_I, @I2_I, @CHECK1_I, @CHECK2_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2BE34SI] TO [DYNGRP]
GO