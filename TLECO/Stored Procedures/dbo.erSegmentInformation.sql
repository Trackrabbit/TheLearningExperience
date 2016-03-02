SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 create procedure [dbo].[erSegmentInformation]  as  set nocount on select   segment_number  = account_format_setup.SGMTNUMB,  segment_name  = account_format_setup.SGMTNAME,  length_of_segment = account_format_setup.LOFSGMNT,  main_segment  = account_format_setup.MNSEGIND  from    SY00300 account_format_setup  return 0    
GO
GRANT EXECUTE ON  [dbo].[erSegmentInformation] TO [DYNGRP]
GO
