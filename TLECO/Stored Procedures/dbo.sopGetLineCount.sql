SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sopGetLineCount]  @I_cSOPNumber char(21),  @I_tSOPTYPE tinyint,  @I_tAction tinyint,  @O_iCount int             = NULL  output  AS  if @I_tAction = 1 begin  if @I_tSOPTYPE = 6   begin  set @O_iCount = (select count(SOPNUMBE)  from SOP10200   where SOPNUMBE = @I_cSOPNumber  and SOPTYPE = @I_tSOPTYPE  and QUANTITY > 0  and DROPSHIP <> 1   and (QUANTITY <> QTYFULFI + QTYTBAOR + QTYCANCE + QTYPRBAC))   end  else  begin  set @O_iCount = (select count(SOPNUMBE)  from SOP10200   where SOPNUMBE = @I_cSOPNumber  and SOPTYPE = @I_tSOPTYPE  and QUANTITY > 0  and (QUANTITY <> QTYTORDR + QTYTOINV + QTYTBAOR + QTYCANCE + QTYPRORD + QTYPRINV + QTYPRBAC))  end end else begin  if @I_tAction = 2  begin  set @O_iCount = (select count(SOPNUMBE)   from SOP10200  where SOPNUMBE = @I_cSOPNumber  and SOPTYPE = @I_tSOPTYPE  and (BULKPICKPRNT <> 1 and INDPICKPRNT <> 1)  and DROPSHIP <> 1   and QUANTITY > 0  and (QUANTITY <> QTYCANCE + QTYTBAOR + QTYPRORD + QTYPRINV + QTYPRBAC))  end  else  begin  if @I_tAction = 3  begin  set @O_iCount = (select count(SOPNUMBE)  from SOP10200   where SOPNUMBE = @I_cSOPNumber  and SOPTYPE = @I_tSOPTYPE  and BSIVCTTL = 1)  end  else  begin  set @O_iCount = 1;  end  end end    
GO
GRANT EXECUTE ON  [dbo].[sopGetLineCount] TO [DYNGRP]
GO
