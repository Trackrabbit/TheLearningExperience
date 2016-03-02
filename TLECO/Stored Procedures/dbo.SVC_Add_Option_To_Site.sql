SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_Add_Option_To_Site](@CONSTS smallint,  @CONTNBR char(11),  @ADRSCODE char(15),  @OPTTYPE char(11)) as declare @LNSEQNBR numeric(19,5) select @LNSEQNBR = LNSEQNBR   from SVC00608  where CONSTS = @CONSTS and  CONTNBR = @CONTNBR and  ADRSCODE = @ADRSCODE if @LNSEQNBR is not null  BEGIN  if not exists(select * from SVC00655 where CONSTS = @CONSTS and   CONTNBR = @CONTNBR and  LNSEQNBR = @LNSEQNBR and  OPTTYPE = @OPTTYPE)  BEGIN  insert SVC00655 values (@CONSTS,  @CONTNBR,  @LNSEQNBR,  @OPTTYPE,  '01/01/1900',  '01/01/1900',  0.0,  0.0,  0.0,  0.0)  END  END    
GO
GRANT EXECUTE ON  [dbo].[SVC_Add_Option_To_Site] TO [DYNGRP]
GO
