SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Update_RTVDistAccount]  @RTVNumber as char(15),  @RTVLine as numeric(19,5),  @LineType as char(3),  @DistType as smallint,  @AccountIndex integer As update SVC05630 set ACTINDX = @AccountIndex  where RTV_Number = @RTVNumber and RTV_Line = @RTVLine and LINITMTYP = @LineType and POSTED = 0 and SVC_Distribution_Type = @DistType  return     
GO
GRANT EXECUTE ON  [dbo].[SVC_Update_RTVDistAccount] TO [DYNGRP]
GO
