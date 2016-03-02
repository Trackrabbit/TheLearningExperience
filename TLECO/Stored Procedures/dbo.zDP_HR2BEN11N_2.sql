SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2BEN11N_2] (@BS int, @BENEFITFUNDCODE_I char(7), @DEX_ROW_ID int, @BENEFITFUNDCODE_I_RS char(7), @BENEFITFUNDCODE_I_RE char(7)) AS  set nocount on IF @BENEFITFUNDCODE_I_RS IS NULL BEGIN SELECT TOP 25  BENEFIT, I1_I, BENEFITFUNDCODE_I, BENEFITFUNDNAME_I, CHECK1_I, DEX_ROW_ID FROM .HR2BEN11 WHERE ( BENEFITFUNDCODE_I = @BENEFITFUNDCODE_I AND DEX_ROW_ID > @DEX_ROW_ID OR BENEFITFUNDCODE_I > @BENEFITFUNDCODE_I ) ORDER BY BENEFITFUNDCODE_I ASC, DEX_ROW_ID ASC END ELSE IF @BENEFITFUNDCODE_I_RS = @BENEFITFUNDCODE_I_RE BEGIN SELECT TOP 25  BENEFIT, I1_I, BENEFITFUNDCODE_I, BENEFITFUNDNAME_I, CHECK1_I, DEX_ROW_ID FROM .HR2BEN11 WHERE BENEFITFUNDCODE_I = @BENEFITFUNDCODE_I_RS AND ( BENEFITFUNDCODE_I = @BENEFITFUNDCODE_I AND DEX_ROW_ID > @DEX_ROW_ID OR BENEFITFUNDCODE_I > @BENEFITFUNDCODE_I ) ORDER BY BENEFITFUNDCODE_I ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BENEFIT, I1_I, BENEFITFUNDCODE_I, BENEFITFUNDNAME_I, CHECK1_I, DEX_ROW_ID FROM .HR2BEN11 WHERE BENEFITFUNDCODE_I BETWEEN @BENEFITFUNDCODE_I_RS AND @BENEFITFUNDCODE_I_RE AND ( BENEFITFUNDCODE_I = @BENEFITFUNDCODE_I AND DEX_ROW_ID > @DEX_ROW_ID OR BENEFITFUNDCODE_I > @BENEFITFUNDCODE_I ) ORDER BY BENEFITFUNDCODE_I ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2BEN11N_2] TO [DYNGRP]
GO