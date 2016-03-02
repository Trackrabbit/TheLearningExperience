SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_Add_Option_To_Line](@CONSTS smallint,  @CONTNBR char(11),  @LNSEQNBR numeric(19,5),  @OPTTYPE char(11)) as declare @StartDate datetime, @EndDate datetime   if not exists(select * from SVC00652 where CONSTS = @CONSTS and   CONTNBR = @CONTNBR and  LNSEQNBR = @LNSEQNBR and  OPTTYPE = @OPTTYPE)  BEGIN  select @StartDate = STRTDATE, @EndDate = ENDDATE  from SVC00601 where CONSTS = @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @LNSEQNBR  if @EndDate is null   select @StartDate = STRTDATE, @EndDate = ENDDATE  from SVC00600 where CONSTS = @CONSTS and CONTNBR = @CONTNBR    insert SVC00652 values (@CONSTS,  @CONTNBR,  @LNSEQNBR,  @OPTTYPE,  @StartDate,  @EndDate,  0.0,  0.0,  0.0,  0.0)  END  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Add_Option_To_Line] TO [DYNGRP]
GO
