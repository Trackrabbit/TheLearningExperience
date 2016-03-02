SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Create_Serial_Audit](  @Equip_ID integer,  @From_Customer char(15),  @From_Serial char(21),  @From_Item char(31),  @Description char(31),  @UserID char(15)  ) AS  declare @L_datetime datetime,  @L_date datetime,  @L_time datetime,  @L_Customer char(15),  @L_Serial char(21),  @L_Item char(31),  @L_line int  select @L_Customer = CUSTNMBR,  @L_Serial = SERLNMBR,  @L_Item = ITEMNMBR  from SVC00300  where EQUIPID = @Equip_ID  select @L_Customer = isnull(@L_Customer,'')  select @L_Item = isnull(@L_Item,'')  select @L_Serial = isnull(@L_Serial,'')  select @L_datetime = getdate()  exec SVC_util_split_datetime @L_datetime,  @L_date output,  @L_time output  Insert SVC00310   select  @Equip_ID,  (select COALESCE((Select max(LNITMSEQ) + 1  from SVC00310  where EQUIPID = @Equip_ID),1)),  @L_date,   @L_time,  @UserID,  @From_Customer,  @L_Customer,  '',  '',  0,  0,  0,  0,  @From_Serial,  @L_Serial,  @From_Item,  @L_Item,  @Description    
GO
GRANT EXECUTE ON  [dbo].[SVC_Create_Serial_Audit] TO [DYNGRP]
GO
