SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Create_RTV_Dist]  @RTVNumber as char(15), @RTV_Line numeric(19,5),  @LineType as char(3), @DistType as smallint,  @DAmount numeric (19,2),@OrigDAmount numeric (19,2),  @CAmount numeric (19,2),@OrigCAmount numeric (19,2),  @CurrencyIndex smallint,  @AccountIndex integer,@Post tinyint As declare @SEQNUMBR integer declare @PostDate datetime  if @Post = 1  select @PostDate = CONVERT(varchar(10),GETDATE(),102) else  exec smGetMinDate @PostDate output   exec SVC_Dist_Get_SEQ_RTV @RTVNumber,@RTV_Line, @DistType,@SEQNUMBR output  insert SVC05630  select   @RTVNumber,  @RTV_Line,  @LineType,  @SEQNUMBR,  @DistType,   '',  @AccountIndex,  @DAmount,@OrigDAmount,    @CAmount,@OrigCAmount,   isnull(@CurrencyIndex,0),  '',  @Post,  @PostDate  return     
GO
GRANT EXECUTE ON  [dbo].[SVC_Create_RTV_Dist] TO [DYNGRP]
GO
