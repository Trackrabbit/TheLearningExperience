SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create    function  [dbo].[aagBMDocTypeEBM](@CB_Doc_No char(21), @CHEKBKID char(15), @CB_Type smallint) returns  char AS begin declare @CB_Trans_Type char(1), @CB_Pay_Rec char(5)  select @CB_Pay_Rec = CB_Pay_Rec from CBEU1102 where CHEKBKID = @CHEKBKID and CB_Ledger_Type = @CB_Type and CB_Doc_No = @CB_Doc_No   if @CB_Pay_Rec is null begin select @CB_Pay_Rec = CB_Pay_Rec from CBEUH122 where CHEKBKID = @CHEKBKID and CB_Ledger_Type = @CB_Type and CB_Doc_No = @CB_Doc_No  end   if @CB_Type = 1 and @CB_Pay_Rec = 'Pay'  set @CB_Trans_Type = '1' else if  @CB_Type = 1 and @CB_Pay_Rec = 'Rec'  set @CB_Trans_Type = '2' else if @CB_Type = 2 and @CB_Pay_Rec = 'Pay'  set @CB_Trans_Type = '3' else if @CB_Type = 2 and @CB_Pay_Rec = 'Rec'  set @CB_Trans_Type = '4' else if @CB_Type = 3 and @CB_Pay_Rec = 'Pay'  set @CB_Trans_Type = '5' else if @CB_Type = 3 and @CB_Pay_Rec = 'Rec'  set @CB_Trans_Type = '6' return @CB_Trans_Type end    
GO
GRANT EXECUTE ON  [dbo].[aagBMDocTypeEBM] TO [DYNGRP]
GO
