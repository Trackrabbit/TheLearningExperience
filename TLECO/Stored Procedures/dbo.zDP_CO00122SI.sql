SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CO00122SI] (@FieldsListGuid char(37), @Group_ID int, @SEQNUMBR int, @FromDictID smallint, @FromTable char(81), @FromTablePhysicalName char(31), @FromField char(81), @FromFieldPhysicalName char(31), @ToDictID smallint, @ToTable char(81), @ToTablePhysicalName char(31), @ToField char(81), @ToFieldPhysicalName char(31), @JoinType smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .CO00122 (FieldsListGuid, Group_ID, SEQNUMBR, FromDictID, FromTable, FromTablePhysicalName, FromField, FromFieldPhysicalName, ToDictID, ToTable, ToTablePhysicalName, ToField, ToFieldPhysicalName, JoinType) VALUES ( @FieldsListGuid, @Group_ID, @SEQNUMBR, @FromDictID, @FromTable, @FromTablePhysicalName, @FromField, @FromFieldPhysicalName, @ToDictID, @ToTable, @ToTablePhysicalName, @ToField, @ToFieldPhysicalName, @JoinType) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CO00122SI] TO [DYNGRP]
GO
