SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SE_Get_MC_Per_Bals_Open]   @Id char(15) =NULL, @Yr smallint =NULL, @colNo smallint =NULL, @curidx smallint =NULL  AS  declare @mysum numeric(19,5) declare @counter smallint  declare @balamt numeric(19,5)  declare @numperiods smallint declare @ExecCall char(220)  select @numperiods = count(*) from SE000100 select @counter = 0  select @balamt = 0 while @counter < @numperiods begin   select @mysum = sum(ORIGAMT) from MC00201  where (ACTINDX in(select ACTINDX from SE810000 where USERID = @Id))   and (PERIODID = @counter)   and (CURRNIDX = @curidx)   and (OPENYEAR = @Yr)   select @balamt = @balamt + isnull(@mysum,0)   select @ExecCall='update SE000100 set SE_Net_Amount_' + convert(char(1),@colNo) +  ' = ' +  convert(char(19),isnull(@mysum,0)) +   ', SE_Period_Balance_' + convert(char(1),@colNo) + '= ' + convert(char(19),isnull(@balamt,0)) +  ', SECURIDX_' + convert(char(1),@colNo) + ' = ' +  convert(char(4),@curidx) + ' where USERID = ''' + @Id + ''' and PERIODID = ' + convert(char(3),@counter)  EXEC (@ExecCall)  select @counter = @counter + 1  end   
GO
GRANT EXECUTE ON  [dbo].[SE_Get_MC_Per_Bals_Open] TO [DYNGRP]
GO
