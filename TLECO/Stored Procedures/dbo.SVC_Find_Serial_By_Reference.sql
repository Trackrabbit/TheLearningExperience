SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Find_Serial_By_Reference]  (  @Customer char(15),  @Reference char(31),  @EquipID integer OUTPUT  ) As set nocount on  if @Customer > ''   BEGIN  select @EquipID=EQUIPID from SVC00300 where REFRENCE = @Reference and CUSTNMBR = @Customer  if @EquipID = 0 or @EquipID is null  select @EquipID=EQUIPID from SVC00300 where REFRENCE = @Reference order by EQUIPID   END else  BEGIN  select @EquipID=EQUIPID from SVC00300 where REFRENCE = @Reference order by EQUIPID   END select @EquipID = isnull(@EquipID,0) return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Find_Serial_By_Reference] TO [DYNGRP]
GO
