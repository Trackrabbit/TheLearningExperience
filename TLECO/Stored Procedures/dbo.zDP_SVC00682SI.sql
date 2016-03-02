SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00682SI] (@CONSTS smallint, @CONTNBR char(11), @LNSEQNBR numeric(19,5), @svcCoveragePeriodStart2_1 datetime, @svcCoveragePeriodStart2_2 datetime, @svcCoveragePeriodStart2_3 datetime, @svcCoveragePeriodStart2_4 datetime, @svcCoveragePeriodStart2_5 datetime, @svcCoveragePeriodStart2_6 datetime, @svcCoveragePeriodStart2_7 datetime, @svcCoveragePeriodEnd2_1 datetime, @svcCoveragePeriodEnd2_2 datetime, @svcCoveragePeriodEnd2_3 datetime, @svcCoveragePeriodEnd2_4 datetime, @svcCoveragePeriodEnd2_5 datetime, @svcCoveragePeriodEnd2_6 datetime, @svcCoveragePeriodEnd2_7 datetime, @svcCoveragePeriodStart3_1 datetime, @svcCoveragePeriodStart3_2 datetime, @svcCoveragePeriodStart3_3 datetime, @svcCoveragePeriodStart3_4 datetime, @svcCoveragePeriodStart3_5 datetime, @svcCoveragePeriodStart3_6 datetime, @svcCoveragePeriodStart3_7 datetime, @svcCoveragePeriodEnd3_1 datetime, @svcCoveragePeriodEnd3_2 datetime, @svcCoveragePeriodEnd3_3 datetime, @svcCoveragePeriodEnd3_4 datetime, @svcCoveragePeriodEnd3_5 datetime, @svcCoveragePeriodEnd3_6 datetime, @svcCoveragePeriodEnd3_7 datetime, @svcCoveragePeriodStart4_1 datetime, @svcCoveragePeriodStart4_2 datetime, @svcCoveragePeriodStart4_3 datetime, @svcCoveragePeriodStart4_4 datetime, @svcCoveragePeriodStart4_5 datetime, @svcCoveragePeriodStart4_6 datetime, @svcCoveragePeriodStart4_7 datetime, @svcCoveragePeriodEnd4_1 datetime, @svcCoveragePeriodEnd4_2 datetime, @svcCoveragePeriodEnd4_3 datetime, @svcCoveragePeriodEnd4_4 datetime, @svcCoveragePeriodEnd4_5 datetime, @svcCoveragePeriodEnd4_6 datetime, @svcCoveragePeriodEnd4_7 datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00682 (CONSTS, CONTNBR, LNSEQNBR, svcCoveragePeriodStart2_1, svcCoveragePeriodStart2_2, svcCoveragePeriodStart2_3, svcCoveragePeriodStart2_4, svcCoveragePeriodStart2_5, svcCoveragePeriodStart2_6, svcCoveragePeriodStart2_7, svcCoveragePeriodEnd2_1, svcCoveragePeriodEnd2_2, svcCoveragePeriodEnd2_3, svcCoveragePeriodEnd2_4, svcCoveragePeriodEnd2_5, svcCoveragePeriodEnd2_6, svcCoveragePeriodEnd2_7, svcCoveragePeriodStart3_1, svcCoveragePeriodStart3_2, svcCoveragePeriodStart3_3, svcCoveragePeriodStart3_4, svcCoveragePeriodStart3_5, svcCoveragePeriodStart3_6, svcCoveragePeriodStart3_7, svcCoveragePeriodEnd3_1, svcCoveragePeriodEnd3_2, svcCoveragePeriodEnd3_3, svcCoveragePeriodEnd3_4, svcCoveragePeriodEnd3_5, svcCoveragePeriodEnd3_6, svcCoveragePeriodEnd3_7, svcCoveragePeriodStart4_1, svcCoveragePeriodStart4_2, svcCoveragePeriodStart4_3, svcCoveragePeriodStart4_4, svcCoveragePeriodStart4_5, svcCoveragePeriodStart4_6, svcCoveragePeriodStart4_7, svcCoveragePeriodEnd4_1, svcCoveragePeriodEnd4_2, svcCoveragePeriodEnd4_3, svcCoveragePeriodEnd4_4, svcCoveragePeriodEnd4_5, svcCoveragePeriodEnd4_6, svcCoveragePeriodEnd4_7) VALUES ( @CONSTS, @CONTNBR, @LNSEQNBR, @svcCoveragePeriodStart2_1, @svcCoveragePeriodStart2_2, @svcCoveragePeriodStart2_3, @svcCoveragePeriodStart2_4, @svcCoveragePeriodStart2_5, @svcCoveragePeriodStart2_6, @svcCoveragePeriodStart2_7, @svcCoveragePeriodEnd2_1, @svcCoveragePeriodEnd2_2, @svcCoveragePeriodEnd2_3, @svcCoveragePeriodEnd2_4, @svcCoveragePeriodEnd2_5, @svcCoveragePeriodEnd2_6, @svcCoveragePeriodEnd2_7, @svcCoveragePeriodStart3_1, @svcCoveragePeriodStart3_2, @svcCoveragePeriodStart3_3, @svcCoveragePeriodStart3_4, @svcCoveragePeriodStart3_5, @svcCoveragePeriodStart3_6, @svcCoveragePeriodStart3_7, @svcCoveragePeriodEnd3_1, @svcCoveragePeriodEnd3_2, @svcCoveragePeriodEnd3_3, @svcCoveragePeriodEnd3_4, @svcCoveragePeriodEnd3_5, @svcCoveragePeriodEnd3_6, @svcCoveragePeriodEnd3_7, @svcCoveragePeriodStart4_1, @svcCoveragePeriodStart4_2, @svcCoveragePeriodStart4_3, @svcCoveragePeriodStart4_4, @svcCoveragePeriodStart4_5, @svcCoveragePeriodStart4_6, @svcCoveragePeriodStart4_7, @svcCoveragePeriodEnd4_1, @svcCoveragePeriodEnd4_2, @svcCoveragePeriodEnd4_3, @svcCoveragePeriodEnd4_4, @svcCoveragePeriodEnd4_5, @svcCoveragePeriodEnd4_6, @svcCoveragePeriodEnd4_7) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00682SI] TO [DYNGRP]
GO
