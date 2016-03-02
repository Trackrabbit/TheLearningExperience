SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Post_RTV_Dist]  @RTVNumber as char(15),  @RTVLine numeric(19,5),  @LineType as char(3),  @DistType as smallint,  @AccountIndex integer OUTPUT As select @AccountIndex = ACTINDX from SVC05630 where RTV_Number = @RTVNumber and RTV_Line = @RTVLine and POSTED = 0  and LINITMTYP = @LineType and SVC_Distribution_Type= @DistType  update SVC05630 set POSTED = 1, POSTEDDT = CONVERT(varchar(10),GETDATE(),102)  where RTV_Number = @RTVNumber and POSTED = 0 and LINITMTYP = @LineType  and SVC_Distribution_Type= @DistType and RTV_Line = @RTVLine select @AccountIndex = isnull(@AccountIndex,0)  return     
GO
GRANT EXECUTE ON  [dbo].[SVC_Post_RTV_Dist] TO [DYNGRP]
GO
