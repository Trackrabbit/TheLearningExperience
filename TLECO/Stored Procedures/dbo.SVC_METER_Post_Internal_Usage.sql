SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_METER_Post_Internal_Usage](@EquipID integer,  @Internal1 integer,  @Internal2 integer,  @Internal3 integer,  @Internal4 integer,  @Internal5 integer,  @Date datetime) as declare @ContractNumber char(11) declare @LineNumber numeric(19,5) declare Contract_Cursor cursor for select CONTNBR, LNSEQNBR from SVC00601   where EQUIPID = @EquipID and CONSTS = 2 and STRTDATE <= @Date and @Date <= ENDDATE  open Contract_Cursor fetch next from Contract_Cursor into @ContractNumber,@LineNumber while (@@fetch_status = 0)   begin  update SVC00607 set Meter_Internal_Uses_1 = Meter_Internal_Uses_1 + @Internal1,  Meter_Internal_Uses_2 = Meter_Internal_Uses_2 + @Internal2,  Meter_Internal_Uses_3 = Meter_Internal_Uses_3 + @Internal3,  Meter_Internal_Uses_4 = Meter_Internal_Uses_4 + @Internal4,  Meter_Internal_Uses_5 = Meter_Internal_Uses_5 + @Internal5  where CONSTS = 2 and CONTNBR=@ContractNumber and LNSEQNBR=@LineNumber  fetch next from Contract_Cursor into @ContractNumber,@LineNumber  end deallocate Contract_Cursor    
GO
GRANT EXECUTE ON  [dbo].[SVC_METER_Post_Internal_Usage] TO [DYNGRP]
GO
