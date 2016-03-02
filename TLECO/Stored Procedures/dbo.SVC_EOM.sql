SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_EOM] (@INDATE datetime = NULL OUTPUT) AS declare @eom integer set nocount on if @INDATE is NULL return 200 select @INDATE = DATEADD(mm,1,@INDATE) select @INDATE = DATEADD(dd,(-1 * (DATEPART(dd,@INDATE))),@INDATE) return    
GO
GRANT EXECUTE ON  [dbo].[SVC_EOM] TO [DYNGRP]
GO
