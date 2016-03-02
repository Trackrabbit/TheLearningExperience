SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_RMA_ReturnTypeChangable] ( @RecType smallint,  @RMANumber char(15), @Line numeric(19,5) )  as declare @numrows int if @Line = 0  select @numrows = count(*) from SVC05200 where RETDOCID = @RMANumber and Return_Record_Type = @RecType  and (Credit_SOP_Number > '' or Replace_SOP_Number > '' or SOP_Number_Invoice > '') else  begin  select @numrows = count(*) from SVC05210 where   SVC05210.RETDOCID = @RMANumber and SVC05210.Return_Record_Type = 1  and SVC05210.LNSEQNBR = @Line and SVC_Document_Number > ''  if @numrows = 0  select @numrows = count(*) from SVC05200 where   SVC05200.RETDOCID = @RMANumber and SVC05200.Return_Record_Type = 1  and SVC05200.LNSEQNBR = @Line and (Credit_SOP_Number > '' or Replace_SOP_Number > '' or SOP_Number_Invoice > '')  end return @numrows    
GO
GRANT EXECUTE ON  [dbo].[SVC_RMA_ReturnTypeChangable] TO [DYNGRP]
GO
