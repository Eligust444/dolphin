x=msgbox("Welcome to Dolphin Assistent Version 1.0.2 | Click Ok To Start." ,64, "Dolphin")
x=msgbox("Hi my name is Dolphin!" ,0, "Dolphin")
name = InputBox("Whats your Name?")
x=msgbox("Nice to meet you " & name & "!" ,0, "Dolphin - " & name)
mood = msgbox("Are you feeling good Today?" ,4, "Dolphin - " & name)
If mood = 6 Then
x=msgbox("Thats nice to hear!" ,0, "Dolphin - " & name)
whybad = none
mood = good
End If
If mood = 7 Then
whybad = InputBox("Why do you feel bad?")
mood = bad
End If

Sub WriteToLogFile(message)
    Dim logFilePath, objFSO, objLogFile

    ' Specify the path to your log file
    logFilePath = "C:/Users/EliasMael.Laetsch/OneDrive - Schulen Huenenberg/dolphin/LogFile.log"

    ' Create a FileSystemObject
    Set objFSO = CreateObject("Scripting.FileSystemObject")

    ' Check if the log file exists, and create it if it doesn't
    If Not objFSO.FileExists(logFilePath) Then
        Set objLogFile = objFSO.CreateTextFile(logFilePath)
        objLogFile.Close
    End If

    ' Open the log file for appending
    Set objLogFile = objFSO.OpenTextFile(logFilePath, 8, True)

    ' Get the current date and time
    Dim currentDate
    currentDate = Now()

    ' Write the message along with the timestamp to the log file
    objLogFile.WriteLine "[" & FormatDateTime(currentDate, vbShortDate) & " " & FormatDateTime(currentDate, vbLongTime) & "] " & message

    ' Close the log file
    objLogFile.Close
End Sub

' Example usage
Dim name
Dim mood
Dim whybad
WriteToLogFile "name= " & name & ", mood= " & mood & ", whybad= " & whybad

