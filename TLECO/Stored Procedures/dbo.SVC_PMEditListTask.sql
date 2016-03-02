SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_PMEditListTask] As  set nocount on  declare @BeginCustomer char(15),  @EndCustomer char(15),  @BeginItem char(31),  @EndItem char(31),  @BeginSerial char(21),  @EndSerial char(21),  @BeginSchedule char(9),  @EndSchedule char(9),  @CheckDate datetime,  @CurrentDate datetime,  @TempTable varchar(255) select @BeginCustomer = '',  @EndCustomer  = (select MAX(CUSTNMBR) from RM00101),   @BeginItem = '',   @EndItem = (select MAX(ITEMNMBR) from IV00101),   @BeginSerial = '',  @EndSerial = (select MAX(SERLNMBR) from SVC00300),   @BeginSchedule = '',   @EndSchedule = (select MAX(SCHEDID) from SVC8005),  @CheckDate =GETDATE(),   @CurrentDate = GETDATE()  exec SVC_GeneratePMEditList  @BeginCustomer,  @EndCustomer,  @BeginItem,  @EndItem,  @BeginSerial,  @EndSerial,  @BeginSchedule,  @EndSchedule,  @CheckDate,  @CurrentDate,  @TempTable  return(0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_PMEditListTask] TO [DYNGRP]
GO
