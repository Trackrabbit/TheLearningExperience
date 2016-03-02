SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Function [dbo].[PC_AnnualizePay] (  @v_PAYTYPE smallint,  @v_WKHRPRYR smallint,  @v_PAYUNPER smallint,  @v_PAYPEROD smallint,  @v_PAYRATE numeric(19,5) )  Returns numeric(19,5)  Begin  Declare  @PAYRATE numeric(19,5)   if @v_PAYTYPE = 1   Begin  Set @PAYRATE = @v_PAYRATE * @v_WKHRPRYR  End  Else if @v_PAYTYPE = 2    Begin  If @v_PAYUNPER = 1   Set @PAYRATE = @v_PAYRATE * 52  Else If @v_PAYUNPER = 2   Set @PAYRATE = @v_PAYRATE * 26  Else If  @v_PAYUNPER = 3   Set @PAYRATE = @v_PAYRATE * 24  Else If @v_PAYUNPER = 4   Set @PAYRATE = @v_PAYRATE * 12  Else If @v_PAYUNPER = 5   Set @PAYRATE = @v_PAYRATE * 4  Else If @v_PAYUNPER = 6   Set @PAYRATE = @v_PAYRATE * 2  Else If @v_PAYUNPER = 7   Set @PAYRATE = @v_PAYRATE * 1  Else    Set @PAYRATE = 0  End  Else    Begin  If @v_PAYPEROD = 1   Set @PAYRATE = @v_PAYRATE * 52  Else If @v_PAYPEROD = 2   Set @PAYRATE = @v_PAYRATE * 26  Else If  @v_PAYPEROD = 3   Set @PAYRATE = @v_PAYRATE * 24  Else If @v_PAYPEROD = 4   Set @PAYRATE = @v_PAYRATE * 12  Else If @v_PAYPEROD = 5   Set @PAYRATE = @v_PAYRATE * 4  Else If @v_PAYPEROD = 6   Set @PAYRATE = @v_PAYRATE * 2  Else If @v_PAYPEROD = 7   Set @PAYRATE = @v_PAYRATE * 1  Else    Set @PAYRATE = 0  End  Return @PAYRATE  End   
GO
GRANT EXECUTE ON  [dbo].[PC_AnnualizePay] TO [DYNGRP]
GO
