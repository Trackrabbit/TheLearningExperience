SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2BEN39SI] (@EMPID_I char(15), @BNFBEGDT datetime, @BENEFIT char(7), @I2_I smallint, @I1_I smallint, @BENEFITFUNDCODE_I char(7), @BENEFITFUNDNAME_I char(51), @CHECK1_I tinyint, @IBENEFITPERCENT_I smallint, @IBENEFITAMOUNT_I numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .HR2BEN39 (EMPID_I, BNFBEGDT, BENEFIT, I2_I, I1_I, BENEFITFUNDCODE_I, BENEFITFUNDNAME_I, CHECK1_I, IBENEFITPERCENT_I, IBENEFITAMOUNT_I) VALUES ( @EMPID_I, @BNFBEGDT, @BENEFIT, @I2_I, @I1_I, @BENEFITFUNDCODE_I, @BENEFITFUNDNAME_I, @CHECK1_I, @IBENEFITPERCENT_I, @IBENEFITAMOUNT_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2BEN39SI] TO [DYNGRP]
GO
