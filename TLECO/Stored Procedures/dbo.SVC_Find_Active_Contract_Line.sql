SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Find_Active_Contract_Line]  (@Customer char(15),  @AddressCode char(15),  @EquipID integer,  @Item char(31),  @CheckDate datetime,  @LineCount smallint OUTPUT,  @Contract char(11) OUTPUT,  @ContLine numeric(19,5) OUTPUT  )  AS  select @LineCount = COUNT(*) from SVC00601 where CONSTS = 2 and Contract_Line_Status <> 'E'  and ITEMNMBR = @Item  and EQUIPID = @EquipID  and STRTDATE <=@CheckDate  and ENDDATE >= @CheckDate  and CUSTNMBR = @Customer  and (ADRSCODE = @AddressCode OR ADRSCODE = '')   if @LineCount = 1   BEGIN  select @Contract = CONTNBR, @ContLine =  LNSEQNBR from SVC00601  where CONSTS = 2 and Contract_Line_Status <> 'E'  and ITEMNMBR = @Item  and EQUIPID = @EquipID  and STRTDATE <=@CheckDate  and ENDDATE >= @CheckDate  and CUSTNMBR = @Customer  and (ADRSCODE = @AddressCode OR ADRSCODE = '')  END  else if @LineCount = 0 and @EquipID = 0   BEGIN  select @LineCount = COUNT(*) from SVC00601 where CONSTS = 2 and Contract_Line_Status <> 'E'  and ITEMNMBR = @Item  and STRTDATE <=@CheckDate  and ENDDATE >= @CheckDate  and CUSTNMBR = @Customer  if @LineCount = 1   select @LineCount = 0  END    
GO
GRANT EXECUTE ON  [dbo].[SVC_Find_Active_Contract_Line] TO [DYNGRP]
GO
