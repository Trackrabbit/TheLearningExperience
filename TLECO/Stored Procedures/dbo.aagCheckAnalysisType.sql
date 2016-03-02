SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[aagCheckAnalysisType]  @I_nTrxDimID   int = 0,  @I_cTableCodeAccClassDimTemp1  nvarchar(30) = '',  @O_nDataEntry tinyint = 0 output as begin declare  @cTrxDimID int,  @cTrxCodeID int,  @cParentTrxDimID int,  @cParentTrxDimCodeID int,  @cParentTrxDimCodeDesc char(51),  @nDataEntry int if @I_cTableCodeAccClassDimTemp1 = ''  return if @I_nTrxDimID <> 0  begin  exec ('declare aaAccClass cursor fast_forward FOR  select aaDataEntry from ' + @I_cTableCodeAccClassDimTemp1 + ' where aaTrxDimID = '  + @I_nTrxDimID + ' and aaDataEntry = 1' )  open aaAccClass  fetch next from aaAccClass intO @nDataEntry  while @@fetch_status = 0  if @nDataEntry = 1  begin  set @O_nDataEntry = 1  close aaAccClass  deallocate aaAccClass  return  end  end close aaAccClass deallocate aaAccClass return end    
GO
GRANT EXECUTE ON  [dbo].[aagCheckAnalysisType] TO [DYNGRP]
GO
