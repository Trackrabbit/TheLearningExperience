SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2BEN11SS_2] (@BENEFITFUNDCODE_I char(7)) AS  set nocount on SELECT TOP 1  BENEFIT, I1_I, BENEFITFUNDCODE_I, BENEFITFUNDNAME_I, CHECK1_I, DEX_ROW_ID FROM .HR2BEN11 WHERE BENEFITFUNDCODE_I = @BENEFITFUNDCODE_I ORDER BY BENEFITFUNDCODE_I ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2BEN11SS_2] TO [DYNGRP]
GO
