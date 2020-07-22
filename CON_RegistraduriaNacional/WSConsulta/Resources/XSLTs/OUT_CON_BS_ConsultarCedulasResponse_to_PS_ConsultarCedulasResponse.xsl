<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:UUIDUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.UUIDUserFunction"
                xmlns:IsUserInGroupFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInGroupFunction"
                xmlns:tns="http://www.www.mindefensa.gov.co/xsd/CON/Operacion/ConsultarCedulas/V1.0"
                xmlns:ns0="http://ws.ani.rnec.gov.co/"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:IsUserInRoleFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInRoleFunction"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:DVMFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:RuntimeTypeConversionFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.RuntimeTypeConversionFunctions"
                xmlns:XrefFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.xref.XrefFunctions"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:BasicCredentialsUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.BasicCredentialsUserFunction"
                exclude-result-prefixes="xsd oracle-xsl-mapper xsi xsl ns0 tns UUIDUserFunction IsUserInGroupFunction oraext IsUserInRoleFunction xp20 DVMFunctions oraxsl RuntimeTypeConversionFunctions XrefFunctions BasicCredentialsUserFunction"
                xmlns:hdr="http://www.amx.com/CO/Schema/MinDefensaHeaders/v1"
                xmlns:ns1="http://xmlns.mindefensa.gov.co/xsd/Headers/v1">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="XSD">
        <oracle-xsl-mapper:schema location="../Schemas/WSConsultaV1.0.xsd"/>
        <oracle-xsl-mapper:rootElement name="consultarCedulasResponse" namespace="http://ws.ani.rnec.gov.co/"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="XSD">
        <oracle-xsl-mapper:schema location="../Schemas/PS_CON_ConsultarCedulaV1.0.xsd"/>
        <oracle-xsl-mapper:rootElement name="consultarCedulasResponse"
                                       namespace="http://www.www.mindefensa.gov.co/xsd/CON/Operacion/ConsultarCedulas/V1.0"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.2.0(XSLT Build 161003.0739.0018) AT [MON JUL 13 13:24:14 COT 2020].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <tns:consultarCedulasResponse>
      <tns:return>
        <tns:estadoConsulta>
          <tns:numeroControl>
            <xsl:value-of select="/ns0:consultarCedulasResponse/return/estadoConsulta/numeroControl"/>
          </tns:numeroControl>
          <tns:codError>
            <xsl:value-of select="/ns0:consultarCedulasResponse/return/estadoConsulta/codError"/>
          </tns:codError>
          <tns:descripcionError>
            <xsl:value-of select="/ns0:consultarCedulasResponse/return/estadoConsulta/descripcionError"/>
          </tns:descripcionError>
          <tns:fechaHoraConsulta>
            <xsl:value-of select="/ns0:consultarCedulasResponse/return/estadoConsulta/fechaHoraConsulta"/>
          </tns:fechaHoraConsulta>
        </tns:estadoConsulta>
        <xsl:if test="/ns0:consultarCedulasResponse/return/datosCedulas">
          <tns:datosCedulas>
            <tns:datos xsi:nil="{/ns0:consultarCedulasResponse/return/datosCedulas/datos/@xsi:nil}">
              <tns:nuip>
                <xsl:value-of select="/ns0:consultarCedulasResponse/return/datosCedulas/datos/nuip"/>
              </tns:nuip>
              <tns:codError>
                <xsl:value-of select="/ns0:consultarCedulasResponse/return/datosCedulas/datos/codError"/>
              </tns:codError>
              <tns:primerApellido>
                <xsl:value-of select="/ns0:consultarCedulasResponse/return/datosCedulas/datos/primerApellido"/>
              </tns:primerApellido>
              <tns:particula>
                <xsl:value-of select="/ns0:consultarCedulasResponse/return/datosCedulas/datos/particula"/>
              </tns:particula>
              <tns:segundoApellido>
                <xsl:value-of select="/ns0:consultarCedulasResponse/return/datosCedulas/datos/segundoApellido"/>
              </tns:segundoApellido>
              <tns:primerNombre>
                <xsl:value-of select="/ns0:consultarCedulasResponse/return/datosCedulas/datos/primerNombre"/>
              </tns:primerNombre>
              <tns:segundoNombre>
                <xsl:value-of select="/ns0:consultarCedulasResponse/return/datosCedulas/datos/segundoNombre"/>
              </tns:segundoNombre>
              <tns:municipioExpedicion>
                <xsl:value-of select="/ns0:consultarCedulasResponse/return/datosCedulas/datos/municipioExpedicion"/>
              </tns:municipioExpedicion>
              <tns:departamentoExpedicion>
                <xsl:value-of select="/ns0:consultarCedulasResponse/return/datosCedulas/datos/departamentoExpedicion"/>
              </tns:departamentoExpedicion>
              <tns:fechaExpedicion>
                <xsl:value-of select="/ns0:consultarCedulasResponse/return/datosCedulas/datos/fechaExpedicion"/>
              </tns:fechaExpedicion>
              <tns:estadoCedula>
                <xsl:value-of select="/ns0:consultarCedulasResponse/return/datosCedulas/datos/estadoCedula"/>
              </tns:estadoCedula>
              <tns:numResolucion>
                <xsl:value-of select="/ns0:consultarCedulasResponse/return/datosCedulas/datos/numResolucion"/>
              </tns:numResolucion>
              <tns:anoResolucion>
                <xsl:value-of select="/ns0:consultarCedulasResponse/return/datosCedulas/datos/anoResolucion"/>
              </tns:anoResolucion>
              <tns:genero>
                <xsl:value-of select="/ns0:consultarCedulasResponse/return/datosCedulas/datos/genero"/>
              </tns:genero>
              <tns:fechaNacimiento>
                <xsl:value-of select="/ns0:consultarCedulasResponse/return/datosCedulas/datos/fechaNacimiento"/>
              </tns:fechaNacimiento>
              <tns:lugarNacimiento>
                <xsl:value-of select="/ns0:consultarCedulasResponse/return/datosCedulas/datos/lugarNacimiento"/>
              </tns:lugarNacimiento>
              <tns:informante>
                <xsl:value-of select="/ns0:consultarCedulasResponse/return/datosCedulas/datos/informante"/>
              </tns:informante>
              <tns:serial>
                <xsl:value-of select="/ns0:consultarCedulasResponse/return/datosCedulas/datos/serial"/>
              </tns:serial>
              <tns:fechaDefuncion>
                <xsl:value-of select="/ns0:consultarCedulasResponse/return/datosCedulas/datos/fechaDefuncion"/>
              </tns:fechaDefuncion>
              <tns:lugarNovedad>
                <xsl:value-of select="/ns0:consultarCedulasResponse/return/datosCedulas/datos/lugarNovedad"/>
              </tns:lugarNovedad>
              <tns:lugarPreparacion>
                <xsl:value-of select="/ns0:consultarCedulasResponse/return/datosCedulas/datos/lugarPreparacion"/>
              </tns:lugarPreparacion>
              <tns:grupoSanguineo>
                <xsl:value-of select="/ns0:consultarCedulasResponse/return/datosCedulas/datos/grupoSanguineo"/>
              </tns:grupoSanguineo>
              <tns:estatura>
                <xsl:value-of select="/ns0:consultarCedulasResponse/return/datosCedulas/datos/estatura"/>
              </tns:estatura>
              <tns:fechaReferencia>
                <xsl:value-of select="/ns0:consultarCedulasResponse/return/datosCedulas/datos/fechaReferencia"/>
              </tns:fechaReferencia>
              <tns:fechaAfectacion>
                <xsl:value-of select="/ns0:consultarCedulasResponse/return/datosCedulas/datos/fechaAfectacion"/>
              </tns:fechaAfectacion>
            </tns:datos>
          </tns:datosCedulas>
        </xsl:if>
      </tns:return>
    </tns:consultarCedulasResponse>
  </xsl:template>
</xsl:stylesheet>