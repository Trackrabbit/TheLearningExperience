SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[glpIncPostingNumbers]  @I_sYear                 smallint = NULL ,  @I_sPeriodId smallint = NULL ,  @O_iPostingNumber int   = NULL output ,  @O_iPeriodPostingNumber int   = NULL output ,  @O_iErrorState int  = NULL output as  declare  @tTransaction tinyint  select   @O_iErrorState = 0  if @I_sYear   is NULL or  @I_sPeriodId is NULL  begin  select @O_iErrorState = 21068  return end   if @@trancount = 0 begin  select @tTransaction = 1  begin transaction end   select   @O_iPostingNumber = PSTGNMBR  from   GL40300  where   (YEAR1 = @I_sYear and PERIODID = -1)  if @O_iPostingNumber is null begin  insert into GL40300   values (@I_sYear, -1 , 1)  select @O_iPostingNumber = 1 end  select @O_iPeriodPostingNumber = PSTGNMBR  from GL40300  where (YEAR1 = @I_sYear and PERIODID = @I_sPeriodId)  if @O_iPeriodPostingNumber is null begin  insert into GL40300  values (@I_sYear, @I_sPeriodId, 1)  select @O_iPeriodPostingNumber = 1 end  update GL40300 set   PSTGNMBR = PSTGNMBR + 1 where   (YEAR1 = @I_sYear and PERIODID = -1) or (YEAR1 = @I_sYear and PERIODID = @I_sPeriodId)  if @tTransaction = 1  commit transaction  return   
GO
GRANT EXECUTE ON  [dbo].[glpIncPostingNumbers] TO [DYNGRP]
GO
