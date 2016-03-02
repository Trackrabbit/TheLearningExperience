SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_POA40002SI] (@APRVLUSERID char(15), @CMPANYID smallint, @POA_Approval_Type smallint, @POA_Approval_Authority_A numeric(19,5), @POA_Report_To_User_ID char(15), @POA_Security_Type smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .POA40002 (APRVLUSERID, CMPANYID, POA_Approval_Type, POA_Approval_Authority_A, POA_Report_To_User_ID, POA_Security_Type) VALUES ( @APRVLUSERID, @CMPANYID, @POA_Approval_Type, @POA_Approval_Authority_A, @POA_Report_To_User_ID, @POA_Security_Type) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POA40002SI] TO [DYNGRP]
GO
