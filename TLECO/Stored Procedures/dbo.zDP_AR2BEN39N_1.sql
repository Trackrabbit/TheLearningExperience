SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AR2BEN39N_1] (@BS int, @EMPID_I char(15), @BNFBEGDT datetime, @BENEFIT char(7), @I2_I smallint, @I1_I smallint, @EMPID_I_RS char(15), @BNFBEGDT_RS datetime, @BENEFIT_RS char(7), @I2_I_RS smallint, @I1_I_RS smallint, @EMPID_I_RE char(15), @BNFBEGDT_RE datetime, @BENEFIT_RE char(7), @I2_I_RE smallint, @I1_I_RE smallint) AS  set nocount on IF @EMPID_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, BNFBEGDT, BENEFIT, I2_I, I1_I, BENEFITFUNDCODE_I, BENEFITFUNDNAME_I, CHECK1_I, IBENEFITPERCENT_I, IBENEFITAMOUNT_I, DEX_ROW_ID FROM .AR2BEN39 WHERE ( EMPID_I = @EMPID_I AND BNFBEGDT = @BNFBEGDT AND BENEFIT = @BENEFIT AND I2_I = @I2_I AND I1_I > @I1_I OR EMPID_I = @EMPID_I AND BNFBEGDT = @BNFBEGDT AND BENEFIT = @BENEFIT AND I2_I > @I2_I OR EMPID_I = @EMPID_I AND BNFBEGDT = @BNFBEGDT AND BENEFIT > @BENEFIT OR EMPID_I = @EMPID_I AND BNFBEGDT < @BNFBEGDT OR EMPID_I > @EMPID_I ) ORDER BY EMPID_I ASC, BNFBEGDT DESC, BENEFIT ASC, I2_I ASC, I1_I ASC END ELSE IF @EMPID_I_RS = @EMPID_I_RE BEGIN SELECT TOP 25  EMPID_I, BNFBEGDT, BENEFIT, I2_I, I1_I, BENEFITFUNDCODE_I, BENEFITFUNDNAME_I, CHECK1_I, IBENEFITPERCENT_I, IBENEFITAMOUNT_I, DEX_ROW_ID FROM .AR2BEN39 WHERE EMPID_I = @EMPID_I_RS AND BNFBEGDT BETWEEN @BNFBEGDT_RE AND @BNFBEGDT_RS AND BENEFIT BETWEEN @BENEFIT_RS AND @BENEFIT_RE AND I2_I BETWEEN @I2_I_RS AND @I2_I_RE AND I1_I BETWEEN @I1_I_RS AND @I1_I_RE AND ( EMPID_I = @EMPID_I AND BNFBEGDT = @BNFBEGDT AND BENEFIT = @BENEFIT AND I2_I = @I2_I AND I1_I > @I1_I OR EMPID_I = @EMPID_I AND BNFBEGDT = @BNFBEGDT AND BENEFIT = @BENEFIT AND I2_I > @I2_I OR EMPID_I = @EMPID_I AND BNFBEGDT = @BNFBEGDT AND BENEFIT > @BENEFIT OR EMPID_I = @EMPID_I AND BNFBEGDT < @BNFBEGDT OR EMPID_I > @EMPID_I ) ORDER BY EMPID_I ASC, BNFBEGDT DESC, BENEFIT ASC, I2_I ASC, I1_I ASC END ELSE BEGIN SELECT TOP 25  EMPID_I, BNFBEGDT, BENEFIT, I2_I, I1_I, BENEFITFUNDCODE_I, BENEFITFUNDNAME_I, CHECK1_I, IBENEFITPERCENT_I, IBENEFITAMOUNT_I, DEX_ROW_ID FROM .AR2BEN39 WHERE EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND BNFBEGDT BETWEEN @BNFBEGDT_RE AND @BNFBEGDT_RS AND BENEFIT BETWEEN @BENEFIT_RS AND @BENEFIT_RE AND I2_I BETWEEN @I2_I_RS AND @I2_I_RE AND I1_I BETWEEN @I1_I_RS AND @I1_I_RE AND ( EMPID_I = @EMPID_I AND BNFBEGDT = @BNFBEGDT AND BENEFIT = @BENEFIT AND I2_I = @I2_I AND I1_I > @I1_I OR EMPID_I = @EMPID_I AND BNFBEGDT = @BNFBEGDT AND BENEFIT = @BENEFIT AND I2_I > @I2_I OR EMPID_I = @EMPID_I AND BNFBEGDT = @BNFBEGDT AND BENEFIT > @BENEFIT OR EMPID_I = @EMPID_I AND BNFBEGDT < @BNFBEGDT OR EMPID_I > @EMPID_I ) ORDER BY EMPID_I ASC, BNFBEGDT DESC, BENEFIT ASC, I2_I ASC, I1_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AR2BEN39N_1] TO [DYNGRP]
GO
