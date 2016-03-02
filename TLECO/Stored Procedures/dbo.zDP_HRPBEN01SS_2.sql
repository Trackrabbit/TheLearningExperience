SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRPBEN01SS_2] (@BENEFIT char(7), @EMPID_I char(15)) AS  set nocount on SELECT TOP 1  EMPID_I, BENEFIT, BENEFITTYPE_I, IINDEX_I, BENEFITKIND_I, COMPLETIONSTATUS_I, POLICYNUMBER_I, BENEFITSTATUS_I, INACTIVE, OVERRIDE_I, CHECK1_I, CHECK2_I, CHECK3_I, CHECK4_I, CHECK5_I, DATEDUE_I, DSCRIPTN, COMMENTSTR10_I, IBENEFITAMOUNT_I, LIFEAMTEMPL_I, LIFEAMTSPOUSE_I, LIFEAMTCHILDREN_I, BENELIGIBILEDATE_I, BNFBEGDT, BNFENDDT, VARBENFT, BNFTFREQ, COSTEMPLOYEE_I, COSTEMPLOYER_I, COSTOTHER1_I, COSTOTHER2_I, I1_I, I2_I, I3_I, I4_I, NUMBEROFCHILDREN_I, COSTTOTAL_I, COSTCOBRA_I, BENEFITDEDUCTIBLE_I, BNPAYPMX, BNFYRMAX, BNFLFMAX, BENEFICIARYINDEX_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, CONTRIBPRETAX_I, CONTPRETAXDLR_I, CONTRIBAFTERTAX_I, CONTAFTERTAXDLR_I, CONTRIBBONUS_I, CONTRIBBONUSDOLLAR_I, HIGHLYCOMPENSATED_I, LOANACTIVE_I, TYPEOFCODE_I, DEX_ROW_ID FROM .HRPBEN01 WHERE BENEFIT = @BENEFIT AND EMPID_I = @EMPID_I ORDER BY BENEFIT ASC, EMPID_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRPBEN01SS_2] TO [DYNGRP]
GO
