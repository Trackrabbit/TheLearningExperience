SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_Check_Customer_Address] (@Customer char(15) = NULL, @Address char(15) = NULL,  @FromCustomer tinyint =0, @doc_type smallint OUTPUT)  as declare @numrows int select @doc_type = 0 if @Customer is NULL or @Address is NULL begin return -1 end if @FromCustomer = 0 BEGIN  select @numrows = count(*) from RM00101 where  CUSTNMBR = @Customer and ADRSCODE = @Address  if @numrows > 0 return END select @numrows = count(*) from SVC00300 where  CUSTNMBR = @Customer and ADRSCODE = @Address if @numrows > 0  BEGIN  select @doc_type = 1  return @numrows  END else  BEGIN  select @numrows = count(*) from SVC00200 where  CUSTNMBR = @Customer and ADRSCODE = @Address  if @numrows > 0  BEGIN  select @doc_type = 2  return @numrows  END  else  BEGIN  select @numrows = count(*) from SVC00400 where  CUSTNMBR = @Customer and ADRSCODE = @Address  if @numrows > 0  BEGIN  select @doc_type = 3  return @numrows  END  else  BEGIN  select @numrows = count(*) from SVC00600 where  CONSTS = 2 and CUSTNMBR = @Customer and ADRSCODE = @Address  if @numrows > 0  BEGIN  select @doc_type = 4  return @numrows  END  else  BEGIN  select @numrows = count(*) from SVC05000 where  Return_Record_Type < 2 and CUSTNMBR = @Customer and ADRSCODE = @Address  if @numrows > 0  BEGIN  select @doc_type = 5  return @numrows  END  END  END  END  END    
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_Customer_Address] TO [DYNGRP]
GO
