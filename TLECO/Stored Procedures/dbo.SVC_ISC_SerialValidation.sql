SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create Procedure [dbo].[SVC_ISC_SerialValidation]  (  @CUSTNMBR char(15),  @ADDRESSID char(15),  @Item varchar(31),  @Serial varchar(31),  @EquipID integer output  ) As SELECT @EquipID = EQUIPID FROM SVC00300 INNER JOIN  IV00101 ON (SVC00300.ITEMNMBR = IV00101.ITEMNMBR)  WHERE( SVC00300.CUSTNMBR = @CUSTNMBR) and (SVC00300.ADRSCODE = @ADDRESSID) and (SVC00300.ITEMNMBR = @Item  and   UPPER(SERLNMBR) = @Serial)  if @EquipID = NULL select @EquipID = 0    
GO
GRANT EXECUTE ON  [dbo].[SVC_ISC_SerialValidation] TO [DYNGRP]
GO
