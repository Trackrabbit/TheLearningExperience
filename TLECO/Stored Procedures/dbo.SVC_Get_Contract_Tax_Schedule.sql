SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Get_Contract_Tax_Schedule] (   @CONSTS smallint,  @CONTNBR char(11),  @CUSTNMBR varchar(15) ,  @ADRSCODE char(15),  @TAXSCHID char(15) output  )  AS declare @TaxSchedule char(15)  select @TaxSchedule = TAXSCHID  from SVC00608 where CONSTS = @CONSTS and CONTNBR = @CONTNBR and CUSTNMBR = @CUSTNMBR and ADRSCODE = @ADRSCODE   if @TaxSchedule > ''   select @TAXSCHID = @TaxSchedule  else  select @TAXSCHID = TAXSCHID  from SVC00600  where CONSTS = @CONSTS and CONTNBR = @CONTNBR return     
GO
GRANT EXECUTE ON  [dbo].[SVC_Get_Contract_Tax_Schedule] TO [DYNGRP]
GO
