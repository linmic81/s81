# Send email using powershell
$EmailFrom = “customer@yahoo.com”
$EmailTo = “receiver@ymail.com”  
$Subject = “today date”
$Body = “TODAY SYSTEM DATE=01/04/2016  SYSTEM TIME=11:32:05.50”
$SMTPServer = "smtp.mail.yahoo.com”
$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587)   
$SMTPClient.EnableSsl = $true    
$SMTPClient.Credentials = New-Object 
System.Net.NetworkCredential(“customer@yahoo.com”, “password”)    
$SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)
