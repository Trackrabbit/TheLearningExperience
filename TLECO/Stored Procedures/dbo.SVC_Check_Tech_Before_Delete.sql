SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_Check_Tech_Before_Delete] (@techid varchar(11) = NULL,@doc_type smallint OUTPUT)  as declare @numrows int  if @techid is NULL begin return -1 end  select @numrows = count(*) from SVC00300 where TECHID = @techid or TECHID2 = @techid if @numrows > 0 BEGIN  select @doc_type = 1  return @numrows END  select @numrows = count(*) from SVC00307 where TECHID = @techid if @numrows > 0 BEGIN  select @doc_type = 1  return @numrows END  select @numrows = count(*) from SVC00200 where (SRVRECTYPE = 2 or SRVRECTYPE = 3) and TECHID = @techid if @numrows > 0 BEGIN  select @doc_type = 2  return @numrows END  select @numrows = count(*) from SVC00207 where (SRVRECTYPE = 2 or SRVRECTYPE = 3)  and TECHID = @techid if @numrows > 0 BEGIN  select @doc_type = 2  return @numrows END  select @numrows = count(*) from SVC00950 where TECHID = @techid if @numrows > 0 BEGIN  select @doc_type = 3  return @numrows END  select @numrows = count(*) from SVC30200 where (SRVRECTYPE = 2 or SRVRECTYPE = 3) and TECHID = @techid if @numrows > 0 BEGIN  select @doc_type = 4  return @numrows END  select @numrows = count(*) from SVC30207 where (SRVRECTYPE = 2 or SRVRECTYPE = 3)  and TECHID = @techid if @numrows > 0 BEGIN  select @doc_type = 4  return @numrows END    
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_Tech_Before_Delete] TO [DYNGRP]
GO
