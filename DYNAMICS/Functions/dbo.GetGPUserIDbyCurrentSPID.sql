SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[GetGPUserIDbyCurrentSPID]() RETURNS char(15) AS  BEGIN  DECLARE   @GPUserID char(15)  select @GPUserID = USERID from ACTIVITY where SQLSESID = (select session_id from tempdb..DEX_SESSION where sqlsvr_spid = @@SPID)  RETURN ISNULL(@GPUserID, '') END   
GO
GRANT EXECUTE ON  [dbo].[GetGPUserIDbyCurrentSPID] TO [DYNGRP]
GO
