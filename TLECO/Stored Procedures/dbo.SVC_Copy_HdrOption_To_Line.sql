SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Copy_HdrOption_To_Line] (@CONSTS smallint,  @CONTNBR char(11),  @LNSEQNBR numeric(19,5),  @ADRSCODE char(15))  As  declare @OPTTYPE char(11) declare @SiteLNSEQNBR numeric(19,5) if @ADRSCODE > ''  begin  select @SiteLNSEQNBR = LNSEQNBR   from SVC00608  where CONSTS = @CONSTS and  CONTNBR = @CONTNBR and  ADRSCODE = @ADRSCODE  declare Cont_Hdr_Options cursor for select OPTTYPE   from SVC00655 where CONSTS = @CONSTS and  CONTNBR = @CONTNBR and  LNSEQNBR = @SiteLNSEQNBR order by DEX_ROW_ID   open Cont_Hdr_Options   fetch next from Cont_Hdr_Options into @OPTTYPE   while @@FETCH_STATUS = 0  BEGIN  exec SVC_Add_Option_To_Line @CONSTS, @CONTNBR, @LNSEQNBR,@OPTTYPE   fetch next from Cont_Hdr_Options into @OPTTYPE   END  deallocate Cont_Hdr_Options    end else  begin  declare Cont_Hdr_Options cursor for select OPTTYPE   from SVC00652 where CONSTS = @CONSTS and  CONTNBR = @CONTNBR and  LNSEQNBR = 0 order by DEX_ROW_ID   open Cont_Hdr_Options   fetch next from Cont_Hdr_Options into @OPTTYPE   while @@FETCH_STATUS = 0  BEGIN  exec SVC_Add_Option_To_Line @CONSTS, @CONTNBR, @LNSEQNBR,@OPTTYPE   fetch next from Cont_Hdr_Options into @OPTTYPE   END  deallocate Cont_Hdr_Options   end  return     
GO
GRANT EXECUTE ON  [dbo].[SVC_Copy_HdrOption_To_Line] TO [DYNGRP]
GO
