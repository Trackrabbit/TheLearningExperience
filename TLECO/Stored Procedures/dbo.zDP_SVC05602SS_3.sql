SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05602SS_3] (@RTV_Number char(15), @RTV_Line numeric(19,5), @Shipped tinyint, @MARKED tinyint, @SLTSQNUM int) AS  set nocount on SELECT TOP 1  RTV_Number, RTV_Line, QTYTYPE, SERLTQTY, SLTSQNUM, ITEMNMBR, SERLNMBR, SVC_Serial_ID, EQUIPID, Return_Item_Number, Return_Serial_Number, SVC_Return_Serial_ID, Return_Equipment_ID, BIN, TOBIN, RETCOST, SVC_Original_Serial, DATERECD, DTSEQNUM, TRXSORCE, Shipped, MARKED, POSTED, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .SVC05602 WHERE RTV_Number = @RTV_Number AND RTV_Line = @RTV_Line AND Shipped = @Shipped AND MARKED = @MARKED AND SLTSQNUM = @SLTSQNUM ORDER BY RTV_Number ASC, RTV_Line ASC, Shipped ASC, MARKED ASC, SLTSQNUM ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05602SS_3] TO [DYNGRP]
GO
