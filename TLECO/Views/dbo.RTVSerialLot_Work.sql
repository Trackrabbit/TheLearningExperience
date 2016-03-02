SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[RTVSerialLot_Work] AS select rtrim(['SVC_RTV_Serial_Lot_Work'].[RTV_Number]) as 'RTV Number', ['SVC_RTV_Serial_Lot_Work'].[RTV_Line] as 'RTV Line', 'QTY Type' = dbo.DYN_FUNC_QTY_Type(['SVC_RTV_Serial_Lot_Work'].[QTYTYPE]), ['SVC_RTV_Serial_Lot_Work'].[SLTSQNUM] as 'Serial/Lot Seq Number', rtrim(['SVC_RTV_Serial_Lot_Work'].[SERLNMBR]) as 'Serial Number', rtrim(['SVC_RTV_Serial_Lot_Work'].[Return_Serial_Number]) as 'Return Serial Number', ['SVC_RTV_Serial_Lot_Work'].[EQUIPID] as 'Equipment ID',  'Equipment ID For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=949' +dbo.dgppEquipmentID(1,['SVC_RTV_Serial_Lot_Work'].[EQUIPID] )           from [SVC05602] as ['SVC_RTV_Serial_Lot_Work'] with (NOLOCK) 
GO
GRANT SELECT ON  [dbo].[RTVSerialLot_Work] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RTVSerialLot_Work] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RTVSerialLot_Work] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RTVSerialLot_Work] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[RTVSerialLot_Work] TO [rpt_customer service rep]
GO
GRANT SELECT ON  [dbo].[RTVSerialLot_Work] TO [rpt_executive]
GO
