SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BE040200SS_1] (@EMPID_I char(15), @IC_Instance_Number_I smallint, @SEQ_I int) AS  set nocount on SELECT TOP 1  EMPID_I, IC_Instance_Number_I, SEQ_I, IDATE_I, IC_Auto_Post_CB_I, IC_Amount_Due_I, IC_Amount_Paid_I, IC_Amount_Due_Total_I, IC_Amount_Paid_Total_I, IC_Balance_I, DSCRIPTN, DEX_ROW_ID FROM .BE040200 WHERE EMPID_I = @EMPID_I AND IC_Instance_Number_I = @IC_Instance_Number_I AND SEQ_I = @SEQ_I ORDER BY EMPID_I ASC, IC_Instance_Number_I ASC, SEQ_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BE040200SS_1] TO [DYNGRP]
GO
