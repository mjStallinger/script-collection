
while ($true) {
    Write-Output "Sending from .cx"
    $to = "mj@mjst.at"
    $user = "test@stallinger.cx"    
    $pass = ConvertTo-SecureString -String "c1UWQwZ9j0wR" -AsPlainText -Force
    $cred = New-Object System.Management.Automation.PSCredential $user, $pass
    $mailParam = @{
        To = $to.Split(';')
        From = $user
        Subject = "test from .cx"
        Body = "test"
        SmtpServer = "smtp.improvmx.com"
        Port = 587
        Credential = $cred
    }
    Send-MailMessage @mailParam -UseSsl

    Write-Output "Sending from .at"
    $to = "michael@stallinger.io"
    $user = "test@mjst.at"    
    $pass = ConvertTo-SecureString -String "vb0NXmv71xVp" -AsPlainText -Force
    $cred = New-Object System.Management.Automation.PSCredential $user, $pass
    $mailParam = @{
        To = $to.Split(';')
        From = $user
        Subject = "test from .at"
        Body = "test"
        SmtpServer = "smtp.improvmx.com"
        Port = 587
        Credential = $cred
    }
    Send-MailMessage @mailParam -UseSsl

    Write-Output "Sleeping... 10"
    Start-Sleep -Seconds 10
}