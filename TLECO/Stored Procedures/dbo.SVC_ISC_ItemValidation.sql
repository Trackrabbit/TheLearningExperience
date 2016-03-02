SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_ISC_ItemValidation]  (  @Item varchar(31),  @Valid varchar(31) output  ) As if @Item = '' return select @Valid = ITEMNMBR from IV00101 where ITEMNMBR = @Item  if @Valid = NULL or @Valid = '' select @Valid = 'Err' return    
GO
GRANT EXECUTE ON  [dbo].[SVC_ISC_ItemValidation] TO [DYNGRP]
GO
