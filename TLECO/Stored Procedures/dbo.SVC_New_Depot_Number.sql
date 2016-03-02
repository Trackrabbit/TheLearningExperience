SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_New_Depot_Number]   (@header char(3),  @newwonbr varchar(10) OUTPUT) as  declare @template char(7)  declare @retCode int  declare @currentNumber char(12)   select @template = '0000000'   select @retCode = 0  select @currentNumber = WORKORDNUM   from SVC00999  where SEQUENCE1 = 1    if CONVERT(numeric(12,0), @currentNumber) >= 9999999   begin  update SVC00999   set SVC00999.WORKORDNUM = '1'  where SEQUENCE1 = 1   select @retCode = 24248  end   update SVC00999   set SVC00999.WORKORDNUM = Convert(char(7),(CONVERT(numeric(7,0),WORKORDNUM) + 1)),   @newwonbr = WORKORDNUM   where SEQUENCE1 = 1  select @newwonbr = @header + stuff(@template,7 - LEN(@newwonbr) + 1,LEN(@newwonbr),rtrim(@newwonbr))  return @retCode     
GO
GRANT EXECUTE ON  [dbo].[SVC_New_Depot_Number] TO [DYNGRP]
GO
