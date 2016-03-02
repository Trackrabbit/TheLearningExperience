SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[GetDateStripTime]( @Date datetime) RETURNS datetime AS  BEGIN   return CAST(FLOOR( CAST( @Date AS FLOAT ) )AS DATETIME) END   
GO
GRANT EXECUTE ON  [dbo].[GetDateStripTime] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[GetDateStripTime] TO [rpt_all user]
GO
