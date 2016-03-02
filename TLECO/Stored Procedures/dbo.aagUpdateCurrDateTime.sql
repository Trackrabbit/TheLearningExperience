SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[aagUpdateCurrDateTime]  @aaTrxDimID int,  @aaAcctClassID int as begin  set nocount on  if @aaAcctClassID is null   begin  update AAG00200 set aaChangeDate = convert(char(12), getdate(), 102) ,aaChangeTime = convert(char(12), getdate(), 108)   where aaAcctClassID in   (select distinct aaAcctClassID from AAG00202 where aaTrxDimID = @aaTrxDimID)  end  else  begin  update AAG00200 set aaChangeDate = convert(char(12), getdate(), 102) ,aaChangeTime = convert(char(12), getdate(), 108)   where aaAcctClassID = @aaAcctClassID  end   set nocount off end    
GO
GRANT EXECUTE ON  [dbo].[aagUpdateCurrDateTime] TO [DYNGRP]
GO
