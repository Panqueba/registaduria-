xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://www.amx.com/CO/Schema/MinDefensaHeaders/v1";
(:: import schema at "../Schemas/Headers.xsd" ::)

declare variable $Codigo as xs:string external;
declare variable $descripcion as xs:string external;
declare variable $fechaRespuesta as xs:dateTime external;
declare variable $idTransaccion as xs:string external;
declare variable $codigoError as xs:string external;
declare variable $DescripcionError as xs:string external;
declare variable $tipoError as xs:string external;

declare function local:func_headerResponse($Codigo as xs:string, 
                                           $descripcion as xs:string, 
                                           $fechaRespuesta as xs:dateTime, 
                                           $idTransaccion as xs:string, 
                                           $codigoError as xs:string, 
                                           $DescripcionError as xs:string, 
                                           $tipoError as xs:string) 
                                           as element() (:: schema-element(ns1:headerResponse) ::) {
    <ns1:headerResponse>
        <ns1:codigo>{fn:data($Codigo)}</ns1:codigo>
        <ns1:descripcion>{fn:data($descripcion)}</ns1:descripcion>
        <ns1:fechaRespuesta>{fn:data($fechaRespuesta)}</ns1:fechaRespuesta>
        <ns1:idTransaccion>{fn:data($idTransaccion)}</ns1:idTransaccion>
        {
        if(string-length(string($codigoError)) > 0 or string-length(string($DescripcionError)) > 0
        or string-length(string($tipoError)) > 0)
        then(
        <ns1:Error>
            <ns1:codigoError>{fn:data($codigoError)}</ns1:codigoError>
            <ns1:DescripcionError>{fn:data($DescripcionError)}</ns1:DescripcionError>
            <ns1:tipoError>{fn:data($tipoError)}</ns1:tipoError>
        </ns1:Error>
        )
        else()
        
        }
    </ns1:headerResponse>
};

local:func_headerResponse($Codigo, $descripcion, $fechaRespuesta, $idTransaccion, $codigoError, $DescripcionError, $tipoError)
