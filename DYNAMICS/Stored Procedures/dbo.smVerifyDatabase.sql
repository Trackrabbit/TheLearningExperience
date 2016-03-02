SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smVerifyDatabase] @I_cInterCompanyID char(5) = NULL, @O_iErrorState int = NULL output  as  if (@I_cInterCompanyID is NULL) begin  select @O_iErrorState = 20280  return end else begin  select @O_iErrorState = 0 end  if exists (select   1   from   master.dbo.sysdatabases  where  name = @I_cInterCompanyID) begin  return end else begin  select @O_iErrorState = 20281 end  return    
GO
GRANT EXECUTE ON  [dbo].[smVerifyDatabase] TO [DYNGRP]
GO
