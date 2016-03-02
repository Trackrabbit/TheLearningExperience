SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smDeleteTableEntries] @I_iSQLSessionID        int = NULL, @I_cSQLTable    char (255) = NULL, @I_iActionFlag  int = NULL, @O_iErrorState  int = NULL output  as  declare  @tTransaction   tinyint   if      @I_iSQLSessionID is NULL or  @I_cSQLTable is NULL or  @I_iActionFlag is NULL begin  select @O_iErrorState = 20569  return end else begin  select @O_iErrorState = 0 end  if @@trancount = 0 begin  select @tTransaction = 1  begin transaction end  if  @I_iActionFlag > 0 or ltrim(rtrim(@I_cSQLTable)) = 'GL50010'  begin  delete  GL50010  where  SQLSESID = @I_iSQLSessionID end  if  @I_iActionFlag > 0 or ltrim(rtrim(@I_cSQLTable)) = 'GL50011'  begin  delete  GL50011  where  SQLSESID = @I_iSQLSessionID end  if @tTransaction = 1 begin  commit transaction end  return    
GO
GRANT EXECUTE ON  [dbo].[smDeleteTableEntries] TO [DYNGRP]
GO
