SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BE040200L_1] (@EMPID_I_RS char(15), @IC_Instance_Number_I_RS smallint, @SEQ_I_RS int, @EMPID_I_RE char(15), @IC_Instance_Number_I_RE smallint, @SEQ_I_RE int) AS  set nocount on IF @EMPID_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, IC_Instance_Number_I, SEQ_I, IDATE_I, IC_Auto_Post_CB_I, IC_Amount_Due_I, IC_Amount_Paid_I, IC_Amount_Due_Total_I, IC_Amount_Paid_Total_I, IC_Balance_I, DSCRIPTN, DEX_ROW_ID FROM .BE040200 ORDER BY EMPID_I DESC, IC_Instance_Number_I DESC, SEQ_I DESC END ELSE IF @EMPID_I_RS = @EMPID_I_RE BEGIN SELECT TOP 25  EMPID_I, IC_Instance_Number_I, SEQ_I, IDATE_I, IC_Auto_Post_CB_I, IC_Amount_Due_I, IC_Amount_Paid_I, IC_Amount_Due_Total_I, IC_Amount_Paid_Total_I, IC_Balance_I, DSCRIPTN, DEX_ROW_ID FROM .BE040200 WHERE EMPID_I = @EMPID_I_RS AND IC_Instance_Number_I BETWEEN @IC_Instance_Number_I_RS AND @IC_Instance_Number_I_RE AND SEQ_I BETWEEN @SEQ_I_RS AND @SEQ_I_RE ORDER BY EMPID_I DESC, IC_Instance_Number_I DESC, SEQ_I DESC END ELSE BEGIN SELECT TOP 25  EMPID_I, IC_Instance_Number_I, SEQ_I, IDATE_I, IC_Auto_Post_CB_I, IC_Amount_Due_I, IC_Amount_Paid_I, IC_Amount_Due_Total_I, IC_Amount_Paid_Total_I, IC_Balance_I, DSCRIPTN, DEX_ROW_ID FROM .BE040200 WHERE EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND IC_Instance_Number_I BETWEEN @IC_Instance_Number_I_RS AND @IC_Instance_Number_I_RE AND SEQ_I BETWEEN @SEQ_I_RS AND @SEQ_I_RE ORDER BY EMPID_I DESC, IC_Instance_Number_I DESC, SEQ_I DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BE040200L_1] TO [DYNGRP]
GO
