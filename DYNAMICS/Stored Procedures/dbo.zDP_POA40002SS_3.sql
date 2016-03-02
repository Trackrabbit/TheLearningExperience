SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_POA40002SS_3] (@CMPANYID smallint, @POA_Approval_Type smallint) AS  set nocount on SELECT TOP 1  APRVLUSERID, CMPANYID, POA_Approval_Type, POA_Approval_Authority_A, POA_Report_To_User_ID, POA_Security_Type, DEX_ROW_ID FROM .POA40002 WHERE CMPANYID = @CMPANYID AND POA_Approval_Type = @POA_Approval_Type ORDER BY CMPANYID ASC, POA_Approval_Type ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POA40002SS_3] TO [DYNGRP]
GO
