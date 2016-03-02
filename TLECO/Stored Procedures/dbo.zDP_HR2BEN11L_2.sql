SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2BEN11L_2] (@BENEFITFUNDCODE_I_RS char(7), @BENEFITFUNDCODE_I_RE char(7)) AS  set nocount on IF @BENEFITFUNDCODE_I_RS IS NULL BEGIN SELECT TOP 25  BENEFIT, I1_I, BENEFITFUNDCODE_I, BENEFITFUNDNAME_I, CHECK1_I, DEX_ROW_ID FROM .HR2BEN11 ORDER BY BENEFITFUNDCODE_I DESC, DEX_ROW_ID DESC END ELSE IF @BENEFITFUNDCODE_I_RS = @BENEFITFUNDCODE_I_RE BEGIN SELECT TOP 25  BENEFIT, I1_I, BENEFITFUNDCODE_I, BENEFITFUNDNAME_I, CHECK1_I, DEX_ROW_ID FROM .HR2BEN11 WHERE BENEFITFUNDCODE_I = @BENEFITFUNDCODE_I_RS ORDER BY BENEFITFUNDCODE_I DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  BENEFIT, I1_I, BENEFITFUNDCODE_I, BENEFITFUNDNAME_I, CHECK1_I, DEX_ROW_ID FROM .HR2BEN11 WHERE BENEFITFUNDCODE_I BETWEEN @BENEFITFUNDCODE_I_RS AND @BENEFITFUNDCODE_I_RE ORDER BY BENEFITFUNDCODE_I DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2BEN11L_2] TO [DYNGRP]
GO
