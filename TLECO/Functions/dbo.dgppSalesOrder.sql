SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[dgppSalesOrder]  (  @action int,  @DCSTATUS int,  @SOURCE int,  @SCHEDULE_NUMBER varchar(20),  @Status int,  @DOCTYPE int,  @CUSTNMBR varchar(15),  @DOCNUMBR varchar(20),  @VOIDED int,  @INVCNMBR varchar(20),  @SOPTYPE int,  @SOPNUMBE varchar(20)  )  RETURNS varchar(2000) AS BEGIN   DECLARE @ActionType varchar(15),  @URIstring varchar(255)   if @action=1  select @ActionType = 'OPEN'  else  select @ActionType = 'OPEN'   select @URIstring =   case @SOURCE  when 10 then dbo.dgppSalesOrderIVC(1,@DCSTATUS,@SOURCE,@INVCNMBR,@DOCTYPE,@CUSTNMBR,@DOCNUMBR)  when 11 then dbo.dgppSalesOrderSOP(1,@DCSTATUS,@SOURCE,@SOPNUMBE,@SOPTYPE,11,1,1102)  else dbo.dgppSalesOrderRM(1,@DCSTATUS,@SOURCE,@SCHEDULE_NUMBER,@Status,@DOCTYPE,@CUSTNMBR,@DOCNUMBR,@VOIDED,1,1102,@INVCNMBR,@SOPTYPE,@SOPNUMBE,11)  end   RETURN(@URIstring) END   
GO
GRANT EXECUTE ON  [dbo].[dgppSalesOrder] TO [DYNGRP]
GO
