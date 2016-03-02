SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Get_SerialPM]  @EQUIPID int,  @SCHEDID char(9),  @PMDTLID char(9),  @Meter_1_Level int AS declare @num integer SELECT @num = count(*)  FROM  SVC00305  WHERE  SVC00305.EQUIPID = @EQUIPID  AND SVC00305.SCHEDID = @SCHEDID  AND SVC00305.PMDTLID = @PMDTLID  AND SVC00305.Meter_1_Level = @Meter_1_Level  AND SVC00305.PMSTAT > 0  if @@error <> 0   return -1  else  return @num    
GO
GRANT EXECUTE ON  [dbo].[SVC_Get_SerialPM] TO [DYNGRP]
GO
