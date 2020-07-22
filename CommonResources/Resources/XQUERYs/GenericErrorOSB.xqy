xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace soapenv="http://schemas.xmlsoap.org/soap/envelope/";
declare namespace ctx="http://www.bea.com/wli/sb/context";
declare namespace ns2="http://www.amx.com/co/schema/mobile/common/aplicationIntegration/Comunes/v1.0";
(:: import schema at "../Schemas/Comunes.xsd" ::)

declare variable $fault as element() external;
declare variable $body as element() external;


declare function local:func($fault as element(), $body as element()) as element() {
      if($body/*:Fault)
      then
        (<soapenv:Fault>
          <faultcode>{$body/*:Fault/*:faultcode/text()}</faultcode>
          <faultstring>{$body/*:Fault/*:faultstring/text()}</faultstring>
          <detail>
            <ns2:FaultMessage>
              <ns2:errorcode>
                {
                  if($body/*:Fault/*:detail//*:errorcode)
                  then
                    $body/*:Fault/*:detail//*:errorcode/text()
                  else if ($body/*:Fault/*:detail//*:errorCode/text())
                  then
                    $body/*:Fault/*:detail//*:errorCode/text()
                  else
                    $body/*:Fault/*:detail//*:faultcode/text()
                  }
                </ns2:errorcode>
              <ns2:description>
                {
                  if($body/*:Fault/*:detail//*:description)
                  then
                    $body/*:Fault/*:detail//*:description/text()
                  else if($body/*:Fault/*:detail//*:reason)
                  then
                    $body/*:Fault/*:detail//*:reason/text()
                  else
                    $body/*:Fault/*:detail//*:faultstring/text()
                }
              </ns2:description>
              <ns2:severity>{'ER'}</ns2:severity>
            </ns2:FaultMessage>
          </detail>
      </soapenv:Fault>)
      else (
        <soapenv:Fault>
          <faultcode>{$fault/ctx:errorCode/text()}</faultcode>
          <faultstring>{$fault/ctx:reason/text()}</faultstring>
          <detail>
            <ns2:FaultMessage>
              <ns2:errorcode>
                {
                  if($fault/*:detail//*:errorcode)
                  then
                    $fault/*:detail//*:errorcode/text()
                  else if ($fault/*:detail//*:errorCode/text())
                  then
                    $fault/*:detail//*:errorCode/text()
                  else if($fault/*:detail//*:faultcode/text())
                  then
                    $fault/*:detail//*:faultcode/text()
                  else
                    $fault/ctx:errorCode/text()
                  }
                </ns2:errorcode>
              <ns2:description>
                {
                  if($fault/*:detail//*:description)
                  then
                    $fault/*:detail//*:description/text()
                  else if($fault/*:detail//*:reason)
                  then
                    $fault/*:detail//*:reason/text()
                  else if($fault//*:message/text())
                  then
                    $fault//*:message/text()
                  else if($fault//*:faultstring/text())
                  then
                    $fault//*:faultstring/text()
                  else
                    $fault/ctx:reason/text()
                }
              </ns2:description>
              <ns2:severity>{'ER'}</ns2:severity>
            </ns2:FaultMessage>
          </detail>
      </soapenv:Fault>)    
 };

local:func($fault,$body)