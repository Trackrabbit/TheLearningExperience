SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AR24BE15SI] (@EMPID_I char(15), @BENEFIT char(7), @I1_I smallint, @IBENEFITPERCENT_I smallint, @IBENEFITAMOUNT_I numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AR24BE15 (EMPID_I, BENEFIT, I1_I, IBENEFITPERCENT_I, IBENEFITAMOUNT_I) VALUES ( @EMPID_I, @BENEFIT, @I1_I, @IBENEFITPERCENT_I, @IBENEFITAMOUNT_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AR24BE15SI] TO [DYNGRP]
GO
