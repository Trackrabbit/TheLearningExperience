SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smGetDbo]  @I_cUserId      char(15) = NULL,  @I_cDatabase    char(15) = NULL,  @O_iErrorState  int = NULL output as  declare @l_cTempUserId char(15)  if @I_cUserId is NULL or   @I_cDatabase is NULL begin  select @O_iErrorState = 20093  return end  select @O_iErrorState = 0  select   @l_cTempUserId = suser_sname(sid)  from   master.dbo.sysdatabases  where   name = @I_cDatabase  if ISNULL(@l_cTempUserId,'') <> @I_cUserId  select @O_iErrorState = 20143  return    
GO
GRANT EXECUTE ON  [dbo].[smGetDbo] TO [DYNGRP]
GO
