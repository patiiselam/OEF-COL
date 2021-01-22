CREATE VIEW [dbo].[vwColMediosMagneticosResumeAH] AS
SELECT        openyear, formato,ConceptoId,ConceptoDescripcion,ortrxtyp, colombia, ormstrid, SUM(neto) saldo
FROM            dbo.vwColMediosMagneticosDetalleAH
GROUP BY openyear, formato,ConceptoId,ConceptoDescripcion,ortrxtyp, colombia, ormstrid;
GO
