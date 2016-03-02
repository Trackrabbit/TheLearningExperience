SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_Add_Option_To_All_Lines](@CONSTS smallint,  @CONTNBR char(11),  @OPTTYPE char(11)) as declare @LineSeq numeric(19,5) declare @StartDate datetime, @EndDate datetime  declare Add_Cont_Line_Options cursor for select LNSEQNBR, STRTDATE, ENDDATE  from SVC00601 where CONSTS = @CONSTS and CONTNBR = @CONTNBR  AND Contract_Line_Status <> 'C' and BILSTAT = 0  open Add_Cont_Line_Options   fetch next from Add_Cont_Line_Options into @LineSeq , @StartDate, @EndDate  while @@FETCH_STATUS = 0  BEGIN  if not exists(select * from SVC00652 where CONSTS = @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @LineSeq  and OPTTYPE = @OPTTYPE)  BEGIN  INSERT INTO SVC00652  (CONSTS, CONTNBR, LNSEQNBR, OPTTYPE, STRTDATE, ENDDATE, UNITPRCE, UNITCOST,ORUNTCST,ORUNTPRC)  select @CONSTS,@CONTNBR,@LineSeq,@OPTTYPE,@StartDate,  @EndDate,0.0,0.0,0.0,0.0  exec SVC_Calc_Cont_Line @CONSTS, @CONTNBR, @LineSeq   exec SVC_Set_Contract_Line_Invoice @CONSTS, @CONTNBR, @LineSeq   END  fetch next from Add_Cont_Line_Options into @LineSeq , @StartDate, @EndDate  END  deallocate Add_Cont_Line_Options   return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Add_Option_To_All_Lines] TO [DYNGRP]
GO
