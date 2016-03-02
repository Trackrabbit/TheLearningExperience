SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[ivPurchaseReceiptGetValidRange_SQL]  @ItemNmbr char(31),  @DateRecd datetime,  @RctSeqNm int,  @Start_Date datetime output,  @Start_RctSeqNm int output,  @End_Date datetime output,  @End_RctSeqNm int output,  @RangeReversed smallint output AS  declare @dt1 datetime,  @dt2 datetime,  @nSeq1 int,  @nSeq2 int,  @nSeqCache int  set @RangeReversed = 0  select top 1 @dt1 = DATERECD, @nSeq1 = RCTSEQNM from IV10200  WHERE (ITEMNMBR = @ItemNmbr)   AND   ((DATERECD = @DateRecd AND RCTSEQNM >= @RctSeqNm) OR   (DATERECD > @DateRecd))   AND   (QTYTYPE = 1 AND VCTNMTHD = 3)   order by ITEMNMBR, DATERECD, RCTSEQNM, DEX_ROW_ID set @dt1 = ISNULL(@dt1, @DateRecd) set @nSeq1 = ISNULL(@nSeq1, @RctSeqNm)  select top 1 @dt2 = DATERECD, @nSeq2 = RCTSEQNM from IV10200  where ITEMNMBR = @ItemNmbr and ((DATERECD = @dt1 and RCTSEQNM > @nSeq1) or (DATERECD > @dt1))  and QTYTYPE = 1 and VCTNMTHD = 3  order by ITEMNMBR, DATERECD, RCTSEQNM, DEX_ROW_ID if @@ROWCOUNT <> 1 begin  select @nSeq2 = @nSeq1, @dt2 = '9999-12-31' end  if @nSeq1 > @nSeq2 begin  set @nSeqCache = @nSeq2  set @nSeq2 = @nSeq1  set @nSeq1 = @nSeqCache   set @RangeReversed = 1 end  select @Start_Date = @dt1, @Start_RctSeqNm = @nSeq1, @End_Date = @dt2, @End_RctSeqNm = @nSeq2    
GO
GRANT EXECUTE ON  [dbo].[ivPurchaseReceiptGetValidRange_SQL] TO [DYNGRP]
GO
