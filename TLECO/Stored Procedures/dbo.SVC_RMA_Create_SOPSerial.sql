SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_RMA_Create_SOPSerial] ( @RecType smallint,  @RMANumber char(15),  @Line Numeric(19,5),  @SOPType smallint, @SOPNumber char(21), @SOPLine int )  as declare @MinDate datetime exec smGetMinDate @MinDate output if @SOPType = 2   begin  insert SOP10201 select  @SOPType, @SOPNumber, @SOPLine, 0, 1, Replace_Serial_Number, SERLTQTY, SLTSQNUM,   CONVERT(char(10),GETDATE(),102) + ' 00:00:00' ,  1, Replace_Cost, Replace_Item_Number, 'RMAReceiving', 1, 0, BIN,  @MinDate,@MinDate  from SVC05256 where Return_Record_Type = @RecType and RETDOCID = @RMANumber and LNSEQNBR = @Line  end else   insert SOP10201 select  @SOPType, @SOPNumber, @SOPLine, 0, 1, Return_Serial_Number, SERLTQTY, SLTSQNUM, DATERECD,  DTSEQNUM, RETCOST, Return_Item_Number, TRXSORCE, 1, 0, BIN,  @MinDate,@MinDate  from SVC05255 where Return_Record_Type = @RecType and RETDOCID = @RMANumber  and LNSEQNBR = @Line and MARKED = 1  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_RMA_Create_SOPSerial] TO [DYNGRP]
GO
