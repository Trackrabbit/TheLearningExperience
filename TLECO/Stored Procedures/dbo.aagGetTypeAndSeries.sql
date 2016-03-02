SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[aagGetTypeAndSeries] @CB_TransType varchar(3) output, @Series int=0 output, @PassSeries int as  Begin  set nocount on  if @PassSeries=1  select @CB_TransType='P',@Series=0  else if @PassSeries=2  select @CB_TransType='D',@Series=0  else if @PassSeries=3  select @CB_TransType='P',@Series=4  else if @PassSeries=4  select @CB_TransType='D',@Series=4  else if @PassSeries=5  select @CB_TransType='P',@Series=3  else if @PassSeries=6  select @CB_TransType='D',@Series=3  else if @PassSeries=7  select @CB_TransType='T'  else if @PassSeries=8  select @CB_TransType='C'  else if @PassSeries=9  select @CB_TransType='R'  set nocount off End    
GO
GRANT EXECUTE ON  [dbo].[aagGetTypeAndSeries] TO [DYNGRP]
GO
