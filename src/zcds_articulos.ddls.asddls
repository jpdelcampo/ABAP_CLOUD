@AbapCatalog.sqlViewName: 'ZCDS_V_ARTICULOS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vista de articulos'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view ZCDS_ARTICULOS as select from ztab_art
{
    key client as client,
    key id_art as IdArt,
    descr as Descr,
    descr2 as Descr2,
    color as Color,
    piezas as Piezas,
    stock as Stock,
    url as Url,
    // 0 Gris
    // 1 Rojo
    // 2 Amarillo
    // 3 Verde
    case 
    when stock  =  0 then 0
    when stock between 1 and 10 then 1
    when stock between 11 and 99 then 2
    when stock > 100 then 3
    else 0
    end as status
}
