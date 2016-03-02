SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BEA40200SS_2] (@EMPID_I char(15), @IC_Instance_Number_I smallint, @IDATE_I datetime) AS  set nocount on SELECT TOP 1  EMPID_I, IC_Instance_Number_I, SEQ_I, IDATE_I, IC_Auto_Post_CB_I, IC_Amount_Due_I, IC_Amount_Paid_I, IC_Amount_Due_Total_I, IC_Amount_Paid_Total_I, IC_Balance_I, DSCRIPTN, DEX_ROW_ID FROM .BEA40200 WHERE EMPID_I = @EMPID_I AND IC_Instance_Number_I = @IC_Instance_Number_I AND IDATE_I = @IDATE_I ORDER BY EMPID_I ASC, IC_Instance_Number_I ASC, IDATE_I ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BEA40200SS_2] TO [DYNGRP]
GO
