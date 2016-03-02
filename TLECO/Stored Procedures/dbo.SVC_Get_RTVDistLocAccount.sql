SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Get_RTVDistLocAccount]  @RTVNumber as char(15),  @RTVLine as numeric(19,5),  @LineType as char(3),  @DistType as smallint,  @AccountIndex integer OUTPUT,  @Location char(10) OUTPUT As select @AccountIndex = ACTINDX from SVC05630  where RTV_Number = @RTVNumber and RTV_Line = @RTVLine and LINITMTYP = @LineType and POSTED = 0 and SVC_Distribution_Type = @DistType select @Location = LOCCODEB from SVC05601  where RTV_Number = @RTVNumber and RTV_Line = @RTVLine select @AccountIndex = isnull(@AccountIndex,0) select @Location = isnull(@Location,'')  return     
GO
GRANT EXECUTE ON  [dbo].[SVC_Get_RTVDistLocAccount] TO [DYNGRP]
GO
