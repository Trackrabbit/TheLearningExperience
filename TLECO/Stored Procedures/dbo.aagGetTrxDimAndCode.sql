SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE   procedure [dbo].[aagGetTrxDimAndCode] @I_nTrxDimID int = 0,  @O_nTrxDim  char(15)= ''  output,  @I_nTrxDimCodeID int = 0, @O_nTrxDimCode char(30)= ''  output as  begin  if @I_nTrxDimID <> 0  select @O_nTrxDim =  aaTrxDim from AAG00400 where aaTrxDimID = @I_nTrxDimID   else  return  if @I_nTrxDimCodeID <> 0  select @O_nTrxDimCode = aaTrxDimCode from AAG00401 where aaTrxDimID = @I_nTrxDimID and aaTrxDimCodeID = @I_nTrxDimCodeID  else  return  return end    
GO
GRANT EXECUTE ON  [dbo].[aagGetTrxDimAndCode] TO [DYNGRP]
GO
