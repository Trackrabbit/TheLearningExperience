SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_GetTimeZone]  (  @CUSTNMBR char(31),  @ADRSCODE char(15),  @TIMEZONE char(3) OUTPUT  ) As SELECT @TIMEZONE = TIMEZONE FROM SVC00950 WHERE (CUSTNMBR = @CUSTNMBR) AND   (ADRSCODE = @ADRSCODE)  return     
GO
GRANT EXECUTE ON  [dbo].[SVC_GetTimeZone] TO [DYNGRP]
GO
