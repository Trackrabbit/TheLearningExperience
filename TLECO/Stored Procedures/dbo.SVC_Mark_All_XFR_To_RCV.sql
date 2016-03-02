SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_Mark_All_XFR_To_RCV](@ORDDOCID char(15), @Line integer, @ToBin char(15)) as  if @Line = 0   update SVC00702  with (rowlock)  set STATUS = 5 , TOBIN = @ToBin where ORDDOCID = @ORDDOCID and STATUS = 4 else  update SVC00702  with (rowlock)  set STATUS = 5 , TOBIN = @ToBin where ORDDOCID = @ORDDOCID and TRANSLINESEQ = @Line and STATUS = 4  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Mark_All_XFR_To_RCV] TO [DYNGRP]
GO
