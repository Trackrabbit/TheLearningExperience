SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_POA40002UN_3] (@BS int, @CMPANYID smallint, @POA_Approval_Type smallint, @CMPANYID_RS smallint, @POA_Approval_Type_RS smallint, @CMPANYID_RE smallint, @POA_Approval_Type_RE smallint) AS  set nocount on IF @CMPANYID_RS IS NULL BEGIN SELECT TOP 25  APRVLUSERID, CMPANYID, POA_Approval_Type, POA_Approval_Authority_A, POA_Report_To_User_ID, POA_Security_Type, DEX_ROW_ID FROM .POA40002 WHERE ( CMPANYID = @CMPANYID AND POA_Approval_Type > @POA_Approval_Type OR CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC, POA_Approval_Type ASC, DEX_ROW_ID ASC END ELSE IF @CMPANYID_RS = @CMPANYID_RE BEGIN SELECT TOP 25  APRVLUSERID, CMPANYID, POA_Approval_Type, POA_Approval_Authority_A, POA_Report_To_User_ID, POA_Security_Type, DEX_ROW_ID FROM .POA40002 WHERE CMPANYID = @CMPANYID_RS AND POA_Approval_Type BETWEEN @POA_Approval_Type_RS AND @POA_Approval_Type_RE AND ( CMPANYID = @CMPANYID AND POA_Approval_Type > @POA_Approval_Type OR CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC, POA_Approval_Type ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  APRVLUSERID, CMPANYID, POA_Approval_Type, POA_Approval_Authority_A, POA_Report_To_User_ID, POA_Security_Type, DEX_ROW_ID FROM .POA40002 WHERE CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND POA_Approval_Type BETWEEN @POA_Approval_Type_RS AND @POA_Approval_Type_RE AND ( CMPANYID = @CMPANYID AND POA_Approval_Type > @POA_Approval_Type OR CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC, POA_Approval_Type ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POA40002UN_3] TO [DYNGRP]
GO
