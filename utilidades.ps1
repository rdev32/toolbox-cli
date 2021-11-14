# Si este es tu primer escript, abre un powershell como admin y escribe : 'Set-ExecutionPolicy Bypass'
# Autor : https://github.com/rdev32
$Host.UI.RawUI.WindowTitle = "Utilidades para Windows 10 Home/Pro Edition";
$running = $true;
if ([bool](([System.Security.Principal.WindowsIdentity]::GetCurrent()).groups -match "S-1-5-32-544")) {
    while ($running) {
        Clear-Host;
        Write-Host "Opciones";
        Write-Host "1 - Activar Windows 10 Home/Pro";
        Write-Host "2 - Remover Objetos 3D";
        Write-Host "3 - Salir";
        $cmd = Read-Host "Escribe un numero listado ";
        if ($cmd -eq "1") {
            Clear-Host;
            Write-Host "Detectado:" (Get-WmiObject -class Win32_OperatingSystem).Caption;
            Write-Host "Activando...";
            if ("Microsoft Windows 10 Pro" -eq (Get-WmiObject -class Win32_OperatingSystem).Caption) {
                slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX;
                slmgr.vbs /skms s8.now.im;
                slmgr.vbs /ato;
                Write-Host "Operacion exitosa!";
            }

            if ("Microsoft Windows 10 Home" -eq (Get-WmiObject -class Win32_OperatingSystem).Caption) {
                slmgr.vbs /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99;
                slmgr.vbs /skms s8.now.im;
                slmgr.vbs /ato;
                Write-Host "Operacion exitosa!";
            } 
            Read-Host -Prompt "Presiona cualquier tecla para volver al menu";
        }
        if ($cmd -eq "2") {
            Clear-Host;
            Write-Host "Eliminando Objetos 3D...";
            $DATA = 'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}';
            $INFO = 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}';
            if (Test-Path $DATA) {
                if (Test-Path $INF) {
                    Remove-Item $DATA;
                    Remove-Item $INFO;
                    Write-Host "Se elimino con exito.";
                }
            } else {
                Write-Host "Error: el objeto no existe, ya habias borrado esto antes?";
                Read-Host -Prompt "Presiona cualquier tecla para volver al menu";
            }
        }
        if ($cmd -eq "3") { $running = $false; }
    }
} else { Write-Host "Debes ejecutar esto con permisos de administrador." }
