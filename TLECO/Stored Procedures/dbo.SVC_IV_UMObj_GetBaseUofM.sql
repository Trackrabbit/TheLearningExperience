SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_IV_UMObj_GetBaseUofM]  (@ITEMNMBR char(31),  @UOM char(9) OUTPUT,   @Status int OUTPUT) As declare @UOMSCHDL char(11)  select @UOMSCHDL = UOMSCHDL from IV00101  where ITEMNMBR = @ITEMNMBR  IF @UOMSCHDL is null or @UOMSCHDL = ''  BEGIN   select @Status = 18  return(0)  END  select @UOM = BASEUOFM from IV40201  where UOMSCHDL = @UOMSCHDL  IF @UOM is null or @UOM = ''  BEGIN   select @Status = 18  return(0)  END return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_IV_UMObj_GetBaseUofM] TO [DYNGRP]
GO
