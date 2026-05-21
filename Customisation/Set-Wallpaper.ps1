# ============================================================
#  Set-Wallpaper.ps1
#  Change le fond d'écran en mode "Remplir" (Fill)
# ============================================================

$ImagePath = "C:\Wallpaper\image.png"

# Vérifie que l'image existe
if (-not (Test-Path $ImagePath)) {
    Write-Error "Image introuvable : $ImagePath"
    exit 1
}

# --- Style du fond d'écran ---
# 0 = Centré | 2 = étiré | 6 = Ajuster | 10 = Remplir | 22 = Mosaique
$WallpaperStyle = "10"   # Remplir
$TileWallpaper  = "0"

Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name WallpaperStyle -Value $WallpaperStyle
Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name TileWallpaper  -Value $TileWallpaper

# --- Applique le fond d'écran via l'API Windows ---
Add-Type @"
using System;
using System.Runtime.InteropServices;

public class Wallpaper {
    [DllImport("user32.dll", CharSet = CharSet.Auto)]
    public static extern int SystemParametersInfo(
        int uAction, int uParam, string lpvParam, int fuWinIni);
}
"@

# SPI_SETDESKWALLPAPER = 20 | SPIF_UPDATEINIFILE = 1 | SPIF_SENDCHANGE = 2
[Wallpaper]::SystemParametersInfo(20, 0, $ImagePath, 3) | Out-Null

Write-Host "Fond d'écran appliqué avec succés : $ImagePath"
