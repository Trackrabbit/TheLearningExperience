SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[aagCheckCodeSettingAtEntry]  @I_nAcctClassID int =0,  @I_nTrxDimID int = 0,   @I_nTrxDimCodeID int = 0,  @O_cTrxDim varchar(15)= '' output,  @O_cTrxDimCode varchar(30)='' output,  @O_nErrorNumber int = 0 output as declare  @nDatEntry int,   @nTrxDimCodeIDDflt int  set @O_nErrorNumber = 0  if @I_nTrxDimCodeID <> 0   begin   if NOT exists(select aaTrxDimID from AAG00401 where aaTrxDimID = @I_nTrxDimID and aaTrxDimCodeID = @I_nTrxDimCodeID)  begin  select @O_nErrorNumber = 7   select @O_cTrxDim =  aaTrxDim from AAG00400 where aaTrxDimID = @I_nTrxDimID   select @O_cTrxDimCode = aaTrxDimCode from AAG00401 where aaTrxDimID = @I_nTrxDimID and aaTrxDimCodeID = @I_nTrxDimCodeID  return  end  end  select @nDatEntry = aaDataEntry,  @nTrxDimCodeIDDflt = aaTrxDimCodeIDDflt from AAG00202   where aaTrxDimID = @I_nTrxDimID and aaAcctClassID = @I_nAcctClassID  if @nDatEntry = 1   begin   if @I_nTrxDimCodeID <> 0  select @O_nErrorNumber = 8   end else if @nDatEntry = 4   begin  if @I_nTrxDimCodeID = 0  select @O_nErrorNumber = 10   else  begin   if @nTrxDimCodeIDDflt <> @I_nTrxDimCodeID   select @O_nErrorNumber = 11   end   end  if @O_nErrorNumber <> 0   begin  select @O_cTrxDim =  aaTrxDim from AAG00400 where aaTrxDimID = @I_nTrxDimID   select @O_cTrxDimCode = aaTrxDimCode from AAG00401 where aaTrxDimID = @I_nTrxDimID and aaTrxDimCodeID = @I_nTrxDimCodeID  end    
GO
GRANT EXECUTE ON  [dbo].[aagCheckCodeSettingAtEntry] TO [DYNGRP]
GO
