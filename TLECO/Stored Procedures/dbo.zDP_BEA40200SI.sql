SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BEA40200SI] (@EMPID_I char(15), @IC_Instance_Number_I smallint, @SEQ_I int, @IDATE_I datetime, @IC_Auto_Post_CB_I tinyint, @IC_Amount_Due_I numeric(19,5), @IC_Amount_Paid_I numeric(19,5), @IC_Amount_Due_Total_I numeric(19,5), @IC_Amount_Paid_Total_I numeric(19,5), @IC_Balance_I numeric(19,5), @DSCRIPTN char(31), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .BEA40200 (EMPID_I, IC_Instance_Number_I, SEQ_I, IDATE_I, IC_Auto_Post_CB_I, IC_Amount_Due_I, IC_Amount_Paid_I, IC_Amount_Due_Total_I, IC_Amount_Paid_Total_I, IC_Balance_I, DSCRIPTN) VALUES ( @EMPID_I, @IC_Instance_Number_I, @SEQ_I, @IDATE_I, @IC_Auto_Post_CB_I, @IC_Amount_Due_I, @IC_Amount_Paid_I, @IC_Amount_Due_Total_I, @IC_Amount_Paid_Total_I, @IC_Balance_I, @DSCRIPTN) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BEA40200SI] TO [DYNGRP]
GO
