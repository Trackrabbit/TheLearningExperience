SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[svcEquipmentList] as (  select 0 as 'EQUIPID',  REPLICATE('X', 21) AS 'SERLNMBR',  REPLICATE('X', 21) as 'ITEMNMBR',  REPLICATE('X', 3) as 'SRLSTAT',  REPLICATE('X', 15) as 'CUSTNMBR',  REPLICATE('X', 15) as 'ADRSCODE',  GETDATE() AS 'INSTDTE',  REPLICATE('X', 10) as 'TECHID',  REPLICATE('X', 10) as 'OFFID',  REPLICATE('X', 10) as 'SVCAREA',  REPLICATE('X', 15) as 'REFRENCE',  0 as 'NOTEINDX',  0 as 'MKTOPROC',  0 as 'InfoValue'  where (1 = 0)  UNION ALL   select ['Equipment'].[EQUIPID] as 'EQUIPID',   rtrim(['Equipment'].[SERLNMBR]) AS 'SERLNMBR',  rtrim(['Equipment'].[ITEMNMBR]) as 'ITEMNMBR',  rtrim(['Equipment'].[SRLSTAT]) as 'SRLSTAT',  rtrim(['Equipment'].[CUSTNMBR]) as 'CUSTNMBR',  rtrim(['Equipment'].ADRSCODE) as 'ADRSCODE',  ['Equipment'].[INSTDTE] AS 'INSTDTE',  rtrim(['Equipment'].[TECHID]) as 'TECHID',  rtrim(['Equipment'].[OFFID]) as 'OFFID',  rtrim(['Equipment'].[SVCAREA]) as 'SVCAREA',  rtrim(['Equipment'].[REFRENCE]) as 'REFRENCE',  ['Equipment'].[NOTEINDX] as 'NOTEINDX',  0 as 'MKTOPROC',  0 as 'InfoValue'  from [SVC00300] as ['Equipment'] with (NOLOCK) )    
GO
GRANT SELECT ON  [dbo].[svcEquipmentList] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[svcEquipmentList] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[svcEquipmentList] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[svcEquipmentList] TO [DYNGRP]
GO
