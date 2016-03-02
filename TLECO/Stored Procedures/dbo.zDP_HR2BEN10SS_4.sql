SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2BEN10SS_4] (@EMPID_I char(15), @BENEFIT char(7), @BNFBEGDT datetime, @I1_I smallint) AS  set nocount on SELECT TOP 1  EMPID_I, BNFBEGDT, BENEFIT, I1_I, BENEFITTYPE_I, IINDEX_I, POLICYNUMBER_I, GROUPNUMBER_I, DATE1, BENEFITSTATUS_I, INACTIVE, OVERRIDE_I, CHECK1_I, CHECK2_I, CHECK3_I, CHECK4_I, CHECK5_I, DATEDUE_I, DSCRIPTN, COMMENTSTR10_I, IBENEFITAMOUNT_I, LIFEAMTEMPL_I, LIFEAMTSPOUSE_I, LIFEAMTCHILDREN_I, BENELIGIBILEDATE_I, BNFENDDT, VARBENFT, BNFTFREQ, COSTEMPLOYEE_I, COSTEMPLOYER_I, COSTOTHER1_I, COSTOTHER2_I, COSTOTHER3_I, I2_I, I3_I, I4_I, NUMBEROFCHILDREN_I, COSTTOTAL_I, COSTCOBRA_I, BENEFITDEDUCTIBLE_I, BNPAYPMX, BNFYRMAX, BNFLFMAX, BENEFICIARYINDEX_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, CONTRIBPRETAX_I, CONTPRETAXDLR_I, CONTRIBAFTERTAX_I, CONTAFTERTAXDLR_I, CONTRIBBONUS_I, CONTRIBBONUSDOLLAR_I, HIGHLYCOMPENSATED_I, LOANACTIVE_I, Benefit_Fiscal_Max, Deduction_Fiscal_Yr_Max, DEX_ROW_ID FROM .HR2BEN10 WHERE EMPID_I = @EMPID_I AND BENEFIT = @BENEFIT AND BNFBEGDT = @BNFBEGDT AND I1_I = @I1_I ORDER BY EMPID_I ASC, BENEFIT ASC, BNFBEGDT DESC, I1_I DESC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2BEN10SS_4] TO [DYNGRP]
GO