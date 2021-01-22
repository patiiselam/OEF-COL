create view [dbo].[vwLocColMediosMagneticosDetalle2276] as
(
SELECT        Formato, ConceptoID, ConceptoDescripcion, ActindxGp, CuentaGp, Colombia, OPENYEAR, JRNENTRY, RCTRXSEQ, SOURCDOC, REFRENCE, DSCRIPTN, TRXDATE, TRXSORCE, ACTINDX, Actnumst, POLLDTRX, 
                         LASTUSER, LSTDTEDT, USWHPSTD, ORGNTSRC, ORGNATYP, QKOFSET, SERIES, ORTRXTYP, ORCTRNUM, ORMSTRID, ORMSTRNM, ORDOCNUM, ORPSTDDT, ORTRXSRC, OrigDTASeries, OrigSeqNum, 
                         SEQNUMBR, DTA_GL_Status, DTA_Index, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, NOTEINDX, ICTRX, ORCOMID, ORIGINJE, PERIODID, CRDTAMNT, 
                         DEBITAMT, ORCRDAMT, ORDBTAMT, DOCDATE, PSTGNMBR, PPSGNMBR, DENXRATE, MCTRXSTT, CorrespondingUnit, VOIDED, Back_Out_JE, Back_Out_JE_Year, Correcting_JE, Correcting_JE_Year, 
                         Original_JE, Original_JE_Seq_Num, Original_JE_Year, DEX_ROW_TS, Ledger_ID, Neto, CASE ConceptoID WHEN 1 THEN Neto ELSE 0 END AS Salarios, 
                         CASE ConceptoID WHEN 2 THEN Neto ELSE 0 END AS PrestacionesSociales, CASE ConceptoID WHEN 3 THEN Neto ELSE 0 END AS PagosRepresentacion, 
                         CASE ConceptoID WHEN 4 THEN Neto ELSE 0 END AS OtrosPagos, CASE ConceptoID WHEN 5 THEN Neto ELSE 0 END AS CesantiaIntereses, CASE ConceptoID WHEN 6 THEN Neto ELSE 0 END AS AportesSalud, 
                         CASE ConceptoID WHEN 7 THEN Neto ELSE 0 END AS AportesPensiones, 
						 CASE ConceptoID WHEN 8 THEN Neto ELSE 0 END AS AFC, 
						 CASE ConceptoID WHEN 9 THEN Neto ELSE 0 END AS ValorRetencion,
						 CASE WHEN ConceptoID < 1 OR ConceptoID IS NULL  THEN Neto ELSE 0 END AS OtroMonto
FROM            dbo.vwColMediosMagneticosDetalleAH
WHERE        (Formato = '2276') AND (LEN(ORMSTRID) > 0)
);
GO
