SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[svcGetSOPContractCoverageDate]  (@CONSTS        smallint,  @CONTNBR       char(11),  @Line numeric (19,5),  @UserDate datetime,  @StartDate datetime OUTPUT,  @EndDate datetime OUTPUT)  As select @StartDate =  MIN(SVC_Coverage_Start_Date), @EndDate = max(SVC_Coverage_End_Date) from  SVC00603 WITH (NOLOCK)  where CONSTS = @CONSTS AND CONTNBR = @CONTNBR and LNSEQNBR = @Line and (svcReverseType < 0 and svcReverseType > -100)  if @StartDate is null and @EndDate is null  select @StartDate = STRTDATE, @EndDate = ENDDATE from SVC00601 where CONSTS= @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @Line select @StartDate = isnull(@StartDate,@UserDate), @EndDate = ISNULL(@EndDate, @UserDate)  return     
GO
GRANT EXECUTE ON  [dbo].[svcGetSOPContractCoverageDate] TO [DYNGRP]
GO
