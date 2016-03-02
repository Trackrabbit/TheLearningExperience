SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE   procedure [dbo].[aagFillAccClassTempTable] @I_cAccClassDimTemp  nvarchar(30) = null,  @I_nAssignID   int = 0  as  declare   @nTrxDimID  char(15),   @cTrxDimCode char(30),  @nDataType tinyint   begin  exec ('truncate TABLE ' + @I_cAccClassDimTemp)  exec ('insert into ' + @I_cAccClassDimTemp +   '(aaTrxDimID,aaTrxDim,aaOrder,aaDataType,aaTrxDimCode,aaTrxDimCodeIDDflt,aaTrxDimCodeDescr,aaDataEntry,aaShow,DECPLQTY,BASEUOFM)  select aaTrxDimID,aaTrxDim,aaOrder, aaDataType,'''',0,'''',1,1,DECPLQTY,UOMSCHDL from AAG00400')  end begin  exec ('declare aaAccClassDimTemp cursor fast_forward FOR select aaTrxDimID,aaDataType   from ' + @I_cAccClassDimTemp)  open aaAccClassDimTemp  fetch next from aaAccClassDimTemp into @nTrxDimID,@nDataType  WHILE @@fetch_status = 0  begin  exec ('update ' + @I_cAccClassDimTemp + ' set aaTrxCodeID = 0, aaTrxDimCodeDescr = '''',  aaTrxDimCode = '''' where aaOrder = ' )  fetch next from aaAccClassDimTemp into @nTrxDimID,@nDataType  end  close aaAccClassDimTemp  deallocate aaAccClassDimTemp  return end    
GO
GRANT EXECUTE ON  [dbo].[aagFillAccClassTempTable] TO [DYNGRP]
GO
