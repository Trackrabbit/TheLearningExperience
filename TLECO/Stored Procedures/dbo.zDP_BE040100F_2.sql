SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BE040100F_2] (@EMPID_I_RS char(15), @EFFECTIVEDATE_I_RS datetime, @EMPID_I_RE char(15), @EFFECTIVEDATE_I_RE datetime) AS  set nocount on IF @EMPID_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, IC_Instance_Number_I, EFFECTIVEDATE_I, LLASTNAME_I, FFIRSTNAME_I, MI_I, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE_I, HOMEPHONE, DATEOFBIRTH_I, RELATIONSHIP, DEPSSN_I, SSN_I, BENEFITEXPIRE_I, BNFBEGDT, COBRAQE_I, COMMENTSTR20, DSCRIPTN, IC_Initial_Balance_I, COSTCOBRA_I, IC_Months_INT_I, IC_Cobra_Month_DDL_I, IC_Cobra_Dependent_DDL_I, IC_Cobra_Employee_DDL_I, IBENEFITFREQUENCY_I, IC_First_Payment_Date_I, IC_Last_Payment_Date_I, IC_Auto_Post_CB_I, IC_Next_Auto_Post_Date_I, DEX_ROW_ID FROM .BE040100 ORDER BY EMPID_I ASC, EFFECTIVEDATE_I ASC, DEX_ROW_ID ASC END ELSE IF @EMPID_I_RS = @EMPID_I_RE BEGIN SELECT TOP 25  EMPID_I, IC_Instance_Number_I, EFFECTIVEDATE_I, LLASTNAME_I, FFIRSTNAME_I, MI_I, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE_I, HOMEPHONE, DATEOFBIRTH_I, RELATIONSHIP, DEPSSN_I, SSN_I, BENEFITEXPIRE_I, BNFBEGDT, COBRAQE_I, COMMENTSTR20, DSCRIPTN, IC_Initial_Balance_I, COSTCOBRA_I, IC_Months_INT_I, IC_Cobra_Month_DDL_I, IC_Cobra_Dependent_DDL_I, IC_Cobra_Employee_DDL_I, IBENEFITFREQUENCY_I, IC_First_Payment_Date_I, IC_Last_Payment_Date_I, IC_Auto_Post_CB_I, IC_Next_Auto_Post_Date_I, DEX_ROW_ID FROM .BE040100 WHERE EMPID_I = @EMPID_I_RS AND EFFECTIVEDATE_I BETWEEN @EFFECTIVEDATE_I_RS AND @EFFECTIVEDATE_I_RE ORDER BY EMPID_I ASC, EFFECTIVEDATE_I ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  EMPID_I, IC_Instance_Number_I, EFFECTIVEDATE_I, LLASTNAME_I, FFIRSTNAME_I, MI_I, ADDRESS1, ADDRESS2, CITY, STATE, ZIPCODE_I, HOMEPHONE, DATEOFBIRTH_I, RELATIONSHIP, DEPSSN_I, SSN_I, BENEFITEXPIRE_I, BNFBEGDT, COBRAQE_I, COMMENTSTR20, DSCRIPTN, IC_Initial_Balance_I, COSTCOBRA_I, IC_Months_INT_I, IC_Cobra_Month_DDL_I, IC_Cobra_Dependent_DDL_I, IC_Cobra_Employee_DDL_I, IBENEFITFREQUENCY_I, IC_First_Payment_Date_I, IC_Last_Payment_Date_I, IC_Auto_Post_CB_I, IC_Next_Auto_Post_Date_I, DEX_ROW_ID FROM .BE040100 WHERE EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND EFFECTIVEDATE_I BETWEEN @EFFECTIVEDATE_I_RS AND @EFFECTIVEDATE_I_RE ORDER BY EMPID_I ASC, EFFECTIVEDATE_I ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BE040100F_2] TO [DYNGRP]
GO
