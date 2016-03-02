SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_POA40002N_2] (@BS int, @CMPANYID smallint, @APRVLUSERID char(15), @DEX_ROW_ID int, @CMPANYID_RS smallint, @APRVLUSERID_RS char(15), @CMPANYID_RE smallint, @APRVLUSERID_RE char(15)) AS  set nocount on IF @CMPANYID_RS IS NULL BEGIN SELECT TOP 25  APRVLUSERID, CMPANYID, POA_Approval_Type, POA_Approval_Authority_A, POA_Report_To_User_ID, POA_Security_Type, DEX_ROW_ID FROM .POA40002 WHERE ( CMPANYID = @CMPANYID AND APRVLUSERID = @APRVLUSERID AND DEX_ROW_ID > @DEX_ROW_ID OR CMPANYID = @CMPANYID AND APRVLUSERID > @APRVLUSERID OR CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC, APRVLUSERID ASC, DEX_ROW_ID ASC END ELSE IF @CMPANYID_RS = @CMPANYID_RE BEGIN SELECT TOP 25  APRVLUSERID, CMPANYID, POA_Approval_Type, POA_Approval_Authority_A, POA_Report_To_User_ID, POA_Security_Type, DEX_ROW_ID FROM .POA40002 WHERE CMPANYID = @CMPANYID_RS AND APRVLUSERID BETWEEN @APRVLUSERID_RS AND @APRVLUSERID_RE AND ( CMPANYID = @CMPANYID AND APRVLUSERID = @APRVLUSERID AND DEX_ROW_ID > @DEX_ROW_ID OR CMPANYID = @CMPANYID AND APRVLUSERID > @APRVLUSERID OR CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC, APRVLUSERID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  APRVLUSERID, CMPANYID, POA_Approval_Type, POA_Approval_Authority_A, POA_Report_To_User_ID, POA_Security_Type, DEX_ROW_ID FROM .POA40002 WHERE CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND APRVLUSERID BETWEEN @APRVLUSERID_RS AND @APRVLUSERID_RE AND ( CMPANYID = @CMPANYID AND APRVLUSERID = @APRVLUSERID AND DEX_ROW_ID > @DEX_ROW_ID OR CMPANYID = @CMPANYID AND APRVLUSERID > @APRVLUSERID OR CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC, APRVLUSERID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POA40002N_2] TO [DYNGRP]
GO
