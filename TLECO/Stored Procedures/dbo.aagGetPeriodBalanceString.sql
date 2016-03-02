SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE   PROCEDURE [dbo].[aagGetPeriodBalanceString] ( @aaBudgetID INTEGER , @aaCodeSequence INTEGER , @aaRetString VARCHAR(6000) OUTPUT ) AS BEGIN DECLARE @nCount INTEGER, @aaFiscalPeriod INTEGER DECLARE @Balance NUMERIC(19,5), @Quantity NUMERIC(19,5)  DECLARE @PeriodTotalAmount NUMERIC(19,5) DECLARE @PeriodTotalAuantity NUMERIC(19,5) DECLARE @PeriodDate DATETIME  SELECT  @aaRetString = '' declare AmountQty Cursor fast_forward for SELECT PERIODDT, aaFiscalPeriod, Balance, QUANTITY  FROM AAG00904  WHERE aaCodeSequence = @aaCodeSequence AND  aaBudgetID = @aaBudgetID AND  aaActualPriliminary = 0  ORDER BY PERIODDT open AmountQty fetch next from AmountQty into @PeriodDate, @aaFiscalPeriod, @Balance, @Quantity WHILE @@fetch_status = 0  BEGIN  SET @aaRetString = LTRIM( RTRIM( @aaRetString ) ) + ',''' + LTRIM(RTRIM(CONVERT( VARCHAR, @Balance ) ) ) + ''',''' + LTRIM(RTRIM(CONVERT( VARCHAR, @Quantity ) ) ) + ''''  fetch next from AmountQty into @PeriodDate, @aaFiscalPeriod, @Balance, @Quantity END close AmountQty deallocate AmountQty  SELECT @Balance = SUM( Balance ), @Quantity = SUM( QUANTITY )  FROM AAG00904  WHERE aaBudgetID = @aaBudgetID AND  aaActualPriliminary = 0 AND  aaCodeSequence = @aaCodeSequence  SET @aaRetString = LTRIM( RTRIM( @aaRetString ) ) + ','''  + LTRIM(RTRIM(CONVERT( VARCHAR, @Balance ) ) ) + ''','''  + LTRIM(RTRIM(CONVERT( varchar, @Quantity ) ) ) + '''' RETURN 1 END    
GO
GRANT EXECUTE ON  [dbo].[aagGetPeriodBalanceString] TO [DYNGRP]
GO
