SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE procedure [dbo].[SVC_Check_Serial_On_Open_RMA] (  @Item char(31),  @Serial char(21),  @This_RMA char(15),  @This_RMALine numeric(19,5),  @Is_Dupe smallint output  ) as IF exists(select * from sysobjects where name = 'SVC05255')  BEGIN  if exists(  select * from SVC05255 where Return_Record_Type = 1  and RETDOCID <> @This_RMA and  LNSEQNBR <> @This_RMALine  and Return_Item_Number = @Item  and Return_Serial_Number = @Serial  )  begin  select @Is_Dupe = 1  end  else  BEGIN  if exists(  select * from IV00200 where  ITEMNMBR = @Item  and SERLNMBR = @Serial  )  select @Is_Dupe = 1  else  select @Is_Dupe = 0  END END ELSE  begin  if exists(  select * from IV00200 where  ITEMNMBR = @Item  and SERLNMBR = @Serial  )  select @Is_Dupe = 1  else  select @Is_Dupe = 0  end return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_Serial_On_Open_RMA] TO [DYNGRP]
GO
