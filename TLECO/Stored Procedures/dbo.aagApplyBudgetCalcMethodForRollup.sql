SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[aagApplyBudgetCalcMethodForRollup] (   @aaAmount  FLOAT ,  @aaMethod INTEGER ,  @IncOB INTEGER,   @RootNodeSelected INTEGER )  AS BEGIN    DECLARE @aaBudgetID INTEGER ,  @aaCodeSequence INTEGER ,  @aaActualPriliminary INTEGER ,  @aaFiscalPeriod INTEGER ,  @aaPerAmount FLOAT ,  @aaPerCount INTEGER ,  @aaParCodeSeq INTEGER ,  @Result   INTEGER ,  @aaAmtQty INTEGER ,  @ACTINDX INTEGER ,  @nCount INTEGER ,  @USERID   CHAR(15),  @WINTYPE INT ,  @CMPANYID INT,  @aaCodeSeq INTEGER,  @aaCodeSequenceRollUP INTEGER,  @DiffaaAmount FLOAT   SELECT @USERID  = SYSTEM_USER  SELECT @WINTYPE = 1   SELECT @CMPANYID = dbo.aagGetCompanyID()   SET TRANSACTION ISOLATION LEVEL READ COMMITTED  BEGIN TRANSACTION  SELECT @aaBudgetID = aaBudgetID , @aaCodeSequence = aaCodeSequence , @aaAmtQty = aaAmtQty,  @aaActualPriliminary = aaActualPriliminary , @ACTINDX = ACTINDX  FROM AAG00906 WHERE USERID = @USERID AND WINTYPE = @WINTYPE AND CMPANYID = @CMPANYID  IF @ACTINDX <=0 OR LEN(RTRIM(LTRIM(STR(@ACTINDX)))) = 0  BEGIN  IF @aaMethod = 1   BEGIN  IF @aaAmtQty = 0   BEGIN  select @DiffaaAmount = Balance from AAG00904 WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequence   AND aaActualPriliminary = @aaActualPriliminary   UPDATE AAG00904 SET Balance = @aaAmount WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequence   AND aaActualPriliminary = @aaActualPriliminary   IF @IncOB = 0 UPDATE AAG00904 SET Balance = 0 WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequence   AND aaActualPriliminary = @aaActualPriliminary AND aaFiscalPeriod = 0  END   ELSE  BEGIN  select @DiffaaAmount = QUANTITY from AAG00904 WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequence   AND aaActualPriliminary = @aaActualPriliminary   UPDATE AAG00904 SET QUANTITY = @aaAmount WHERE aaBudgetID = @aaBudgetID   AND aaCodeSequence = @aaCodeSequence AND aaActualPriliminary = @aaActualPriliminary   IF @IncOB = 0 UPDATE AAG00904 SET QUANTITY = 0 WHERE aaBudgetID = @aaBudgetID   AND aaCodeSequence = @aaCodeSequence AND aaActualPriliminary = @aaActualPriliminary AND aaFiscalPeriod = 0  END   DECLARE CURUPDATE CURSOR FAST_FORWARD FOR  SELECT aaCodeSequence FROM dbo.aagGetParentNodes(@aaBudgetID,@aaCodeSequence)  OPEN CURUPDATE  FETCH NEXT FROM CURUPDATE INTO @aaCodeSequenceRollUP  WHILE @@FETCH_STATUS = 0  BEGIN  IF @aaAmtQty = 0   BEGIN  IF @IncOB = 0  BEGIN  UPDATE AAG00904 SET Balance = (Balance-@DiffaaAmount) + @aaAmount WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequenceRollUP   AND aaActualPriliminary = @aaActualPriliminary AND aaFiscalPeriod <> 0  END   ELSE  BEGIN  UPDATE AAG00904 SET Balance = (Balance-@DiffaaAmount) + @aaAmount WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequenceRollUP   AND aaActualPriliminary = @aaActualPriliminary   END  END   ELSE  BEGIN  IF @IncOB = 0  BEGIN  UPDATE AAG00904 SET QUANTITY = (QUANTITY-@DiffaaAmount) + @aaAmount WHERE aaBudgetID = @aaBudgetID   AND aaCodeSequence = @aaCodeSequenceRollUP AND aaActualPriliminary = @aaActualPriliminary AND aaFiscalPeriod <> 0  END   ELSE  BEGIN  UPDATE AAG00904 SET QUANTITY = (QUANTITY-@DiffaaAmount) + @aaAmount WHERE aaBudgetID = @aaBudgetID   AND aaCodeSequence = @aaCodeSequenceRollUP AND aaActualPriliminary = @aaActualPriliminary   END  END   FETCH NEXT FROM CURUPDATE INTO @aaCodeSequenceRollUP  END  CLOSE CURUPDATE  DEALLOCATE CURUPDATE   END   ELSE   BEGIN  IF @aaAmtQty = 0   BEGIN  SELECT @aaPerCount = COUNT(*) FROM AAG00904 WHERE aaBudgetID = @aaBudgetID   AND aaCodeSequence = @aaCodeSequence AND aaActualPriliminary = @aaActualPriliminary   IF @IncOB = 0 SET @aaPerCount = @aaPerCount - 1   SET @aaPerAmount = @aaAmount / @aaPerCount   SET @aaPerAmount =  ROUND (@aaPerAmount,2)  select @DiffaaAmount = Balance from AAG00904 WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequence   AND aaActualPriliminary = @aaActualPriliminary   UPDATE AAG00904 SET Balance = @aaPerAmount WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequence   AND aaActualPriliminary = @aaActualPriliminary   IF @IncOB = 0 UPDATE AAG00904 SET Balance = 0 WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequence   AND aaActualPriliminary = @aaActualPriliminary AND aaFiscalPeriod = 0   set @aaPerAmount = @aaPerAmount * @aaPerCount  if @aaPerAmount < @aaAmount  begin  set @aaPerAmount = @aaAmount - @aaPerAmount  update AAG00904 SET Balance = Balance + @aaPerAmount WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequence   AND aaActualPriliminary = @aaActualPriliminary  AND aaFiscalPeriod =   (select case @IncOB when 0 then @aaPerCount else @aaPerCount - 1 end )  end  else if @aaPerAmount > @aaAmount  begin  set @aaPerAmount = @aaPerAmount - @aaAmount  update AAG00904 SET Balance = Balance - @aaPerAmount WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequence   AND aaActualPriliminary = @aaActualPriliminary  AND aaFiscalPeriod =   (select case @IncOB when 0 then @aaPerCount else @aaPerCount - 1 end )  end  END   ELSE  BEGIN  SELECT @aaPerCount = COUNT(*) FROM AAG00904 WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequence   AND aaActualPriliminary = @aaActualPriliminary   IF @IncOB = 0 SET @aaPerCount = @aaPerCount - 1   SET @aaPerAmount = @aaAmount / @aaPerCount   SET @aaPerAmount =  ROUND (@aaPerAmount,2)  select @DiffaaAmount = QUANTITY from AAG00904 WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequence   AND aaActualPriliminary = @aaActualPriliminary   UPDATE AAG00904 SET QUANTITY = @aaPerAmount WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequence   AND aaActualPriliminary = @aaActualPriliminary   IF @IncOB = 0 UPDATE AAG00904 SET Balance = 0 WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequence   AND aaActualPriliminary = @aaActualPriliminary AND aaFiscalPeriod = 0   IF @IncOB = 0   UPDATE AAG00904 SET QUANTITY = 0 WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequence   AND aaActualPriliminary = @aaActualPriliminary AND aaFiscalPeriod = 0   set @aaPerAmount = @aaPerAmount * @aaPerCount  if @aaPerAmount < @aaAmount  begin  set @aaPerAmount = @aaAmount - @aaPerAmount  update AAG00904 SET QUANTITY = QUANTITY + @aaPerAmount WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequence   AND aaActualPriliminary = @aaActualPriliminary  AND aaFiscalPeriod =   (select case @IncOB when 0 then @aaPerCount else @aaPerCount - 1 end )  end  else if @aaPerAmount > @aaAmount  begin  set @aaPerAmount = @aaPerAmount - @aaAmount  update AAG00904 SET QUANTITY = QUANTITY - @aaPerAmount WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequence   AND aaActualPriliminary = @aaActualPriliminary  AND aaFiscalPeriod =   (select case @IncOB when 0 then @aaPerCount else @aaPerCount - 1 end )  end  END    DECLARE CURUPDATE CURSOR FAST_FORWARD FOR  SELECT aaCodeSequence FROM dbo.aagGetParentNodes(@aaBudgetID,@aaCodeSequence)  OPEN CURUPDATE  FETCH NEXT FROM CURUPDATE INTO @aaCodeSequenceRollUP  WHILE @@FETCH_STATUS = 0  BEGIN  IF @aaAmtQty = 0   BEGIN  SELECT @aaPerCount = COUNT(*) FROM AAG00904 WHERE aaBudgetID = @aaBudgetID   AND aaCodeSequence = @aaCodeSequenceRollUP AND aaActualPriliminary = @aaActualPriliminary   IF @IncOB = 0 SET @aaPerCount = @aaPerCount - 1   SET @aaPerAmount = @aaAmount / @aaPerCount   SET @aaPerAmount =  ROUND (@aaPerAmount,2)   IF @IncOB = 0  BEGIN  UPDATE AAG00904 SET Balance = (Balance-@DiffaaAmount) + @aaPerAmount WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequenceRollUP   AND aaActualPriliminary = @aaActualPriliminary AND aaFiscalPeriod <> 0   END   ELSE  BEGIN  UPDATE AAG00904 SET Balance = (Balance-@DiffaaAmount) + @aaPerAmount WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequenceRollUP   AND aaActualPriliminary = @aaActualPriliminary   END   set @aaPerAmount = @aaPerAmount * @aaPerCount  if @aaPerAmount < @aaAmount  begin  set @aaPerAmount = @aaAmount - @aaPerAmount  update AAG00904 SET Balance = (Balance + @aaPerAmount) WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequenceRollUP   AND aaActualPriliminary = @aaActualPriliminary  AND aaFiscalPeriod =   (select case @IncOB when 0 then @aaPerCount else @aaPerCount - 1 end )  end  else if @aaPerAmount > @aaAmount  begin  set @aaPerAmount = @aaPerAmount - @aaAmount  update AAG00904 SET Balance = (Balance - @aaPerAmount) WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequenceRollUP   AND aaActualPriliminary = @aaActualPriliminary  AND aaFiscalPeriod =   (select case @IncOB when 0 then @aaPerCount else @aaPerCount - 1 end )  end   END   ELSE  BEGIN  SELECT @aaPerCount = COUNT(*) FROM AAG00904 WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequenceRollUP   AND aaActualPriliminary = @aaActualPriliminary   IF @IncOB = 0 SET @aaPerCount = @aaPerCount - 1   SET @aaPerAmount = @aaAmount / @aaPerCount   SET @aaPerAmount =  ROUND (@aaPerAmount,2)  IF @IncOB = 0   BEGIN  UPDATE AAG00904 SET QUANTITY = (QUANTITY-@DiffaaAmount) + @aaPerAmount WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequenceRollUP   AND aaActualPriliminary = @aaActualPriliminary AND aaFiscalPeriod <> 0  END  ELSE  BEGIN  UPDATE AAG00904 SET QUANTITY = (QUANTITY-@DiffaaAmount) + @aaPerAmount WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequenceRollUP   AND aaActualPriliminary = @aaActualPriliminary   END   set @aaPerAmount = @aaPerAmount * @aaPerCount  if @aaPerAmount < @aaAmount  begin  set @aaPerAmount = @aaAmount - @aaPerAmount  update AAG00904 SET QUANTITY = (QUANTITY + @aaPerAmount) WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequenceRollUP   AND aaActualPriliminary = @aaActualPriliminary  AND aaFiscalPeriod =   (select case @IncOB when 0 then @aaPerCount else @aaPerCount - 1 end )  end  else if @aaPerAmount > @aaAmount  begin  set @aaPerAmount = @aaPerAmount - @aaAmount  update AAG00904 SET QUANTITY = (QUANTITY - @aaPerAmount) WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequenceRollUP   AND aaActualPriliminary = @aaActualPriliminary  AND aaFiscalPeriod =   (select case @IncOB when 0 then @aaPerCount else @aaPerCount - 1 end )  end   END    FETCH NEXT FROM CURUPDATE INTO @aaCodeSequenceRollUP  END  CLOSE CURUPDATE  DEALLOCATE CURUPDATE  END  END  ELSE  BEGIN  SELECT @nCount = COUNT(*) FROM AAG00905  A INNER JOIN AAG00906 B ON A.aaBudgetID = B.aaBudgetID WHERE A.aaCodeSequence = B.aaCodeSequence   AND A.aaActualPriliminary = B.aaActualPriliminary AND A.ACTINDX = B.ACTINDX AND USERID = @USERID AND WINTYPE = @WINTYPE   AND CMPANYID = @CMPANYID  IF @nCount = 0 EXEC aagCreateInitialBudgetEntryAcc   IF @aaMethod = 1   BEGIN  select @DiffaaAmount = Balance from AAG00905 WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequence AND   aaActualPriliminary = @aaActualPriliminary AND ACTINDX = @ACTINDX    UPDATE AAG00905 SET Balance = @aaAmount WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequence AND   aaActualPriliminary = @aaActualPriliminary AND ACTINDX = @ACTINDX   IF @IncOB = 0 UPDATE AAG00905 SET Balance = 0 WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequence   AND aaActualPriliminary = @aaActualPriliminary   AND ACTINDX = @ACTINDX AND aaFiscalPeriod = 0   DECLARE CURUPDATE CURSOR FAST_FORWARD FOR  SELECT aaCodeSequence FROM dbo.aagGetParentNodes(@aaBudgetID,@aaCodeSequence)  OPEN CURUPDATE  FETCH NEXT FROM CURUPDATE INTO @aaCodeSequenceRollUP  WHILE @@FETCH_STATUS = 0  BEGIN   SELECT @nCount = COUNT(*) FROM AAG00905  A INNER JOIN AAG00906 B ON A.aaBudgetID = B.aaBudgetID WHERE A.aaCodeSequence = @aaCodeSequenceRollUP   AND A.aaActualPriliminary = B.aaActualPriliminary AND A.ACTINDX = B.ACTINDX AND USERID = @USERID AND WINTYPE = @WINTYPE   AND CMPANYID = @CMPANYID  IF @nCount = 0 EXEC aagCreateInitialBudgetEntryAccForRollup  @aaCodeSequenceRollUP  UPDATE AAG00905 SET Balance = (Balance-@DiffaaAmount) + @aaAmount WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequenceRollUP AND   aaActualPriliminary = @aaActualPriliminary AND ACTINDX = @ACTINDX   FETCH NEXT FROM CURUPDATE INTO @aaCodeSequenceRollUP  END  CLOSE CURUPDATE  DEALLOCATE CURUPDATE  END   ELSE   BEGIN  SELECT @aaPerCount = COUNT(*) FROM AAG00905 WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequence   AND aaActualPriliminary = @aaActualPriliminary AND ACTINDX = @ACTINDX  IF @IncOB = 0 SET @aaPerCount = @aaPerCount - 1   SET @aaPerAmount = @aaAmount / @aaPerCount   SET @aaPerAmount =  ROUND (@aaPerAmount,2)  select @DiffaaAmount = Balance from AAG00905 WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequence   AND aaActualPriliminary = @aaActualPriliminary  AND ACTINDX = @ACTINDX   UPDATE AAG00905 SET Balance = @aaPerAmount WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequence   AND aaActualPriliminary = @aaActualPriliminary  AND ACTINDX = @ACTINDX   IF @IncOB = 0 UPDATE AAG00905 SET Balance = 0 WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequence   AND aaActualPriliminary = @aaActualPriliminary   AND ACTINDX = @ACTINDX AND aaFiscalPeriod = 0   set @aaPerAmount = @aaPerAmount * @aaPerCount  if @aaPerAmount < @aaAmount  begin  set @aaPerAmount = @aaAmount - @aaPerAmount  UPDATE AAG00905 SET Balance = Balance + @aaPerAmount WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequence   AND aaActualPriliminary = @aaActualPriliminary  AND ACTINDX = @ACTINDX AND aaFiscalPeriod =  (select case @IncOB when 0 then @aaPerCount else @aaPerCount - 1 end )  end  else if @aaPerAmount > @aaAmount  begin  set @aaPerAmount = @aaPerAmount - @aaAmount  UPDATE AAG00905 SET Balance = Balance - @aaPerAmount WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequence   AND aaActualPriliminary = @aaActualPriliminary  AND ACTINDX = @ACTINDX AND aaFiscalPeriod =  (select case @IncOB when 0 then @aaPerCount else @aaPerCount - 1 end )  end   DECLARE CURUPDATE CURSOR FAST_FORWARD FOR  SELECT aaCodeSequence FROM dbo.aagGetParentNodes(@aaBudgetID,@aaCodeSequence)  OPEN CURUPDATE  FETCH NEXT FROM CURUPDATE INTO @aaCodeSequenceRollUP  WHILE @@FETCH_STATUS = 0  BEGIN  SELECT @nCount = COUNT(*) FROM AAG00905  A INNER JOIN AAG00906 B ON A.aaBudgetID = B.aaBudgetID WHERE A.aaCodeSequence = @aaCodeSequenceRollUP   AND A.aaActualPriliminary = B.aaActualPriliminary AND A.ACTINDX = B.ACTINDX AND USERID = @USERID AND WINTYPE = @WINTYPE   AND CMPANYID = @CMPANYID  IF @nCount = 0 EXEC aagCreateInitialBudgetEntryAccForRollup  @aaCodeSequenceRollUP    SELECT @aaPerCount = COUNT(*) FROM AAG00905 WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequenceRollUP   AND aaActualPriliminary = @aaActualPriliminary AND ACTINDX = @ACTINDX  IF @IncOB = 0 SET @aaPerCount = @aaPerCount - 1   SET @aaPerAmount = @aaAmount / @aaPerCount   SET @aaPerAmount =  ROUND (@aaPerAmount,2)  UPDATE AAG00905 SET Balance = (Balance-@DiffaaAmount) + @aaPerAmount WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequenceRollUP   AND aaActualPriliminary = @aaActualPriliminary  AND ACTINDX = @ACTINDX    set @aaPerAmount = @aaPerAmount * @aaPerCount  if @aaPerAmount < @aaAmount  begin  set @aaPerAmount = @aaAmount - @aaPerAmount  UPDATE AAG00905 SET Balance = (Balance + @aaPerAmount) WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequenceRollUP   AND aaActualPriliminary = @aaActualPriliminary  AND ACTINDX = @ACTINDX AND aaFiscalPeriod =  (select case @IncOB when 0 then @aaPerCount else @aaPerCount - 1 end )  end  else if @aaPerAmount > @aaAmount  begin  set @aaPerAmount = @aaPerAmount - @aaAmount  UPDATE AAG00905 SET Balance = (Balance - @aaPerAmount) WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequenceRollUP   AND aaActualPriliminary = @aaActualPriliminary  AND ACTINDX = @ACTINDX AND aaFiscalPeriod =  (select case @IncOB when 0 then @aaPerCount else @aaPerCount - 1 end )  end  FETCH NEXT FROM CURUPDATE INTO @aaCodeSequenceRollUP  END  CLOSE CURUPDATE  DEALLOCATE CURUPDATE  END  END  IF @RootNodeSelected=1  SET @aaCodeSeq=2  IF @RootNodeSelected=0  SET @aaCodeSeq=0   SELECT @Result = dbo.aagValidateBudgetNode(@aaCodeSeq)   IF @Result < 0   BEGIN  ROLLBACK TRANSACTION  END  ELSE  BEGIN  COMMIT TRANSACTION  END  SELECT @Result END     
GO
GRANT EXECUTE ON  [dbo].[aagApplyBudgetCalcMethodForRollup] TO [DYNGRP]
GO
