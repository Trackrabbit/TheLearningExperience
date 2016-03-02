SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[glCalculateSegment]  @I_sAccountSegment smallint = NULL,  @O_tBeforeSeg tinyint = NULL output, @O_tSegLength tinyint = NULL output, @O_tAfterSeg tinyint = NULL output,  @O_iErrorState int  = NULL output  as   if @I_sAccountSegment is NULL begin  select @O_iErrorState = 20363  return end  select @O_iErrorState = 0,  @O_tBeforeSeg = 0,  @O_tSegLength = 0,  @O_tAfterSeg = 0  select  @O_tBeforeSeg = sum( LOFSGMNT + 1 ) from  SY00300 where  SGMTNUMB < @I_sAccountSegment  if @O_tBeforeSeg is NULL  select @O_tBeforeSeg = 0  select  @O_tSegLength = LOFSGMNT from  SY00300 where  SGMTNUMB = @I_sAccountSegment  if @O_tSegLength is NULL begin  select @O_iErrorState = 20364  return end  select  @O_tAfterSeg = sum( LOFSGMNT + 1 ) from  SY00300 where  SGMTNUMB > @I_sAccountSegment  if @O_tAfterSeg is NULL   select @O_tAfterSeg = 0   return    
GO
GRANT EXECUTE ON  [dbo].[glCalculateSegment] TO [DYNGRP]
GO
