SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[popGetRequisitionDefaultVendor]   @I_iOption tinyint  = NULL,  @I_cItemNumber char(30) = NULL,  @O_cVendorID char(15) = NULL output,  @O_iErrorState      int         = NULL  output  as   declare  @O_cVendorIDTemp char(15)  select  @O_cVendorID = '',  @O_iErrorState  = 0  if  @I_iOption is NULL or   @I_cItemNumber   is NULL begin  SELECT @O_iErrorState = 20949  RETURN end   select @O_cVendorIDTemp = ''  if @I_iOption = 2 BEGIN  SELECT @O_cVendorIDTemp = (SELECT TOP 1 isnull(VENDORID, '')  FROM IV00103  WHERE LRCPTCST = (  SELECT MIN(LRCPTCST) FROM IV00103  WHERE ITEMNMBR = @I_cItemNumber and LRCPTCST <> 0.0)  AND ITEMNMBR = @I_cItemNumber and LRCPTCST <> 0.0  ORDER BY LRCPTCST, VENDORID)  END ELSE  IF @I_iOption = 3 BEGIN   SELECT @O_cVendorIDTemp = (SELECT TOP 1 isnull(VENDORID, '')  FROM IV00103  WHERE PLANNINGLEADTIME = (  SELECT MIN(PLANNINGLEADTIME) FROM IV00103  WHERE ITEMNMBR = @I_cItemNumber and PLANNINGLEADTIME <> 0)  AND ITEMNMBR = @I_cItemNumber and PLANNINGLEADTIME <> 0  ORDER BY PLANNINGLEADTIME, VENDORID)  END  SELECT @O_cVendorID = @O_cVendorIDTemp  return    
GO
GRANT EXECUTE ON  [dbo].[popGetRequisitionDefaultVendor] TO [DYNGRP]
GO
