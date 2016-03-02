SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[TADeductionChanger1]   @I_charStartDeduction  char(20),   @I_charEndDeduction  char(20),   @O_iErrorState   int = NULL  output  with encryption as  declare   @CODE   char (255),  @tTransaction tinyint,  @tLoop tinyint,  @iStatus int,  @cStartDeduction char (17),  @cEndDeduction char (17)  exec @iStatus = smFormatStringsForExecs  @I_vInputString  = @I_charStartDeduction,  @O_cOutputString = @cStartDeduction output,  @O_iErrorState  = @O_iErrorState output  if @iStatus <> 0 or @O_iErrorState <> 0 begin  set @O_iErrorState = 90  return end  exec @iStatus = smFormatStringsForExecs  @I_vInputString  = @I_charEndDeduction,  @O_cOutputString = @cEndDeduction output,  @O_iErrorState  = @O_iErrorState output  if @iStatus <> 0 or @O_iErrorState <> 0 begin  set @O_iErrorState = 91  return end  select  @O_iErrorState   = 0  if @@trancount = 0  begin  select @tTransaction = 1  begin transaction end  while ( @tLoop is NULL ) begin  select @tLoop = 1   if @I_charStartDeduction is NULL or  @I_charEndDeduction is NULL or  @cStartDeduction is NULL or  @cEndDeduction is NULL  begin  select @O_iErrorState = 1    break  end    declare T_cursor CURSOR for select 'update '+o.name+' set DEDUCTON =' + rtrim(@cEndDeduction) +  ' where DEDUCTON = ' + rtrim(@cStartDeduction)  from sysobjects o, syscolumns c  where o.id = c.id  and o.type = 'U'  and c.name = 'DEDUCTON'   order by o.name   set nocount on  OPEN T_cursor  FETCH NEXT FROM T_cursor INTO @CODE  WHILE (@@FETCH_STATUS <> -1)  begin  exec (@CODE)  if @@error <> 0   begin  select @O_iErrorState = 3   break  end   FETCH NEXT FROM T_cursor INTO @CODE  end  DEALLOCATE T_cursor   if @O_iErrorState <> 0  break   update UPR00601 set BSDONCDE = @I_charEndDeduction where BSDONCDE = @I_charStartDeduction and BORCDTYP = 2  if @@error <> 0  begin  select @O_iErrorState = 86   break  end  update UPR40801 set BSDONCDE = @I_charEndDeduction where BSDONCDE = @I_charStartDeduction and BORCDTYP = 2  if @@error <> 0  begin  select @O_iErrorState = 87   break  end   update UPR10201 set PAYROLCD = @I_charEndDeduction where PAYROLCD = @I_charStartDeduction and PYRLRTYP = 2  if @@error <> 0  begin  select @O_iErrorState = 90   break  end  update UPR10211 set PAYROLCD = @I_charEndDeduction where PAYROLCD = @I_charStartDeduction and PYRLRTYP = 2  if @@error <> 0  begin  select @O_iErrorState = 91   break  end   update UPR10400 set PAYROLCD = @I_charEndDeduction where PAYROLCD = @I_charStartDeduction and UPRACTYP = 5  if @@error <> 0  begin  select @O_iErrorState = 92   break  end   update UPR19901 set PAYROLCD = @I_charEndDeduction where PAYROLCD = @I_charStartDeduction and UPRACTYP = 5  if @@error <> 0  begin  select @O_iErrorState = 94   break  end   update UPR30300 set PAYROLCD = @I_charEndDeduction where PAYROLCD = @I_charStartDeduction and PYRLRTYP = 2  if @@error <> 0  begin  select @O_iErrorState = 98   break  end   update UPR30301 set PAYROLCD = @I_charEndDeduction where PAYROLCD = @I_charStartDeduction and PYRLRTYP = 2  if @@error <> 0  begin  select @O_iErrorState = 99   break  end   update UPR40500 set PAYROLCD = @I_charEndDeduction where PAYROLCD = @I_charStartDeduction and UPRACTYP = 5  if @@error <> 0  begin  select @O_iErrorState = 100   break  end   update UPR41201 set PAYROLCD = @I_charEndDeduction where PAYROLCD = @I_charStartDeduction and PYRLRTYP = 2  if @@error <> 0  begin  select @O_iErrorState = 104   break  end   update UPR70500 set STTDEDCD = @I_charEndDeduction where STTDEDCD = @I_charStartDeduction  if @@error <> 0  begin  select @O_iErrorState = 27   break  end   update UPR70500 set ENDEDCCD = @I_charEndDeduction where ENDEDCCD = @I_charStartDeduction   if @@error <> 0  begin  select @O_iErrorState = 28   break  end   update UPR10302 set UPRTRXCD = @I_charEndDeduction where UPRTRXCD = @I_charStartDeduction and COMPTRTP = 2  if @@error <> 0  begin  select @O_iErrorState = 11   break  end   update UPR10303 set UPRTRXCD = @I_charEndDeduction where UPRTRXCD = @I_charStartDeduction and COMPTRTP = 2  if @@error <> 0  begin  select @O_iErrorState = 11   break  end   update UPR10308 set UPRTRXCD = @I_charEndDeduction where UPRTRXCD = @I_charStartDeduction and MLTRXTYP = 2  if @@error <> 0  begin  select @O_iErrorState = 11   break  end  end  if @O_iErrorState <> 0 begin  if @tTransaction = 1  rollback transaction end else if @tTransaction = 1 begin  commit transaction end  return    
GO
GRANT EXECUTE ON  [dbo].[TADeductionChanger1] TO [DYNGRP]
GO
